import 'package:city_problems/data/auth_api.dart';
import 'package:city_problems/epics/auth_epics.dart';
import 'package:city_problems/epics/danger_epic.dart';
import 'package:city_problems/models/index.dart';
import 'package:redux_epics/redux_epics.dart';

class AppEpics{
  const AppEpics({required this.authApi});

  final AuthApi authApi;

  Epic<AppState> get epic {
    return combineEpics(
      <Epic<AppState>>[
        AuthEpics(api: authApi).epic,
        DangerEpics(api: authApi).epic,
      ],
    );
  }
}
