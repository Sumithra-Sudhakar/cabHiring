import 'package:cabhiring/screens/login.dart';
import 'package:cabhiring/screens/onboarding.dart';
import 'package:cabhiring/screens/customer/signup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cabhiring/utils/file_auth.dart';
import 'package:cabhiring/utils/validator.dart';
import 'package:cabhiring/utils/colors.dart' as colors;


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.scaffoldbackground ,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Expanded(child:   Image.asset('assets/homeimage1.png'),
            flex: 1,
          ),
          Expanded(child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(padding: EdgeInsets.all(20.0),
                  child: Text("CARZEE", style: GoogleFonts.poppins(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: colors.primarytextcolor
                  ),),
                ),
              ),

              Align(
                alignment: Alignment.topLeft,
                child: Padding(padding: EdgeInsets.fromLTRB(20, 20, 10, 40),
                  child: Text("Anytime, Anywhere!", style: GoogleFonts.poppins(
                      fontSize: 18,
                      color: colors.primarytextcolor

                  ),),
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(30, 30, 30, 20),
                child: SizedBox(
                  height: 54,
                  width: 314,
                  child: ElevatedButton.icon(
                    icon: Icon(
                      Icons.app_registration,
                      size: 24,
                      color: colors.buttontextcolor,
                    ),
                    label: Text(
                      "Get Started",
                      style: GoogleFonts.montserrat(
                          color: colors.buttontextcolor, fontSize: 18),
                    ),
                    onPressed: () {

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => OnBoarding()),
                      );

                    },
                    style: ElevatedButton.styleFrom(
                        elevation: 10,

                        padding: EdgeInsets.all(10.0),
                        primary: colors.buttoncolor,
                        shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0))),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 30, 30, 20),
                child: SizedBox(
                  height: 54,
                  width: 314,
                  child: ElevatedButton.icon(
                    icon: Icon(
                      Icons.login,
                      size: 24,
                      color: colors.buttontextcolor,
                    ),
                    label: Text(
                      "LOGIN",
                      style: GoogleFonts.montserrat(
                          color: colors.buttontextcolor, fontSize: 18),
                    ),
                    onPressed: () {

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );

                    },
                    style: ElevatedButton.styleFrom(
                        elevation: 10,

                        padding: EdgeInsets.all(10.0),
                        primary: colors.buttoncolor,
                        shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0))),
                  ),
                ),
              ),
            ],
          ))
        ],
      ),

    );
  }
}
