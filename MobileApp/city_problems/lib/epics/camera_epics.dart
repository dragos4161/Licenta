
import 'package:city_problems/actions/index.dart';
import 'package:city_problems/data/take_camera_picture.dart';
import 'package:city_problems/models/index.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class CameraEpics {
  const CameraEpics({required this.client});

  final PictureApi client;

  Epic<AppState> get epic {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, TakePictureStart>(_takePictureStart),

    ]);
  }

  Stream<dynamic> _takePictureStart(Stream<TakePictureStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((TakePictureStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => client.getFromCamera())
          .map((String? url) => TakePicture.successful(url))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => TakePicture.error(error, stackTrace));


    });
  }
}
