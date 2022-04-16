import 'package:cabhiring/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cabhiring/utils/colors.dart' as colors;

import '../otp.dart';
import 'driver_home.dart';

class SignUpDriver extends StatefulWidget {
  const SignUpDriver({Key? key}) : super(key: key);

  @override
  State<SignUpDriver> createState() => _SignUpDriverState();
}

class _SignUpDriverState extends State<SignUpDriver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.scaffoldbackground,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colors.scaffoldbackground,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: colors.primarytextcolor),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,


              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(padding: EdgeInsets.fromLTRB(10, 100, 10, 10),
                    child: Text("SIGN UP", style: GoogleFonts.poppins(
                        fontSize: 36,


                        color: colors.primarytextcolor
                    ),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width*0.8,
                    child: TextFormField(
                        style: GoogleFonts.montserrat(color: colors.primarytextcolor),
                        decoration: InputDecoration(

                            filled: true,
                            fillColor: colors.textboxcolor,
                            labelText: "Name",


                            labelStyle: GoogleFonts.poppins(
                                color: colors.hintcolor,
                                fontSize: 18
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(5.0),

                            )
                        )),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width*0.8,
                    child: TextFormField(
                        style: GoogleFonts.montserrat(color: colors.primarytextcolor),
                        decoration: InputDecoration(

                            filled: true,
                            fillColor: colors.textboxcolor,
                            labelText: "Vehicle Number",
                            labelStyle: GoogleFonts.poppins(
                                color: colors.hintcolor,
                                fontSize: 18
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(5.0),

                            )
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width*0.8,
                    child: TextFormField(
                        style: GoogleFonts.montserrat(color: colors.primarytextcolor),
                        decoration: InputDecoration(

                            filled: true,
                            fillColor: colors.textboxcolor,
                            labelText: "Liscence Number",
                            labelStyle: GoogleFonts.poppins(
                                color: colors.hintcolor,
                                fontSize: 18
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(5.0),

                            )
                        )),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 30, 30, 20),
                  child: SizedBox(
                    height: 54,
                    width: 314,
                    child: ElevatedButton.icon(
                      icon: Icon(
                        Icons.navigate_next,
                        size: 24,
                        color: colors.buttontextcolor,
                      ),
                      label: Center(
                        child: Text(
                          "CONTINUE",
                          style: GoogleFonts.montserrat(
                              color: colors.buttontextcolor, fontSize: 18),
                        ),
                      ),
                      onPressed: () {

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>DriverMobile()),
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
                Spacer(),
                TextButton(
                  child: Text("Already have an account? Log In"),
                  onPressed: (){

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );

                  },

                ),
                Spacer()
              ],
            ),
          )
        ],

      ),
    );
  }
}

class DriverMobile extends StatefulWidget {
  const DriverMobile({Key? key}) : super(key: key);

  @override
  State<DriverMobile> createState() => _DriverMobileState();
}

class _DriverMobileState extends State<DriverMobile> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: colors.scaffoldbackground,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colors.scaffoldbackground,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: colors.primarytextcolor),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,


              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(padding: EdgeInsets.fromLTRB(10, 100, 10, 10),
                    child: Text("SIGN UP", style: GoogleFonts.poppins(
                        fontSize: 36,


                        color: colors.primarytextcolor
                    ),),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width*0.8,
                    child: TextFormField(
                        style: GoogleFonts.montserrat(color: colors.primarytextcolor),
                        decoration: InputDecoration(

                            filled: true,
                            fillColor: colors.textboxcolor,
                            labelText: "Phone number",
                            labelStyle: GoogleFonts.poppins(
                                color: colors.hintcolor,
                                fontSize: 18
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(5.0),

                            )
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: SizedBox(
                          height: 50,
                          width: MediaQuery.of(context).size.width*0.3,
                          child: TextFormField(
                              obscureText: true,
                              style: GoogleFonts.montserrat(color:colors.primarytextcolor),
                              decoration: InputDecoration(

                                  filled: true,
                                  fillColor: colors.textboxcolor,
                                  labelText: "Password",
                                  labelStyle: GoogleFonts.poppins(
                                      color: colors.hintcolor,
                                      fontSize: 18
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(5.0),

                                  )
                              )),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: SizedBox(  height: 50,
                          width: MediaQuery.of(context).size.width*0.4,
                          child: TextFormField(
                              obscureText: true,
                              style: GoogleFonts.montserrat(color: colors.primarytextcolor),
                              decoration: InputDecoration(

                                  filled: true,

                                  fillColor: colors.textboxcolor,
                                  labelText: "ReType",
                                  labelStyle: GoogleFonts.poppins(
                                      color: colors.hintcolor,
                                      fontSize: 18
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(5.0),

                                  )
                              )),
                        ),
                      ),
                    ],
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
                      label: Center(
                        child: Text(
                          "SIGN UP",
                          style: GoogleFonts.montserrat(
                              color: colors.buttontextcolor, fontSize: 18),
                        ),
                      ),
                      onPressed: () {

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DriverHome()),
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
                Spacer(),
                TextButton(
                  child: Text("Already have an account? Log In"),
                  onPressed: (){

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );

                  },

                ),
                Spacer()
              ],
            ),
          )
        ],

      ),
    );
  }
}

