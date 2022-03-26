import 'package:cabhiring/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cabhiring/utils/colors.dart' as colors;
import 'package:introduction_screen/introduction_screen.dart';

class CabDetails extends StatefulWidget {
  const CabDetails({Key? key}) : super(key: key);

  @override
  State<CabDetails> createState() => _CabDetailsState();
}

class _CabDetailsState extends State<CabDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Container(
              height: 450,
              width: 500,
              color: colors.hintcolor.withOpacity(0.5),
            ),
            Padding(padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
              child: Card(
                elevation: 10,

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [

                            Icon(Icons.location_on, size: 18,),
                            Spacer(),

                            Text("PickUp", style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500
                            ),),

                            Spacer(),
                            Text("Racecourse, Coimbatore", style: GoogleFonts.poppins(
                              fontSize: 14,

                            ),),


                          ],              ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [

                            Icon(Icons.location_on, size: 18,),
                            Spacer(),

                            Text("Drop", style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500
                            ),),
                            Spacer(),

                            Text("Avinashi Road, Coimbatore", style: GoogleFonts.poppins(
                              fontSize: 14,

                            ),),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(10),
            child: Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [

                          Image.asset('assets/homeimage.png', height: 100,width: 100,)
                        ],
                      ),
                    ),
                    Spacer(),
                    Column(
                      children: [
                        // Padding(
                        //   padding: const EdgeInsets.all(8.0),
                        //   child: Row(children: [
                        //     Text("Driver Name", style: GoogleFonts.poppins(
                        //       fontWeight: FontWeight.w500,
                        //       fontSize: 14
                        //     ),),
                        //     Spacer(),
                        //     Text("Ravindran", style: GoogleFonts.poppins(
                        //
                        //         fontSize: 14
                        //     ),),
                        //   ],),
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.all(8.0),
                        //   child: Row(children: [
                        //     Text("Driver Nam", style: GoogleFonts.poppins(
                        //         fontWeight: FontWeight.w500,
                        //         fontSize: 14
                        //     ),),
                        //     Spacer(),
                        //     Text("Ravindran", style: GoogleFonts.poppins(
                        //
                        //         fontSize: 14
                        //     ),),
                        //   ],),
                        // )
                      ],
                    )
                  ],
                ),
              ),
            ),
            ),
            Padding(padding: EdgeInsets.fromLTRB(10, 50, 10, 20),
              child: Row(
                children: [
                  Spacer(),
                  SizedBox(
                height: 54,
                width: 150,
                child: ElevatedButton.icon(
icon: Icon(Icons.phone, size: 16,),
                  label: Text(
                    "Call Driver",
                    style: GoogleFonts.montserrat(
                        color: colors.buttontextcolor, fontSize: 14,

                        fontWeight: FontWeight.w600
                    ),
                  ),
                  onPressed: () {


                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CabDetails()),
                    );


                  },
                  style: ElevatedButton.styleFrom(
                      elevation: 10,

                      padding: EdgeInsets.all(10.0),
                      primary: colors.buttoncolor,
                      shape: new RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                ),),
                  Spacer(flex: 3,),
                  SizedBox(
                    height: 54,
                    width: 150,
                    child: ElevatedButton.icon(
icon: Icon(Icons.cancel_presentation, size: 15,),
                      label: Text(
                        "Cancel Trip",
                        style: GoogleFonts.montserrat(
                            color: colors.buttontextcolor, fontSize: 14,

                            fontWeight: FontWeight.w600
                        ),
                      ),
                      onPressed: () {


                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CabDetails()),
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
                  Spacer()
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
