import 'package:city_problems/actions/index.dart';
import 'package:city_problems/data/storage_api.dart';
import 'package:city_problems/models/index.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/transformers.dart';

class StorageEpics {
  const StorageEpics({required this.storage});

  final StorageApi storage;

  Epic<AppState> get epic {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, PostDangerStart>(_postDangerStart),
    ]);
  }

  Stream<dynamic> _postDangerStart(Stream<PostDangerStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((PostDangerStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => storage.postDanger(danger: action.danger))
          .map((Danger danger) => PostDanger.successful(danger))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => PostDanger.error(error, stackTrace));
    });
  }
}
