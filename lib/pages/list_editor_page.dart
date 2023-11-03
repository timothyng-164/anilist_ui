import 'package:anilist_ui/common/widgets/media_favourite_button.dart';
import 'package:anilist_ui/graphql/anilist/mutation/deleteMediaListEntry.graphql.dart';
import 'package:anilist_ui/graphql/anilist/mutation/saveMediaListEntry.graphql.dart';
import 'package:anilist_ui/graphql/anilist/query/mediaListEntry.graphql.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:intl/intl.dart';

import '../common/util/label_util.dart';
import '../common/util/scale_size.dart';
import '../common/util/snackbar_util.dart';
import '../common/widgets/query_result_handler.dart';
import '../graphql/anilist/schema.graphql.dart';

class ListEditorPage extends HookWidget {
  const ListEditorPage({
    super.key,
    required this.mediaId,
    required this.mediaType,
  });

  final int mediaId;
  final Enum$MediaType mediaType;

  @override
  Widget build(BuildContext context) {
    var query = useQuery$GetMediaListEntry(Options$Query$GetMediaListEntry(
      variables: Variables$Query$GetMediaListEntry(
        id: mediaId,
        type: mediaType,
      ),
      fetchPolicy: FetchPolicy.networkOnly,
    ));

    var result = query.result;
    var media = result.parsedData?.Media;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Edit ${LabelUtil.mediaTypeLabel(mediaType)} List'),
            MediaFavouriteButton(
                isFavourite: media?.isFavourite ?? false,
                isFavouriteBlocked: media?.isFavouriteBlocked ?? false,
                isLocked: media?.isLocked ?? false,
                mediaType: mediaType,
                mediaId: mediaId),
          ],
        ),
      ),
      body: SafeArea(
        child: QueryResultHandler(
          result: result,
          refetch: query.refetch,
          child: PageContent(
            queryResult: media,
            mediaId: mediaId,
            mediaType: mediaType,
          ),
        ),
      ),
    );
  }
}

class PageContent extends HookWidget {
  const PageContent({
    super.key,
    required this.queryResult,
    required this.mediaId,
    required this.mediaType,
  });

  final Query$GetMediaListEntry$Media? queryResult;
  final int mediaId;
  final Enum$MediaType mediaType;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    String? title = queryResult?.title?.userPreferred;
    Fragment$MediaListEntry? listEntry = queryResult?.mediaListEntry;

    var status = useState<Enum$MediaListStatus>(
        listEntry?.status ?? Enum$MediaListStatus.PLANNING);
    var startDate = useState<Fragment$Date?>(listEntry?.startedAt);
    var completeDate = useState<Fragment$Date?>(listEntry?.completedAt);
    var progressController = useTextEditingController(
      text: listEntry?.progress == null ? null : listEntry!.progress.toString(),
    );
    var progressVolumesController = useTextEditingController(
      text: listEntry?.progressVolumes == null
          ? null
          : listEntry!.progressVolumes.toString(),
    );
    var notesController = useTextEditingController(
      text: listEntry?.notes == null ? null : listEntry!.notes.toString(),
    );

    int? maxProgress = mediaType == Enum$MediaType.ANIME
        ? queryResult?.episodes
        : queryResult?.chapters;
    int? maxProgressVolumes = queryResult?.volumes;

    useEffect(() {
      if (status.value == Enum$MediaListStatus.COMPLETED) {
        DateTime currentDate = DateTime.now();
        completeDate.value = Fragment$Date(
            year: currentDate.year,
            month: currentDate.month,
            day: currentDate.day);
        if (maxProgress != null) progressController.text = '$maxProgress';
        if (maxProgressVolumes != null) {
          progressVolumesController.text = '$maxProgressVolumes';
        }
      }
      if (status.value == Enum$MediaListStatus.CURRENT) {
        DateTime currentDate = DateTime.now();
        startDate.value = Fragment$Date(
            year: currentDate.year,
            month: currentDate.month,
            day: currentDate.day);
      }
      return null;
    }, [status.value]);

