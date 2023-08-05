import 'package:flutter/material.dart';
import 'package:flutter_application/utils/routes.dart';
import 'package:flutter_application/widgets/theme.dart';

import 'screens/home_screen.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: CustomRoutes.homeRoute,
      routes: {
        '/': (context) => const LoginPage(),
        CustomRoutes.homeRoute: (context) => const HomePage(),
        CustomRoutes.loginRoute: (context) => const LoginPage()
      },
    );
  }
}
