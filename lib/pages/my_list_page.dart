import 'package:anilist_ui/common/widgets/list_entry_button.dart';
import 'package:anilist_ui/common/widgets/media_card.dart';
import 'package:anilist_ui/common/widgets/query_result_handler.dart';
import 'package:anilist_ui/graphql/anilist/query/mediaList.graphql.dart';
import 'package:anilist_ui/graphql/anilist/schema.graphql.dart';
import 'package:anilist_ui/routing/routes.dart';
import 'package:basic_utils/basic_utils.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

import '../common/types/callbacks.dart';
import '../common/util/label_util.dart';
import '../state/auth_state.dart';

class MyListPage extends HookWidget {
  const MyListPage({super.key, required this.mediaType});

  final Enum$MediaType mediaType;

  @override
  Widget build(BuildContext context) {
    if (mediaType != Enum$MediaType.ANIME &&
        mediaType != Enum$MediaType.MANGA) {
      throw UnimplementedError('List page not implemented for $mediaType');
    }

    var authState = context.watch<AuthState>();
    var graphQLClient = useGraphQLClient();
    var scrollController = useScrollController();

    var isLoading = useState<bool>(false);
    var hasError = useState<bool>(false);

    var rawLists =
        useState<Map<String, Query$GetMediaList$MediaListCollection$lists>>({});
    var selectedListKey = useState<String?>(null);
    var sortType = useState<MediaListSort>(MediaListSort.LAST_UPDATED);
    var sortOrder = useState<SortOrder>(SortOrder.DESC);
    var displayedList = useState<List<Fragment$MediaListEntry>>([]);

    void fetchRawLists() async {
      isLoading.value = true;
      hasError.value = false;

      Map<String, Query$GetMediaList$MediaListCollection$lists> tempRawLists =
          {};
      bool hasNextChunk = true;
      int chunk = 1;

      while (hasNextChunk) {
        var result = await graphQLClient.query$GetMediaList(
          Options$Query$GetMediaList(
            variables: Variables$Query$GetMediaList(
              userId: authState.authenticatedUser!.id,
              type: mediaType,
              chunk: chunk,
            ),
            fetchPolicy: FetchPolicy.networkOnly,
          ),
        );
        if (result.hasException) {
          debugPrint('Unknown exception occurred: ${result.exception}');
          hasError.value = true;
          break;
        }
        var data = result.parsedData?.MediaListCollection;
        _populateListEntries(data, tempRawLists);

        chunk++;
        hasNextChunk = data?.hasNextChunk ?? false;
      }
      isLoading.value = false;
      rawLists.value = tempRawLists;
    }

    useEffect(() {
      fetchRawLists();
      return null;
    }, []);

    useEffect(() {
      if (rawLists.value.isEmpty) return;
      isLoading.value = true;
      if (scrollController.hasClients) {
        scrollController.animateTo(0,
            duration: const Duration(milliseconds: 200), curve: Curves.linear);
      }

      List<Fragment$MediaListEntry?> selectedList = [];
      if (selectedListKey.value == null) {
        // combine all entries in status lists
        rawLists.value.values
            .where((list) => list.isCustomList == false)
            .map((list) => list.entries ?? [])
            .forEach((element) => selectedList.addAll(element));
      } else {
        selectedList = rawLists.value[selectedListKey.value]?.entries ?? [];
      }

      List<Fragment$MediaListEntry> filteredList =
          selectedList.whereNotNull().toList();
      filteredList
          .sort((a, b) => _compareMediaListEntries(sortType.value, a, b));
      if (sortOrder.value == SortOrder.DESC) {
        filteredList = filteredList.reversed.toList();
      }

      displayedList.value = filteredList;
      isLoading.value = false;
      return null;
    }, [
      rawLists.value,
      sortType.value,
      sortOrder.value,
      selectedListKey.value,
    ]);

    void showFilterSheet() {
      showModalBottomSheet(
        showDragHandle: false,
        context: context,
        builder: (BuildContext context) => BottomSheetModal(
          sortOrder: sortOrder,
          sortType: sortType,
          selectedListKey: selectedListKey,
          statusLists: rawLists.value.values
              .where((l) => l.isCustomList == false)
              .toList(),
          customLists: rawLists.value.values
              .where((l) => l.isCustomList == true)
              .toList(),
        ),
      );
    }

    PreferredSizeWidget? displayAppbar() {
      if (hasError.value || isLoading.value || rawLists.value.isEmpty) {
        return null;
      }
      return AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('My ${LabelUtil.mediaTypeLabel(mediaType)} List'),
            IconButton(
              icon: const Icon(Icons.filter_list),
              onPressed: () => showFilterSheet(),
            )
          ],
        ),
      );
    }

    Widget displayContent() {
      if (hasError.value) {
        return QueryErrorHandler(refetch: fetchRawLists);
      }

      if (isLoading.value) {
        return const Center(child: CircularProgressIndicator());
      }

      if (rawLists.value.isEmpty) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  'Your list is empty, browse to add ${toJson$Enum$MediaType(mediaType).toLowerCase()}.'),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => const BrowseRoute().go(context),
                child: const Text('Browse'),
              ),
            ],
          ),
        );
      }

      return RefreshIndicator(
        onRefresh: () => Future<void>(() => fetchRawLists()),
        child: ListEntries(
          mediaType: mediaType,
          selectedListKey: selectedListKey,
          displayedList: displayedList,
          scrollController: scrollController,
        ),
      );
    }

    return Scaffold(
      appBar: displayAppbar(),
      body: displayContent(),
    );
  }

  int _compareMediaListEntries(MediaListSort sortType,
      Fragment$MediaListEntry a, Fragment$MediaListEntry b) {
    switch (sortType) {
      case MediaListSort.TITLE:
        String titleA = a.media?.title?.userPreferred?.toLowerCase() ?? '';
        String titleB = b.media?.title?.userPreferred?.toLowerCase() ?? '';
        return titleA.compareTo(titleB);
      case MediaListSort.LAST_ADDED:
        int addedA = a.createdAt ?? 0;
        int addedB = b.createdAt ?? 0;
        return addedA.compareTo(addedB);
      case MediaListSort.LAST_UPDATED:
        int updatedA = a.updatedAt ?? 0;
        int updatedB = b.updatedAt ?? 0;
        return updatedA.compareTo(updatedB);
      case MediaListSort.STATUS:
        String statusA =
            a.status == null ? '' : toJson$Enum$MediaListStatus(a.status!);
        String statusB =
            b.status == null ? '' : toJson$Enum$MediaListStatus(b.status!);
        return statusA.compareTo(statusB);
      case MediaListSort.START_DATE:
        return _compareDate(a.startedAt, b.startedAt);
      case MediaListSort.COMPLETE_DATE:
        return _compareDate(a.completedAt, b.completedAt);
      default:
        return 0;
    }
  }

  int _compareDate(Fragment$Date? a, Fragment$Date? b) {
    int yearA = a?.year ?? 0, yearB = b?.year ?? 0;
    if (yearA > yearB) return 1;
    if (yearA < yearB) return -1;
    int monthA = a?.month ?? 0, monthB = b?.month ?? 0;
    if (monthA > monthB) return 1;
    if (monthA < monthB) return -1;
    int dayA = a?.day ?? 0, dayB = b?.day ?? 0;
    if (dayA > dayB) return 1;
    if (dayA < dayB) return -1;
    return 0;
  }

  void _populateListEntries(
    Query$GetMediaList$MediaListCollection? data,
    Map<String, Query$GetMediaList$MediaListCollection$lists> lists,
  ) {
    data?.lists?.forEach((currentList) {
      if (currentList?.name == null) return;
      String listKey =
          _mediaListKey(currentList!.name!, currentList.isCustomList ?? false);
      if (lists.containsKey(listKey)) {
        lists[listKey]?.entries?.addAll(currentList.entries!);
      } else {
        lists[listKey] = currentList;
      }
    });
  }
}

