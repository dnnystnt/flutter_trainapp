import 'package:flutter/material.dart';
import 'package:trainapps/ui/pages/bonus_page.dart';
import 'package:trainapps/ui/pages/get_started_page.dart';
import 'package:trainapps/ui/pages/main_page.dart';
import 'package:trainapps/ui/pages/sign_up_page.dart';
import 'package:trainapps/ui/pages/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: SplashPage(),
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




// LANJUT DARI Success Checkout Page
















