import 'package:city_problems/actions/index.dart';
import 'package:city_problems/models/index.dart';
import 'package:redux/redux.dart';

Reducer<DangerState> dangerReducer = combineReducers(<Reducer<DangerState>>[
  TypedReducer<DangerState,GetLocationSuccessful>(_getLocationSuccessful),
]);

DangerState _getLocationSuccessful(DangerState state, GetLocationSuccessful action) {
  return state.copyWith(
    currentLocation: action.location,
  );
}
