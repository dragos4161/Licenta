import 'package:city_problems/actions/index.dart';
import 'package:city_problems/models/index.dart';
import 'package:redux/redux.dart';

Reducer<AuthState> authReducer = combineReducers(<Reducer<AuthState>>[
  TypedReducer<AuthState,LoginSuccessful>(_loginSuccessful),
  TypedReducer<AuthState,SignUpSuccessful>(_signUpSuccessful),
  TypedReducer<AuthState, InitializeUserSuccessful>(_initializeUserSuccessful),
]);
AuthState _loginSuccessful(AuthState state, LoginSuccessful action) {
  return state.copyWith(
    user: action.user,
  );
}

AuthState _signUpSuccessful(AuthState state, SignUpSuccessful action) {
  return state.copyWith(
    user: action.user,
  );
}

AuthState _initializeUserSuccessful(AuthState state, InitializeUserSuccessful action) {
  return state.copyWith(
    user: action.user,
  );
}
