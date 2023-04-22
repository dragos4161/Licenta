import 'package:city_problems/actions/index.dart';
import 'package:city_problems/models/index.dart';
import 'package:city_problems/presentation/containers/user_container.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return UserContainer(
      builder: (BuildContext context, AppUser? appUser) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: Padding(
            padding: const EdgeInsets.fromLTRB(50, 80, 50, 0),
            child: Center(
              child: Column(
                children: <Widget>[
                  const Text(
                    'Login',
                    style: TextStyle(
                      color: Color.fromRGBO(80, 151, 255, 1),
                      fontSize: 60,
                      fontFamily: 'ebrima',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Material(
                    elevation: 5,
                    shadowColor: const Color.fromRGBO(80, 151, 255, 1),
                    borderRadius: BorderRadius.circular(25),
                    child: TextField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        hintText: 'e-mail',
                        hintStyle: const TextStyle(
                          color: Color.fromRGBO(132, 150, 155, 1),
                          fontFamily: 'ebrima',
                          fontWeight: FontWeight.bold,
                        ),
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Material(
                    elevation: 5,
                    shadowColor: const Color.fromRGBO(80, 151, 255, 1),
                    borderRadius: BorderRadius.circular(25),
                    child: TextField(
                      controller: passwordController,
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        hintText: 'password',
                        hintStyle: const TextStyle(
                          color: Color.fromRGBO(132, 150, 155, 1),
                          fontFamily: 'ebrima',
                          fontWeight: FontWeight.bold,
                        ),
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          style: const TextStyle(
                            color: Color.fromRGBO(103, 169, 249, 1),
                            fontFamily: 'ebrima',
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                          children: <TextSpan>[
                            const TextSpan(text: "Haven't account?  "),
                            TextSpan(
                              text: 'Sign-up',
                              style: const TextStyle(
                                color: Color.fromRGBO(50, 135, 237, 1),
                                fontSize: 16,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.pushNamed(context, '/signup');
                                },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Builder(
                    builder: (BuildContext context) {
                      return ElevatedButton(
                        onPressed: () async{
                          final Login action = Login(
                            email: emailController.text,
                            password: passwordController.text,
                          );
                          StoreProvider.of<AppState>(context).dispatch(action);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(80, 151, 255, 1),
                        ),
                        child: const SizedBox(
                          width: 200,
                          height: 60,
                          child: Center(
                            child: Text(
                              'LOGIN',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
