import 'package:flutter/material.dart';
import 'package:frontend/features/core/presentation/pages/mainPage.dart';
import 'package:frontend/features/user/presentation/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final bool isLoggedIn = false; // test

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: isLoggedIn ? MainPage() : LoginPage());
  }
}