String _mediaListKey(String name, bool isCustomList) {
  // The API does not provide an ID for media lists. This key is used as a workaround,
  // but custom lists with duplicate names will be treated as a single list.
  return '$name-$isCustomList';
}

class ListEntries extends HookWidget {
  const ListEntries({
    super.key,
    required this.mediaType,
    required this.selectedListKey,
    required this.displayedList,
    required this.scrollController,
  });

  final Enum$MediaType mediaType;
  final ValueNotifier<String?> selectedListKey;
  final ValueNotifier<List<Fragment$MediaListEntry>> displayedList;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            _getListTitle(selectedListKey.value, displayedList.value.length),
            style: textTheme.headlineSmall,
          ),
        ),
        Expanded(
          child: ListView.builder(
              physics: const AlwaysScrollableScrollPhysics(),
              controller: scrollController,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: displayedList.value.length,
              itemBuilder: (context, index) {
                var listEntry = displayedList.value[index];
                return ListCard(listEntry: listEntry, mediaType: mediaType);
              }),
        ),
      ],
    );
  }

  String _getListTitle(String? listKey, int length) {
    String listName;
    if (listKey == null) {
      listName = 'All';
    } else {
      int end = listKey.lastIndexOf('-');
      listName = listKey.substring(0, end);
    }
    return '$listName ($length)';
  }
}

