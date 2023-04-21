import 'package:city_problems/models/index.dart';
import 'package:city_problems/reducer/auth_reducer.dart';
import 'package:redux/redux.dart';

Reducer<AppState> reducer = combineReducers(<Reducer<AppState>>[
  _reducer,
]);

AppState _reducer(AppState state, dynamic action){
  return state.copyWith(
    auth: authReducer(state.auth,action),
  );
}
