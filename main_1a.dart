import 'package:flutter/material.dart';
import 'register_1a.dart';
import 'login_1a.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RegisterPage(),
      routes: {
        '/login': (context) => LoginPage(),
      },
    );
  }
}
