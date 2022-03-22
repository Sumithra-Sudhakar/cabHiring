import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cabhiring/utils/colors.dart' as colors;
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
      body: Column(
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
                  style: GoogleFonts.montserrat(color: Colors.white),
                  decoration: InputDecoration(

                      filled: true,
                      fillColor: colors.textboxcolor,
                      hintText: "Phone number",
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
                  style: GoogleFonts.montserrat(color: Colors.white),
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
      ),
    );
  }
}