    var rows = [
      if (title != null)
        Text(
          title,
          style: textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w600),
          textScaleFactor: ScaleSize.scaleFactor(context),
        ),
      const SizedBox(height: 20),
      OptionRow(
          label: 'Status:',
          selector: StatusSelector(status: status, mediaType: mediaType)),
      OptionRow(
          label: mediaType == Enum$MediaType.ANIME ? 'Episodes:' : 'Chapters:',
          selector: ProgressSelector(
            controller: progressController,
            maxValue: maxProgress,
          ),
          spaceBetween: 8),
      if (mediaType == Enum$MediaType.MANGA)
        OptionRow(
            label: 'Volumes:',
            selector: ProgressSelector(
              controller: progressVolumesController,
              maxValue: maxProgressVolumes,
            ),
            spaceBetween: 8),
      OptionRow(
          label: 'Start Date:',
          selector: DateSelector(dateNotifier: startDate)),
      OptionRow(
          label: 'Complete Date:',
          selector: DateSelector(dateNotifier: completeDate)),
      OptionRow(
          label: 'Notes:',
          selector: NotesSelector(controller: notesController),
          spaceBetween: 8),
      const SizedBox(height: 30),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          if (listEntry != null)
            DeleteEntryButton(
                entryId: listEntry.id, mediaId: mediaId, mediaType: mediaType),
          SaveEntryButton(
            mediaId: mediaId,
            entryId: listEntry?.id,
            mediaType: mediaType,
            status: status,
            progressController: progressController,
            progressVolumesController: progressVolumesController,
            startDate: startDate,
            completeDate: completeDate,
            notesController: notesController,
          ),
        ],
      ),
    ];

    return SingleChildScrollView(
      child: Row(
        children: [
          const Spacer(flex: 1),
          Expanded(
            flex: 6,
            child: Center(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                constraints: const BoxConstraints(maxWidth: 400),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: rows,
                ),
              ),
            ),
          ),
          const Spacer(flex: 1),
        ],
      ),
    );
  }
}

class SaveEntryButton extends HookWidget {
  const SaveEntryButton({
    super.key,
    this.entryId,
    this.mediaId,
    required this.mediaType,
    required this.status,
    required this.progressController,
    required this.progressVolumesController,
    required this.startDate,
    required this.completeDate,
    required this.notesController,
  });

  final int? entryId;
  final int? mediaId;
  final Enum$MediaType mediaType;
  final ValueNotifier<Enum$MediaListStatus> status;
  final TextEditingController progressController;
  final TextEditingController progressVolumesController;
  final ValueNotifier<Fragment$Date?> startDate;
  final ValueNotifier<Fragment$Date?> completeDate;
  final TextEditingController notesController;

  @override
  Widget build(BuildContext context) {
    final saveEntry = useMutation$SaveMediaListEntry(
      WidgetOptions$Mutation$SaveMediaListEntry(
        update: (cache, result) {
          if (result?.hasException == true) return;
          cache.writeFragment(
              const Fragment(
                document: documentNodeFragmentEntrySave,
              ).asRequest(idFields: {
                'id': mediaId,
              }),
              data: {
                'mediaListEntry': result?.data?['SaveMediaListEntry'],
              });
        },
      ),
    );

    return ElevatedButton(
      child: const Text('Save'),
      onPressed: () async {
        var mutationVariables = Variables$Mutation$SaveMediaListEntry(
          id: entryId,
          mediaId: mediaId,
          status: status.value,
          progress: _buildProgressInput(progressController),
          progressVolumes: _buildProgressInput(progressVolumesController),
          notes: notesController.text,
          startedAt: _buildDateInput(startDate.value),
          completedAt: _buildDateInput(completeDate.value),
        );

        final mutation = saveEntry.runMutation(variables: mutationVariables);
        final result = await mutation.networkResult;

        if (result?.hasException == true) {
          print(
              'Unknown exception saving media list enty $entryId for media $mediaId: ${result?.exception}');
        }

        String snackbarText = (result?.hasException == true)
            ? 'Unable to save ${toJson$Enum$MediaType(mediaType).toLowerCase()}.'
            : 'Successfully save ${toJson$Enum$MediaType(mediaType).toLowerCase()}.';
        SnackBar snackbar = SnackbarUtil.commonSnackbar(snackbarText);
        if (context.mounted) {
          Navigator.of(context).pop();
          ScaffoldMessenger.of(context).showSnackBar(snackbar);
        }
      },
    );
  }

