import 'package:anilist_ui/graphql/anilist/mutation/toggleFavourite.graphql.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../../graphql/anilist/schema.graphql.dart';
import '../util/snackbar_util.dart';

class MediaFavouriteButton extends HookWidget {
  const MediaFavouriteButton({
    super.key,
    required this.isFavourite,
    required this.isFavouriteBlocked,
    required this.isLocked,
    required this.mediaType,
    required this.mediaId,
  });

  final bool isFavourite;
  final bool isFavouriteBlocked;
  final bool isLocked;
  final Enum$MediaType mediaType;
  final int mediaId;

  @override
  Widget build(BuildContext context) {
    var mutationIsRunning = useState<bool>(false);

    if (isFavouriteBlocked || isLocked) return const SizedBox.shrink();

    final toggleFavorite = useMutation$ToggleFavourite(
      WidgetOptions$Mutation$ToggleFavourite(
        update: (cache, result) {
          if (result?.hasException == true) {
            print(
                'Unable to toggle favorite for $mediaType $mediaId: ${result?.exception}');
            return;
          }
          // Note: the API does not return the favorite in the result,
          // so the current state is used to update the cache.
          cache.writeFragment(
              Fragment(
                  document: gql(
                '''
                fragment fields on Media {
                  id
                  isFavourite
                }
                ''',
              )).asRequest(idFields: {
                'id': mediaId,
              }),
              data: {'isFavourite': !isFavourite});
        },
      ),
    );
    final toggleFavoriteVars = Variables$Mutation$ToggleFavourite(
      animeId: mediaType == Enum$MediaType.ANIME ? mediaId : null,
      mangaId: mediaType == Enum$MediaType.MANGA ? mediaId : null,
    );

    void updateFavorite() async {
      mutationIsRunning.value = true;
      final mutation =
          toggleFavorite.runMutation(variables: toggleFavoriteVars);
      final result = await mutation.networkResult;
      var snackbar = SnackbarUtil.commonSnackbar(
        result?.hasException == true
            ? 'Unable to update favorite.'
            : (isFavourite ? 'Removed from favorites.' : 'Added to favorites.'),
      );
      if (context.mounted) {
        var messenger = ScaffoldMessenger.of(context);
        messenger.clearSnackBars();
        messenger.showSnackBar(snackbar);
      }
      mutationIsRunning.value = false;
    }

    return IconButton(
      onPressed: mutationIsRunning.value ? null : updateFavorite,
      icon: Icon(
        isFavourite == true ? Icons.favorite : Icons.favorite_outline,
      ),
      tooltip: isFavourite ? 'Remove from favourites' : 'Add to favourites',
    );
  }
}
