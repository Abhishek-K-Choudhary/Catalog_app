import 'package:flutter/material.dart';
import 'package:flutter_application/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

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
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      initialRoute: CustomRoutes.homeRoute,
      routes: {
        '/': (context) => const LoginPage(),
        CustomRoutes.homeRoute: (context) => const HomePage(),
        CustomRoutes.loginRoute: (context) => const LoginPage()
      },
    );
  }
}
