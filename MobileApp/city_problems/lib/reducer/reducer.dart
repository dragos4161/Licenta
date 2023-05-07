import 'package:city_problems/actions/index.dart';
import 'package:city_problems/models/index.dart';
import 'package:city_problems/reducer/auth_reducer.dart';
import 'package:redux/redux.dart';

Reducer<AppState> reducer = combineReducers(<Reducer<AppState>>[
  _reducer,
  TypedReducer<AppState,LogoutSuccessful>(_logoutSuccessful),
  TypedReducer<AppState,GetLocationSuccessful>(_getLocationSuccessful),
  TypedReducer<AppState,GetLocationStart>(_getLocationStart),
]);

AppState _reducer(AppState state, dynamic action){
  return state.copyWith(
    auth: authReducer(state.auth,action),
  );
}

AppState _logoutSuccessful(AppState state, LogoutSuccessful action) {
  return const AppState();
}

AppState _getLocationSuccessful(AppState state, GetLocationSuccessful action) {
  return state.copyWith(
    userLocation: action.location,
    isLoading: false,
  );
}

AppState _getLocationStart(AppState state, GetLocationStart action) {
  return state.copyWith(
    isLoading: true,
  );
}
