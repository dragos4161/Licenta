import 'package:city_problems/actions/index.dart';
import 'package:city_problems/data/auth_api.dart';
import 'package:city_problems/data/take_camera_picture.dart';
import 'package:city_problems/epics/auth_epics.dart';
import 'package:city_problems/epics/camera_epics.dart';
import 'package:city_problems/models/index.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/transformers.dart';

class AppEpics {
  const AppEpics({required this.authApi, required this.imageApi});

  final AuthApi authApi;
  final PictureApi imageApi;

  Epic<AppState> get epic {
    return combineEpics(
      <Epic<AppState>>[
        AuthEpics(api: authApi).epic,
        CameraEpics(client: imageApi).epic,
        TypedEpic<AppState, GetLocationStart>(_getLocationStart),
      ],
    );
  }

  Stream<dynamic> _getLocationStart(Stream<GetLocationStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetLocationStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => authApi.getLocation())
          .map((CurrentLocation? location) => GetLocation.successful(location!))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => GetLocation.error(error, stackTrace));
    });
  }
}
