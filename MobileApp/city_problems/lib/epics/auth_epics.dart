import 'package:city_problems/actions/index.dart';
import 'package:city_problems/data/auth_api.dart';
import 'package:city_problems/models/index.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/transformers.dart';

class AuthEpics{
  const AuthEpics({required this.api});

  final AuthApi api;

  Epic<AppState> get epic{
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState,LoginStart>(_loginStart),
      TypedEpic<AppState,InitializeUserStart>(_initializeUserStart),
    ]);
  }

  Stream<dynamic> _loginStart(Stream<LoginStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((LoginStart action){
      return Stream<void>.value(null)
          .asyncMap((_) => api.login(email: action.email, password: action.password))
          .map((AppUser user) => Login.successful(user))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => Login.error(error, stackTrace));
    });
  }

  Stream<void> _initializeUserStart(Stream<InitializeUserStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((InitializeUserStart action) {
      return Stream<void>.value(null) //
          .asyncMap((_) => api.getUser())
          .map((AppUser? user) => InitializeUser.successful(user))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => InitializeUser.error(error, stackTrace));
    });
  }
}
