import 'package:flutter/material.dart';
import 'package:ola_mundo/app_controller.dart';
import 'package:ola_mundo/pages/login_page.dart';

import 'pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: AppController.instance.isDartTheme
              ? ThemeData.dark()
              : ThemeData.light(),
          initialRoute: '/home',
          routes: {
            '/': (context) => const LoginPage(),
            '/home': (context) => HomePage(),
          },
        );
      },
    );
  }
}
