import 'package:city_problems/actions/index.dart';
import 'package:city_problems/models/index.dart';
import 'package:redux/redux.dart';

Reducer<DangerState> dangersReducer = combineReducers(<Reducer<DangerState>>[
  TypedReducer<DangerState,TakePictureSuccessful>(_takePictureSuccessful),
]);

DangerState _takePictureSuccessful(DangerState state, TakePictureSuccessful action) {
  return state.copyWith(
    currentDangerUrl: action.url,
  );
}
