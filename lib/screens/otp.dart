import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cabhiring/utils/colors.dart' as colors;
 class OTP extends StatefulWidget {
   const OTP({Key? key}) : super(key: key);

   @override
   State<OTP> createState() => _OTPState();
 }

 class _OTPState extends State<OTP> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: colors.scaffoldbackground,
       appBar: AppBar(
         elevation: 0,
         backgroundColor: colors.scaffoldbackground,
         leading: IconButton(
           icon: Icon(Icons.arrow_back_ios, color: colors.primarytextcolor, ),
           onPressed: () => Navigator.of(context).pop(),
         ),
       ),
       body: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Padding(padding: EdgeInsets.fromLTRB(10, 40, 10, 40),
             child: Text("OTP VERIFICATION", style: GoogleFonts.poppins(
                 fontSize: 36,
                 fontWeight: FontWeight.bold
                 ,
                 color: colors.primarytextcolor
             ),),
           ),
           Padding(
             padding: const EdgeInsets.all(10.0),
             child: TextFormField(
                 style: GoogleFonts.montserrat(color: Colors.white),
                 decoration: InputDecoration(

                     filled: true,
                     fillColor: colors.textboxcolor,
                     hintText: "OTP",
                     hintStyle: GoogleFonts.poppins(
                         color: Colors.white.withOpacity(0.5),
                         fontSize: 18
                     ),
                     focusedBorder: OutlineInputBorder(
                       borderSide: BorderSide.none,
                       borderRadius: BorderRadius.circular(5.0),

                     )
                 )),
           ),

           Padding(padding: EdgeInsets.fromLTRB(20, 20, 10, 40),
             child: TextButton(onPressed: (){},
             child: Text("Didn't get OTP? Resend", style: GoogleFonts.poppins(
                 fontSize: 18,
                 color: colors.primarytextcolor

             ),),),
           ),
           Spacer(flex: 2,),
           Padding(
             padding: EdgeInsets.fromLTRB(30, 30, 30, 50),
             child: SizedBox(
               height: 54,
               width: 314,
               child: ElevatedButton.icon(
                 icon: Icon(
                   Icons.login,
                   size: 24,
                   color: colors.primarytextcolor,
                 ),
                 label: Text(
                   "VERIFY",
                   style: GoogleFonts.montserrat(
                       color: colors.primarytextcolor, fontSize: 18),
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