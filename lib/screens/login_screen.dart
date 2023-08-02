import 'package:flutter/material.dart';
import 'package:flutter_application/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(children: [
          Image.asset(
            'assets/images/Login.png',
            fit: BoxFit.cover,
            height: 210,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Welcome $name",
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 18.0, horizontal: 36.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Enter username",
                    labelText: "Username",
                  ),
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "Enter password",
                    labelText: "Password",
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () async {
                    setState(() {
                      changeButton = true;
                    });
                    await Future.delayed(const Duration(seconds: 1));
                    Navigator.pushNamed(context, CustomRoutes.homeRoute);
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 50),
                    width: changeButton ? 50 : 100,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 6)),
                    child: changeButton
                        ? const Icon(
                            Icons.change_circle,
                            color: Colors.white,
                          )
                        : const Text(
                            "LogIn",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                  ),
                )
                // ElevatedButton(
                //   onPressed: () {
                //     Navigator.pushNamed(context, CustomRoutes.homeRoute);
                //   },
                //   style: TextButton.styleFrom(minimumSize: Size(150, 50)),
                //   child: const Text("Login"),
                // )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
