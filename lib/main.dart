import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_apps/cubit/auth_cubit.dart';
import 'package:travel_apps/cubit/page_cubit.dart';
import 'package:travel_apps/ui/pages/bonus_page.dart';
import 'package:travel_apps/ui/pages/get_started_page.dart';
import 'package:travel_apps/ui/pages/main_page.dart';
import 'package:travel_apps/ui/pages/sign_in_page.dart';
import 'package:travel_apps/ui/pages/sign_up_page.dart';
import 'package:travel_apps/ui/pages/splash_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageCubit(),
        ),
        BlocProvider(
          create: (context) => AuthCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/get-started': (context) => GetStartedPage(),
          '/sign-up': (context) => SignUpPage(),
          '/sign-in': (context) => SignInPage(),
          '/bonus': (context) => BonusPage(),
          '/main': (context) => MainPage(),
        },
      ),
    );
  }
}
