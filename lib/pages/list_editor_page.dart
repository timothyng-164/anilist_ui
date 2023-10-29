import 'package:anilist_ui/graphql/anilist/mutation/deleteMediaListEntry.graphql.dart';
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

    return Scaffold(
      appBar: AppBar(
        title: Text('Edit ${LabelUtil.mediaTypeLabel(mediaType)} List'),
      ),
      body: SafeArea(
        child: QueryResultHandler(
          result: result,
          refetch: query.refetch,
          child: PageContent(
            queryResult: result.parsedData?.Media,
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
    ColorScheme colorScheme = Theme.of(context).colorScheme;

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
            maxValue: mediaType == Enum$MediaType.ANIME
                ? queryResult?.episodes
                : queryResult?.chapters,
          ),
          spaceBetween: 8),
      if (mediaType == Enum$MediaType.MANGA)
        OptionRow(
            label: 'Volumes:',
            selector: ProgressSelector(
              controller: progressVolumesController,
              maxValue: queryResult?.volumes,
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
          ElevatedButton(
              onPressed: () {
                // TODO: run save mutation, then pop with snackbar
                print(progressController.text);
              },
              child: const Text('Save')),
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

class DeleteEntryButton extends HookWidget {
  const DeleteEntryButton({
    super.key,
    required this.entryId,
    required this.mediaId,
    this.mediaType,
  });

  final int entryId;
  final int mediaId;
  final Enum$MediaType? mediaType;

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;

    final deleteEntry = useMutation$DeleteMediaListEntry(
      WidgetOptions$Mutation$DeleteMediaListEntry(update: (cache, result) {
        bool deleteSuccess =
            result?.parsedData?.DeleteMediaListEntry?.deleted ?? false;
        if (result?.hasException == true || !deleteSuccess) {
          print(
              'Unknown exception deleting media entry $entryId: ${result?.exception}');
          return;
        }

        if (!deleteSuccess) {
          print('Unable to delete media entry $entryId: ${result?.data}');
          return;
        }
        cache.writeFragment(
            Fragment(
                document: gql(
              '''
              fragment fields on Media {
                id
                mediaListEntry
              }
              ''',
            )).asRequest(idFields: {
              'id': mediaId,
            }),
            data: {'mediaListEntry': null});
      }),
    );
    var deleteVars = Variables$Mutation$DeleteMediaListEntry(id: entryId);

    return OutlinedButton(
      child: Text(
        'Remove from List',
        style: TextStyle(color: colorScheme.error),
      ),
      onPressed: () async {
        bool? deleteConfirmed = await _showDialogMenu(context);
        if (deleteConfirmed != true) return;

        var mutation = deleteEntry.runMutation(variables: deleteVars);
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
            ? 'Unable to delete ${LabelUtil.mediaTypeLabel(mediaType)}.'
            : 'Successfully deleted ${LabelUtil.mediaTypeLabel(mediaType)}.';
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
        if (dateNotifier.value != null)
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
