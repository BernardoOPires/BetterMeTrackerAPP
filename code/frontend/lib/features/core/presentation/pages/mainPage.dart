import 'package:flutter/material.dart';
import 'package:frontend/shared/themes/colors.dart';
import 'package:frontend/shared/widgets/navBar.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: backgroundColor,
        appBar: Navbar(),
        body: Column(
          children: [
            Container(
              color: primaryColor,
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width * 0.4,
              child: Center(
                child: Column(
                  children: [
                    //static test -- make it dynamic (listview widget)
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
                                Text("goal 1", style: GoogleFonts.poppins()),
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
                                Text("goal 1", style: GoogleFonts.poppins()),
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
                                Text("goal 1", style: GoogleFonts.poppins()),
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
            Container(
              color: lightBlueBackground,
              child: Column(children: [SizedBox(), SizedBox()]),
            ),
          ],
        ),
      ),
    );
  }
}