  int _buildProgressInput(TextEditingController controller) {
    if (controller.text.isEmpty) return 0;
    return int.parse(controller.text);
  }

  Input$FuzzyDateInput _buildDateInput(Fragment$Date? date) {
    if (date == null) return Input$FuzzyDateInput();
    return Input$FuzzyDateInput(
        year: date.year, month: date.month, day: date.day);
  }
}

class DeleteEntryButton extends HookWidget {
  const DeleteEntryButton({
    super.key,
    required this.entryId,
    required this.mediaId,
    required this.mediaType,
  });

  final int entryId;
  final int mediaId;
  final Enum$MediaType mediaType;

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;

    final deleteEntry = useMutation$DeleteMediaListEntry(
      WidgetOptions$Mutation$DeleteMediaListEntry(update: (cache, result) {
        bool deleteSuccess =
            result?.parsedData?.DeleteMediaListEntry?.deleted ?? false;
        if (result?.hasException == true || !deleteSuccess) return;

        cache.writeFragment(
            const Fragment(
              document: documentNodeFragmentEntryDelete,
            ).asRequest(idFields: {
              'id': mediaId,
            }),
            data: {'mediaListEntry': null});
      }),
    );
    var mutationVariables =
        Variables$Mutation$DeleteMediaListEntry(id: entryId);

    return OutlinedButton(
      child: Text(
        'Remove from List',
        style: TextStyle(color: colorScheme.error),
      ),
      onPressed: () async {
        bool? deleteConfirmed = await _showDialogMenu(context);
        if (deleteConfirmed != true) return;

        final mutation = deleteEntry.runMutation(variables: mutationVariables);
        final result = await mutation.networkResult;

        bool deleteSuccess =
            result?.parsedData?.DeleteMediaListEntry?.deleted ?? false;
        if (!deleteSuccess) {
          print('Unable to delete media entry $entryId: ${result?.data}');
        }
        if (result?.hasException == true) {
          print(
              'Unknown exception deleting media entry $entryId: ${result?.exception}');
        }

        String snackbarText = (!deleteSuccess || result?.hasException == true)
            ? 'Unable to delete ${toJson$Enum$MediaType(mediaType).toLowerCase()}.'
            : 'Successfully deleted ${toJson$Enum$MediaType(mediaType).toLowerCase()}.';
        SnackBar snackbar = SnackbarUtil.commonSnackbar(snackbarText);
        if (context.mounted) {
          Navigator.of(context).pop();
          ScaffoldMessenger.of(context).showSnackBar(snackbar);
        }
      },
    );
  }

  Future<bool?> _showDialogMenu(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return Dialog(
              child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                      'Are you sure you want to delete this ${LabelUtil.mediaTypeLabel(mediaType)}?'),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(false),
                        child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(true);
                        },
                        child: const Text('Yes'),
                      ),
                    ],
                  )
                ]),
          ));
        });
  }
}

class DateSelector extends StatelessWidget {
  const DateSelector({super.key, required this.dateNotifier});

  final ValueNotifier<Fragment$Date?> dateNotifier;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    String buttonText = _dateHasNull(dateNotifier.value)
        ? 'DD-MM-YYYY'
        : DateFormat.yMMMMd().format(DateTime(dateNotifier.value!.year!,
            dateNotifier.value!.month!, dateNotifier.value!.day!));

