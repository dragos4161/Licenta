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
      TypedEpic<AppState, ListenForDangersStart>(_listenForDangersStart),
      TypedEpic<AppState, GetPointsStart>(_getPointsStart),
    ]);
  }

  Stream<dynamic> _postDangerStart(Stream<PostDangerStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((PostDangerStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => storage.postDanger(danger: action.danger))
          .map((Danger danger) => PostDanger.successful(danger))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => PostDanger.error(error, stackTrace))
          .doOnData(action.response);
    });
  }

  Stream<dynamic> _listenForDangersStart(Stream<dynamic> actions, EpicStore<AppState> store) {
    return actions.whereType<ListenForDangersStart>().flatMap(
          (ListenForDangersStart action) => Stream<void>.value(null)
          .flatMap((_) => storage.listenForDangers(action.uid))
          .map((List<Danger> dangers) => ListenForDangers.event(dangers))
          .takeUntil(actions.whereType<ListenForDangersDone>())
          .onErrorReturnWith((Object error, StackTrace stackTrace) => ListenForDangers.error(error, stackTrace)),
    );
  }


  Stream<dynamic> _getPointsStart(Stream<GetPointsStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetPointsStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => storage.getPoints(uid: action.uid))
          .map((int points) => GetPoints.successful(points))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => GetPoints.error(error, stackTrace));
    });
  }
}
