import 'package:city_problems/actions/index.dart';
import 'package:city_problems/models/index.dart';
import 'package:city_problems/presentation/containers/user_container.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController nameController = TextEditingController();
    return UserContainer(
      builder: (BuildContext context, AppUser? user) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: Padding(
            padding: const EdgeInsets.fromLTRB(50, 80, 50, 0),
            child: Center(
              child: Column(
                children: <Widget>[
                  const Text(
                    'Sign Up',
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
                          fontFamily: 'ebrima',
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
                      controller: nameController,
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        hintText: 'name',
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
                    height: 15,
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
                            const TextSpan(text: 'Have an account?  '),
                            TextSpan(
                              text: 'Login',
                              style: const TextStyle(
                                color: Color.fromRGBO(50, 135, 237, 1),
                                fontSize: 16,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.pushNamed(context, '/login');
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
                          final SignUp action = SignUp(
                            email: emailController.text,
                            password: passwordController.text,
                            displayName: nameController.text,
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
                              'SIGN UP',
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
