import 'package:city_problems/actions/index.dart';
import 'package:city_problems/models/index.dart';
import 'package:redux/redux.dart';

Reducer<AuthState> authReducer = combineReducers(<Reducer<AuthState>>[
  TypedReducer<AuthState,LoginSuccessful>(_loginSuccessful),
]);
AuthState _loginSuccessful(AuthState state, LoginSuccessful action) {
  return state.copyWith(
    user: action.user,
  );
}
