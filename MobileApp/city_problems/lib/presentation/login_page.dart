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
  bool login = true;

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController nameController = TextEditingController();
    return UserContainer(
      builder: (BuildContext context, AppUser? appUser) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: Padding(
            padding: const EdgeInsets.fromLTRB(50, 80, 50, 0),
            child: Center(
              child: Column(
                children: <Widget>[
                  Text(
                    login == true ?
                    'Login' : 'Sign-Up',
                    style: const TextStyle(
                      color: Color.fromRGBO(80, 151, 255, 1),
                      fontSize: 60,
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
                          fontWeight: FontWeight.bold,
                        ),
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
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
                          fontWeight: FontWeight.bold,
                        ),
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                  Visibility(
                    visible: !login,
                    child: Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 20,
                        ),
                        Material(
                          elevation: 5,
                          shadowColor: const Color.fromRGBO(80, 151, 255, 1),
                          borderRadius: BorderRadius.circular(25),
                          child: TextField(
                            controller: nameController,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              hintText: 'name',
                              hintStyle: const TextStyle(
                                color: Color.fromRGBO(132, 150, 155, 1),
                                fontWeight: FontWeight.bold,
                              ),
                              fillColor: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          style: const TextStyle(
                            color: Color.fromRGBO(103, 169, 249, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                          children: <TextSpan>[
                            TextSpan(text: login == true ? "Haven't account?  " : 'Have an account? '),
                            TextSpan(
                              text: login == true ? 'Sign-up' : 'Login',
                              style: const TextStyle(
                                color: Color.fromRGBO(50, 135, 237, 1),
                                fontSize: 16,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  setState(() {
                                    login = !login;
                                  });
                                  //Navigator.pushNamed(context, '/signup');
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
                        onPressed: () async {
                          if(login == true) {
                            final Login action = Login(
                              email: emailController.text,
                              password: passwordController.text,
                            );
                            StoreProvider.of<AppState>(context).dispatch(action);
                          }
                          else{
                            final SignUp action = SignUp(
                              email: emailController.text,
                              password: passwordController.text,
                              displayName: nameController.text,
                            );
                            StoreProvider.of<AppState>(context).dispatch(action);
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(80, 151, 255, 1),
                        ),
                        child: SizedBox(
                          width: 200,
                          height: 60,
                          child: Center(
                            child: Text(
                              login == true ? 'LOGIN' : 'SIGN-UP',
                              style: const TextStyle(
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
