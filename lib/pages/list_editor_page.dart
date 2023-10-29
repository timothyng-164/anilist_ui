import 'package:anilist_ui/graphql/anilist/query/mediaListEntry.graphql.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:intl/intl.dart';

import '../common/util/label_util.dart';
import '../common/util/scale_size.dart';
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
    int? maxEpisodes = queryResult?.episodes;
    int? maxChapters = queryResult?.chapters;
    int? maxVolumes = queryResult?.volumes;

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
          selector: ProgressSelector(controller: progressController),
          spaceBetween: 8),
      if (mediaType == Enum$MediaType.MANGA)
        OptionRow(
            label: 'Volumes:',
            selector: ProgressSelector(controller: progressVolumesController),
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
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          OutlinedButton(
            onPressed: () {
              // TODO: show confiramtion dialog, run delete mutation, then pop twice
            },
            child: Text('Remove from List',
                style: TextStyle(color: colorScheme.error)),
          ),
          const SizedBox(width: 20),
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
  const ProgressSelector({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
      onPressed: () => showDialogMenu(context),
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

  Future<dynamic> showDialogMenu(BuildContext context) {
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
