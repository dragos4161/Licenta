import 'package:city_problems/actions/index.dart';
import 'package:city_problems/models/index.dart';
import 'package:redux/redux.dart';

Reducer<DangerState> dangersReducer = combineReducers(<Reducer<DangerState>>[
  TypedReducer<DangerState,TakePictureSuccessful>(_takePictureSuccessful),
  TypedReducer<DangerState,PostDangerSuccessful>(_postDangerSuccessful),
  TypedReducer<DangerState,TakePictureStart>(_takePictureStart),
]);

DangerState _takePictureSuccessful(DangerState state, TakePictureSuccessful action) {
  return state.copyWith(
    currentDangerUrl: action.url,
  );
}

DangerState _postDangerSuccessful(DangerState state, PostDangerSuccessful action) {
  return state.copyWith(
    dangers: <Danger>[...state.dangers, action.danger],
  );
}

DangerState _takePictureStart(DangerState state, TakePictureStart action) {
  return state.copyWith(
    currentDangerUrl: null,
  );
}
