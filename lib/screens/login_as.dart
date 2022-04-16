import 'package:cabhiring/screens/customer/choose_loc.dart';
import 'package:cabhiring/screens/customer/signup.dart';
import 'package:cabhiring/screens/driver/signup_driver.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cabhiring/utils/colors.dart' as colors;

class SignUpAs extends StatelessWidget {
  const SignUpAs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: colors.scaffoldbackground ,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Expanded(child:   Image.asset('assets/homeimage.png'),
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
                      Icons.person_add_alt,
                      size: 24,
                      color: colors.buttontextcolor,
                    ),
                    label: Text(
                      "SIGN UP AS CUSTOMER",
                      style: GoogleFonts.montserrat(
                          color: colors.buttontextcolor, fontSize: 14),
                    ),
                    onPressed: () {

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUp()),
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
                      Icons.drive_eta_rounded,
                      size: 24,
                      color: colors.buttontextcolor,
                    ),
                    label: Text(
                      "SIGN UP AS DRIVER",
                      style: GoogleFonts.montserrat(
                          color: colors.buttontextcolor, fontSize: 14),
                    ),
                    onPressed: () {

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpDriver()),
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
