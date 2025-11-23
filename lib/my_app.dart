import 'package:flutter/material.dart';

import 'screens/authentication/auth_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Tajawal"),
      home: Scaffold(body: AuthScreen()),
    );
  }
}
