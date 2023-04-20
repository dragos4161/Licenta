import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(50, 80, 50, 0),
        child: Center(
          child: Column(
            children: <Widget>[
              const Text(
                "Login",
                style: TextStyle(
                  color: Color.fromRGBO(80, 151, 255, 1),
                  fontSize: 60,
                  fontFamily: "ebrima",
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
                      borderSide: const BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    hintText: "e-mail",
                    hintStyle: const TextStyle(
                      color: Color.fromRGBO(132, 150, 155, 1),
                      fontFamily: "ebrima",
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
                      borderSide: const BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    hintText: "password",
                    hintStyle: const TextStyle(
                      color: Color.fromRGBO(132, 150, 155, 1),
                      fontFamily: "ebrima",
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
                        fontFamily: "ebrima",
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                      children: <TextSpan>[
                        const TextSpan(text: "Haven't account?  "),
                        TextSpan(
                          text: "Sign-up",
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
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(
                          emailController.text + passwordController.text)));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(80, 151, 255, 1),
                ),
                child: const SizedBox(
                  width: 200,
                  height: 60,
                  child: Center(
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
