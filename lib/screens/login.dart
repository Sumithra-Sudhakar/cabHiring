import 'package:cabhiring/screens/cab_details.dart';
import 'package:cabhiring/screens/choose_loc.dart';
import 'package:cabhiring/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cabhiring/utils/colors.dart' as colors;
import 'package:fluttertoast/fluttertoast.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:cabhiring/global/global.dart';
import 'otp.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  // TextEditingController phoneTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  validateForm()
  {
    // if(nameTextEditingController.text.length < 5)
    // {
    //   Fluttertoast.showToast(msg: "Name must be atleast 5 character");
    // }

    if(!emailTextEditingController.text.contains("@"))
    {
      Fluttertoast.showToast(msg: "Enter Valid email");
    }

    else if(passwordTextEditingController.text.isEmpty)
    {
      Fluttertoast.showToast(msg: "Password is required");
    }

    else
    {
      loginUserInfo();
    }

  }

  loginUserInfo() async{
    final User? firebaseUser = (
        await fireAuth.signInWithEmailAndPassword(
          email: emailTextEditingController.text.trim(),
          password: passwordTextEditingController.text.trim(),
        ).catchError((msg){
          Navigator.pop(context);
          Fluttertoast.showToast(msg: "Error: " + msg.toString());
        })
    ).user;

    if(firebaseUser != null)
    {
      // currentFirebaseUser = firebaseUser;
      Fluttertoast.showToast(msg: "Login Success");
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ChooseLoc(

        )),
      );


    }
    else{
      Navigator.pop(context);
      Fluttertoast.showToast(msg: "Login Failed");
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
                  child: Padding(padding: EdgeInsets.fromLTRB(30, 40, 10, 10),
                    child: Text("LOG IN", style: GoogleFonts.poppins(
                        fontSize: 36,

                        color: colors.primarytextcolor
                    ),),
                  ),
                ),
                Spacer(),
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
                            hintText: "Email",
                            hintStyle: GoogleFonts.poppins(
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
                      obscureText: true,
                        controller: passwordTextEditingController,
                        style: GoogleFonts.montserrat(color: colors.primarytextcolor),
                        decoration: InputDecoration(

                            filled: true,
                            fillColor: colors.textboxcolor,
                            hintText: "Password",
                            hintStyle: GoogleFonts.poppins(
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
                  padding: EdgeInsets.fromLTRB(30, 30, 30, 50),
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
                  child: Text("New here? Sign Up"),
                  onPressed: (){

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUp()),
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


