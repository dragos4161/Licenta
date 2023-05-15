import 'dart:async';

import 'package:city_problems/actions/index.dart';
import 'package:city_problems/data/auth_api.dart';
import 'package:city_problems/data/take_camera_picture.dart';
import 'package:city_problems/epics/app_epics.dart';
import 'package:city_problems/firebase_options.dart';
import 'package:city_problems/models/index.dart';
import 'package:city_problems/presentation/home.dart';
import 'package:city_problems/presentation/home_page.dart';
import 'package:city_problems/presentation/login_page.dart';
import 'package:city_problems/presentation/signup_page.dart';
import 'package:city_problems/reducer/reducer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  final AuthApi authApi = AuthApi(auth: FirebaseAuth.instance);
  final PictureApi pictureApi = PictureApi();
  final AppEpics epics = AppEpics(authApi: authApi,imageApi: pictureApi);

  final StreamController<dynamic> controller = StreamController<dynamic>();

  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: const AppState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(epics.epic),
          (Store<AppState> store, dynamic action, NextDispatcher next) {
        next(action);
        controller.add(action);
      },
    ],
  )..dispatch(const InitializeUser());

  await controller.stream
  .where((dynamic action) => action is InitializeUserSuccessful || action is InitializeUserError)
  .first;

  runApp(MyApp(store: store));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.store});

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: <String, WidgetBuilder>{
          '/': (BuildContext context) => const Home(),
          '/login': (BuildContext context) => const LoginPage(),
          '/signup': (BuildContext context) => const SignupPage(),
          '/home': (BuildContext context) => const HomePage(),
        },
        title: 'City Dangers',
        theme: ThemeData(
          useMaterial3: false,
          //bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.white.withOpacity(0.7)),
          primarySwatch: Colors.blue,
          splashColor: const Color.fromARGB(255, 13, 63, 139),
        ),
      ),
    );
  }
}
