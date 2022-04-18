import 'package:cabhiring/screens/customer/cab_details.dart';
import 'package:cabhiring/screens/customer/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cabhiring/utils/colors.dart' as colors;
import 'package:introduction_screen/introduction_screen.dart';

import '../../utils/alert.dart';

class TripDetails extends StatefulWidget {
  const TripDetails({Key? key}) : super(key: key);

  @override
  State<TripDetails> createState() => _TripDetailsState();
}

class _TripDetailsState extends State<TripDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Column(

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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.money, size: 18,),
                      Spacer(

                      ),
                      Text("Estimated Rate", style: GoogleFonts.poppins(
                          fontSize: 14,

                          fontWeight: FontWeight.w500
                      ),),
                      Spacer(
                        flex: 3,
                      ),

                      Text("Rs. 200", style: GoogleFonts.poppins(
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
        Padding(padding: EdgeInsets.fromLTRB(10, 50, 10, 10),
        child: Row(
          children: [
            Spacer(flex: 3,),
            SizedBox(
              height: 54,
              width: 200,
              child: ElevatedButton(

                child: Text(
                  "BOOK CAB",
                  style: GoogleFonts.montserrat(
                      color: colors.buttontextcolor, fontSize: 14,

                  fontWeight: FontWeight.w600
                  ),
                ),
                onPressed: () {

                  displayDialog(context, "YES","NO" , (){Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CabDetails()),
                  );
                  }, "Confirm", "Confirm Booking");



                },
                style: ElevatedButton.styleFrom(
                    elevation: 10,

                    padding: EdgeInsets.all(10.0),
                    primary: colors.buttoncolor,
                    shape: new RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0))),
              ),
            ),
          ],
        ),
        )

      ],
    ),
    );
  }
}
