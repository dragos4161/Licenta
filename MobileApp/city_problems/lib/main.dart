import 'package:city_problems/presentation/home_page.dart';
import 'package:city_problems/presentation/login.dart';
import 'package:city_problems/presentation/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignupPage(),
      },
      title: 'City Dangers',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
        splashColor: Color.fromARGB(255, 13, 63, 139),
      ),
      home: const HomePage(),
    );
  }
}
