import 'package:flutter/material.dart';
import 'package:travel_apps/ui/pages/bonus_page.dart';
import 'package:travel_apps/ui/pages/get_started_page.dart';
import 'package:travel_apps/ui/pages/main_page.dart';
import 'package:travel_apps/ui/pages/sign_up_page.dart';
import 'package:travel_apps/ui/pages/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/get-started': (context) => GetStartedPage(),
        '/sign-up': (context) => SignUpPage(),
        '/bonus': (context) => BonusPage(),
        '/main': (context) => MainPage(),
      },
    );
  }
}
