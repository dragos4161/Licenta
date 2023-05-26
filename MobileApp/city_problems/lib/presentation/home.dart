import 'package:city_problems/models/index.dart';
import 'package:city_problems/presentation/admin_home_page.dart';
import 'package:city_problems/presentation/containers/user_container.dart';
import 'package:city_problems/presentation/home_page.dart';
import 'package:city_problems/presentation/login_page.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser? appUser) {
        if (appUser == null) {
          return const LoginPage();
        } else {
          if(appUser.email == 'admin@gmail.com'){
            return const AdminHomePage();
          }
          return const HomePage();
        }
      },
    );
  }
}
