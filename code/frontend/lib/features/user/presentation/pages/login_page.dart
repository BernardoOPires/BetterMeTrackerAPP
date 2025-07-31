import 'package:flutter/material.dart';
import 'package:frontend/shared/themes/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: , add global navbar
        body: Center(
          child: Container(
            alignment: Alignment.center,
            color: primaryColor,
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width * 0.4,
            child: Column(
              children: [
                Text("Login:", style: TextStyle(fontSize: 24)),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 6,
                  ),
                  child: Material(
                    elevation: 5,
                    color: supColor,
                    borderRadius: BorderRadius.circular(15.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: MaterialButton(
                        minWidth: MediaQuery.of(context).size.width * 1,
                        onPressed: () {},
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Text("Username:", style: GoogleFonts.poppins()),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(7),
                                  decoration: BoxDecoration(
                                    color: supColor,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(Icons.arrow_right),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 6,
                  ),
                  child: Material(
                    elevation: 5,
                    color: supColor,
                    borderRadius: BorderRadius.circular(15.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: MaterialButton(
                        minWidth: MediaQuery.of(context).size.width * 1,
                        onPressed: () {},
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Text("Password:", style: GoogleFonts.poppins()),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(7),
                                  decoration: BoxDecoration(
                                    color: supColor,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(Icons.arrow_right),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
