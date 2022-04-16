import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cabhiring/utils/colors.dart' as colors;
import 'package:cabhiring/global/global.dart';

import '../login.dart';
import '../otp.dart';



class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  // TextEditingController phoneTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();


  validateForm()
  {
    if(nameTextEditingController.text.length < 5)
    {
      Fluttertoast.showToast(msg: "Name must be atleast 5 character");
    }

    else if(!emailTextEditingController.text.contains("@"))
    {
      Fluttertoast.showToast(msg: "Invalid email");
    }

    // else if(passwordTextEditingController.text.length > 5 && passwordTextEditingController.text.length > 12)
    // {
    //   Fluttertoast.showToast(msg: "Phone Number is required");
    // }

    else if(passwordTextEditingController.text.length < 6)
    {
      Fluttertoast.showToast(msg: "Password must be atleast 6 character");
    }

    else
    {
      saveUserInfo();
    }
  }

  saveUserInfo() async{
    final User? firebaseUser = (
        await fireAuth.createUserWithEmailAndPassword(
          email: emailTextEditingController.text.trim(),
          password: passwordTextEditingController.text.trim(),
        ).catchError((msg){
          Navigator.pop(context);
          Fluttertoast.showToast(msg: "Error: " + msg.toString());
        })
    ).user;

    if(firebaseUser != null)
    {
      Map driverMap =
      {
        "id" : firebaseUser.uid,
        "name" : nameTextEditingController.text.trim(),
        "email" : emailTextEditingController.text.trim(),
        // "phone" : phoneTextEditingController.text.trim()
      };

      DatabaseReference driversRef = FirebaseDatabase.instance.ref().child("details");
      driversRef.child(firebaseUser.uid).set(driverMap);
      // DatabaseReference ref = FirebaseDatabase.instance.ref("details");
      // ref.set(driverMap);
      Fluttertoast.showToast(msg: "Account Created");
      // currentFirebaseUser = firebaseUser;
      // Fluttertoast.showToast(msg: "Account Created");
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => OTP()),
      );


    }
    else{
      Navigator.pop(context);
      Fluttertoast.showToast(msg: "Account Not Created");
    }
  }


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
                        controller: nameTextEditingController,
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
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width*0.8,
                    child: TextFormField(
                        controller: emailTextEditingController,
                        style: GoogleFonts.montserrat(color: colors.primarytextcolor),
                        decoration: InputDecoration(

                            filled: true,
                            fillColor: colors.textboxcolor,
                            labelText: "Email",
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
                        obscureText: true,
                        controller: passwordTextEditingController,
                        style: GoogleFonts.montserrat(color: colors.primarytextcolor),
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
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(  height: 50,
                    width: MediaQuery.of(context).size.width*0.8,
                    child: TextFormField(
                      obscureText: true,
                        style: GoogleFonts.montserrat(color: colors.primarytextcolor),
                        decoration: InputDecoration(

                            filled: true,
                            fillColor: colors.textboxcolor,
                            labelText: "Confirm Password",
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
                        validateForm();
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
