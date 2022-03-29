import 'package:auto_size_text/auto_size_text.dart';
import 'package:cabhiring/screens/choose_loc.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cabhiring/utils/colors.dart' as colors;

import 'package:rating_dialog/rating_dialog.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {

  void _showRatingAppDialog() {

    final _dialog = RatingDialog(
      initialRating: 0.0,
      // your app's name?
      title: Text(
        'Rate this trip',
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
      // encourage your user to leave a high rating?

      // your app's logo?

      submitButtonText: 'Submit',


      onSubmitted: (response) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ChooseLoc()),
        );

        // TODO: add your own logic

      },
    );

    // show the dialog
    showDialog(
      context: context,
      barrierDismissible: true, // set to false if you want to force a rating
      builder: (context) => _dialog,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Expanded(
            flex:2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/payment.png', height: 800,),
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("Bill for your ride!", style: GoogleFonts.poppins(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: colors.secondarytextcolor
                    ),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("Rs.200", style: GoogleFonts.poppins(
                        fontSize: 22,

                        color: colors.secondarytextcolor
                    ),),
                  ),
                ),
Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 54,
                    width: 150,
                    child: ElevatedButton.icon(
                      icon: Icon(Icons.money, size: 16,),
                      label: Text(
                        "GPAY",
                        style: GoogleFonts.montserrat(
                            color: colors.buttontextcolor, fontSize: 14,

                            fontWeight: FontWeight.w600
                        ),
                      ),
                      onPressed: () {


_showRatingAppDialog();
                      },
                      style: ElevatedButton.styleFrom(
                          elevation: 10,

                          padding: EdgeInsets.all(10.0),
                          primary: colors.buttoncolor,
                          shape: new RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0))),
                    ),),
                ),
                Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 54,
                    width: 150,
                    child: ElevatedButton.icon(
                      icon: Icon(Icons.money, size: 16,),
                      label: Text(
                        "CASH",
                        style: GoogleFonts.montserrat(
                            color: colors.buttontextcolor, fontSize: 14,

                            fontWeight: FontWeight.w600
                        ),
                      ),
                      onPressed: () {

                        _showRatingAppDialog();

                      },
                      style: ElevatedButton.styleFrom(
                          elevation: 10,

                          padding: EdgeInsets.all(10.0),
                          primary: colors.buttoncolor,
                          shape: new RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0))),
                    ),),
                ),
                Spacer(flex: 4,)

              ],
            ),
          )
        ],
      ),
    );
  }
}

