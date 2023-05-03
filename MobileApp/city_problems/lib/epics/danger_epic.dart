import 'package:city_problems/actions/index.dart';
import 'package:city_problems/data/auth_api.dart';
import 'package:city_problems/models/index.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/transformers.dart';

class DangerEpics {
  const DangerEpics({required this.api});

  final AuthApi api;

  Epic<AppState> get epic {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, GetLocationStart>(_getLocationStart),
    ]);
  }

  Stream<void> _getLocationStart(Stream<GetLocationStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetLocationStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => api.getLocation())
          .map((DangerLocation? location) => GetLocation.successful(location!))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => GetLocation.error(error, stackTrace));
    });
  }
}