class ListCard extends HookWidget {
  const ListCard({super.key, required this.listEntry, required this.mediaType});

  final Fragment$MediaListEntry listEntry;
  final Enum$MediaType mediaType;

  @override
  Widget build(BuildContext context) {
    return MediaCard(
      mediaId: listEntry.media?.id ?? -1,
      mediaType: mediaType,
      imageUrl: listEntry.media?.coverImage?.medium ?? '',
      height: 130,
      topContent: _cardTopContent(listEntry),
      bottomContent: _cardBottomContent(listEntry),
    );
  }

  Widget _cardTopContent(Fragment$MediaListEntry listEntry) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                listEntry.media?.title?.userPreferred ?? '',
                style: const TextStyle(fontWeight: FontWeight.w600),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              Text(LabelUtil.listStatusLabel(listEntry.status) ?? ''),
            ],
          ),
        ),
        Flexible(
          flex: 2,
          child: ListEntryButton(
            mediaId: listEntry.media!.id,
            mediaType: mediaType,
            padding: const EdgeInsets.symmetric(vertical: 2),
          ),
        ),
      ],
    );
  }

  Widget _cardBottomContent(Fragment$MediaListEntry listEntry) {
    int? progressTotal = mediaType == Enum$MediaType.ANIME
        ? listEntry.media?.episodes
        : listEntry.media?.chapters;
    String progressType = mediaType == Enum$MediaType.ANIME ? 'ep' : 'ch';

    double progressPercent = 0;
    if (progressTotal == null && (listEntry.progress ?? 0) > 0) {
      progressPercent = 100;
    }
    if (progressTotal != null && listEntry.progress != null) {
      progressPercent = listEntry.progress! / progressTotal;
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        if (mediaType == Enum$MediaType.MANGA)
          Text(
              '${listEntry.progressVolumes}/${listEntry.media?.volumes ?? '?'}  vol'),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Text(
              '${listEntry.progress}/${progressTotal ?? '?'}  $progressType'),
        ),
        LinearProgressIndicator(value: progressPercent),
      ],
    );
  }
}

class BottomSheetModal extends HookWidget {
  const BottomSheetModal({
    super.key,
    required this.selectedListKey,
    required this.statusLists,
    required this.customLists,
    required this.sortType,
    required this.sortOrder,
  });

  final ValueNotifier<String?> selectedListKey;
  final List<Query$GetMediaList$MediaListCollection$lists> statusLists;
  final List<Query$GetMediaList$MediaListCollection$lists> customLists;
  final ValueNotifier<MediaListSort> sortType;
  final ValueNotifier<SortOrder> sortOrder;

