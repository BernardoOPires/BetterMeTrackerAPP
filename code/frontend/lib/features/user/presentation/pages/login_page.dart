import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: , add global navbar
        body: Center(
          child: Column(
            children: [
              TextField(),
              TextField(),
              // ButtonStyle(),
              InkWell(
                child: Text("Register"),
                // onTap: ,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