    return Row(
      children: [
        TextButton(
          onPressed: () => _selectDate(context),
          style: TextButton.styleFrom(padding: EdgeInsets.zero),
          child: Text(
            buttonText,
            style: textTheme.bodyLarge!.copyWith(color: colorScheme.primary),
            textScaleFactor: ScaleSize.scaleFactor(context),
          ),
        ),
        if (!_dateHasNull(dateNotifier.value))
          IconButton(
            onPressed: () => dateNotifier.value = null,
            icon: const Icon(Icons.cancel),
            padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 0),
            iconSize: 18,
          )
      ],
    );
  }

  bool _dateHasNull(Fragment$Date? date) {
    return date?.day == null || date?.month == null || date?.year == null;
  }

  void _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _dateHasNull(dateNotifier.value)
          ? DateTime.now()
          : DateTime(dateNotifier.value!.year!, dateNotifier.value!.month!,
              dateNotifier.value!.day!),
      firstDate: DateTime(1900, 1, 1),
      lastDate: DateTime.now().add(const Duration(days: 2)),
    );
    if (picked != null) {
      dateNotifier.value = Fragment$Date(
          year: picked.year, month: picked.month, day: picked.day);
    }
  }
}

class OptionRow extends StatelessWidget {
  const OptionRow({
    super.key,
    required this.label,
    required this.selector,
    this.spaceBetween,
  });

  final String label;
  final Widget selector;
  final double? spaceBetween;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w500),
            textScaleFactor: ScaleSize.scaleFactor(context),
          ),
          SizedBox(height: spaceBetween ?? 0),
          selector,
        ],
      ),
    );
  }
}

class NotesSelector extends StatelessWidget {
  const NotesSelector({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 500),
      child: TextField(
        controller: controller,
        maxLines: null,
        decoration: const InputDecoration(
          hintText: '-',
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}

class ProgressSelector extends HookWidget {
  const ProgressSelector({super.key, required this.controller, this.maxValue});

  final TextEditingController controller;
  final int? maxValue;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    useEffect(() {
      controller.addListener(() {
        if (controller.text.isEmpty || maxValue == null) return;
        if (int.parse(controller.text) > maxValue!) {
          controller.text = maxValue.toString();
        }
      });
      return null;
    }, [controller]);

    return Row(
      children: [
        SizedBox(
          width: 60,
          child: TextField(
            controller: controller,
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ],
            decoration: const InputDecoration(
              hintText: '0',
              border: OutlineInputBorder(),
            ),
          ),
        ),
        if (maxValue != null)
          Text(
            ' / $maxValue',
            style: textTheme.bodyLarge,
          ),
      ],
    );
  }
}

class StatusSelector extends StatelessWidget {
  StatusSelector({super.key, required this.status, required this.mediaType});

  final ValueNotifier<Enum$MediaListStatus> status;
  final Enum$MediaType mediaType;

  final List<Enum$MediaListStatus> _statusOptions = Enum$MediaListStatus.values
      .where((e) => e != Enum$MediaListStatus.$unknown)
      .toList();

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return TextButton(
      onPressed: () => _showDialogMenu(context),
      style: TextButton.styleFrom(padding: EdgeInsets.zero),
      child: Text(
        '${LabelUtil.listStatusLabelByMedia(status.value, mediaType)}',
        style: textTheme.bodyLarge!.copyWith(
          color: colorScheme.primary,
        ),
        textScaleFactor: ScaleSize.scaleFactor(context),
      ),
    );
  }

  Future<dynamic> _showDialogMenu(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          TextTheme textTheme = Theme.of(context).textTheme;
          return Dialog(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Select Status:', style: textTheme.bodyLarge),
                  const SizedBox(height: 10),
                  ..._statusOptions.map((option) {
                    return TextButton(
                      onPressed: () {
                        status.value = option;
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                                option == status.value
                                    ? Icons.radio_button_checked
                                    : Icons.radio_button_off,
                                size: 17),
                            const SizedBox(width: 12),
                            Text(
                              LabelUtil.listStatusLabelByMedia(
                                      option, mediaType) ??
                                  '',
                              style: textTheme.bodyLarge,
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList()
                ],
              ),
            ),
          );
        });
  }
}