  @override
  Widget build(BuildContext context) {
    var tabController = useTabController(initialLength: 2);

    var sheetContent = Expanded(
      child: LayoutBuilder(builder: (context, constraints) {
        return SizedBox(
          height: constraints.minHeight,
          width: constraints.maxWidth,
          child: StatefulBuilder(builder: (context, setModalState) {
            return TabBarView(
              controller: tabController,
              children: [
                ListTab(
                  selectedListKey: selectedListKey,
                  statusLists: statusLists,
                  customLists: customLists,
                ),
                SortTab(
                  setModalState: setModalState,
                  sortType: sortType,
                  sortOrder: sortOrder,
                ),
              ],
            );
          }),
        );
      }),
    );

    return Center(
      child: Column(
        children: <Widget>[
          TabBar(
            controller: tabController,
            tabs: const [
              Tab(text: 'List'),
              Tab(text: 'Sort'),
            ],
          ),
          sheetContent,
        ],
      ),
    );
  }
}

class SortTab extends StatelessWidget {
  const SortTab({
    super.key,
    required this.setModalState,
    required this.sortType,
    required this.sortOrder,
  });

  final SetStateCallback setModalState;
  final ValueNotifier<MediaListSort> sortType;
  final ValueNotifier<SortOrder> sortOrder;

  @override
  Widget build(BuildContext context) {
    List<MediaListSort> sortOptions = MediaListSort.values;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: sortOptions.map((option) {
            return TextButton(
                child: Row(
                  children: [
                    Icon(
                        sortType.value != option
                            ? null
                            : sortOrder.value == SortOrder.DESC
                                ? Icons.arrow_downward_rounded
                                : Icons.arrow_upward_rounded,
                        size: 18),
                    const SizedBox(width: 10),
                    Text(
                      StringUtils.capitalize(option.name.replaceAll('_', ' ')),
                    ),
                  ],
                ),
                onPressed: () {
                  setModalState(() {
                    if (sortType.value != option) {
                      sortType.value = option;
                      sortOrder.value = SortOrder.ASC;
                    } else {
                      switch (sortOrder.value) {
                        case SortOrder.ASC:
                          sortOrder.value = SortOrder.DESC;
                        case SortOrder.DESC:
                          sortOrder.value = SortOrder.ASC;
                      }
                    }
                  });
                });
          }).toList(),
        ),
      ),
    );
  }
}

enum MediaListSort {
  STATUS,
  START_DATE,
  COMPLETE_DATE,
  LAST_UPDATED,
  LAST_ADDED,
  TITLE,
}

enum SortOrder { ASC, DESC }

class ListTab extends StatelessWidget {
  const ListTab({
    super.key,
    required this.selectedListKey,
    required this.statusLists,
    required this.customLists,
  });

  final ValueNotifier<String?> selectedListKey;
  final List<Query$GetMediaList$MediaListCollection$lists> statusLists;
  final List<Query$GetMediaList$MediaListCollection$lists> customLists;

  @override
  Widget build(BuildContext context) {
    var allStatusListLength = statusLists
        .map((list) => list.entries?.length ?? 0)
        .reduce((value, length) => value + length);

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (statusLists.isNotEmpty) _buildTitle('Status:', context),
            _buildButton(allStatusListLength, 'All', null, context),
            ...statusLists
                .map((list) => _buildListButton(list, context))
                .toList(),
            const SizedBox(height: 16),
            if (customLists.isNotEmpty) _buildTitle('Custom Lists:', context),
            ...customLists
                .map((list) => _buildListButton(list, context))
                .toList(),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle(String title, BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Text(
        title,
        style: textTheme.bodyLarge!
            .copyWith(color: colorScheme.onPrimaryContainer),
      ),
    );
  }

  Widget _buildButton(
    int listLength,
    String listName,
    String? key,
    BuildContext context,
  ) {
    bool isSelected = selectedListKey.value == key;
    return TextButton(
      child: Row(
        children: [
          Icon(
            isSelected ? Icons.radio_button_checked : Icons.radio_button_off,
            size: 18,
          ),
          const SizedBox(width: 10),
          Text('$listName ($listLength)'),
        ],
      ),
      onPressed: () {
        selectedListKey.value = key;
        Navigator.of(context).pop();
      },
    );
  }

  Widget _buildListButton(
    Query$GetMediaList$MediaListCollection$lists list,
    BuildContext context,
  ) {
    String key = _mediaListKey(list.name!, list.isCustomList ?? false);
    return _buildButton(
        list.entries?.length ?? 0, list.name ?? '', key, context);
  }
}
