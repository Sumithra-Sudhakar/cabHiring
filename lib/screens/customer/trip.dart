import 'package:auto_size_text/auto_size_text.dart';
import 'package:cabhiring/screens/customer/payment.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cabhiring/utils/colors.dart' as colors;

import '../../utils/alert.dart';

class Trip extends StatefulWidget {
  const Trip({Key? key}) : super(key: key);

  @override
  State<Trip> createState() => _TripState();
}

class _TripState extends State<Trip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 450,
              width: 700,
              color: colors.hintcolor.withOpacity(0.5),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 54,
                width: 150,
                child: ElevatedButton.icon(
                  icon: Icon(Icons.phone, size: 16,),
                  label: AutoSizeText(

                    "Emergency call number",
                    style: GoogleFonts.montserrat(
                        color: colors.buttontextcolor, fontSize: 14,

                        fontWeight: FontWeight.w600
                    ),
                    maxLines: 1,
                  ),
                  onPressed: () {
                    displayDialog(context, "OK", null, (){Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Payment()),
                    );
                    }, "See you again!", "Your trip has ended");



                  },
                  style: ElevatedButton.styleFrom(
                      elevation: 10,

                      padding: EdgeInsets.all(10.0),
                      primary: colors.buttoncolor,
                      shape: new RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                ),),
            ),
            Spacer()
          ],
        ),

    );
  }
}
