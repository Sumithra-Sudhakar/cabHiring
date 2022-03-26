import 'package:cabhiring/screens/signup.dart';
import 'package:cabhiring/screens/trip_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cabhiring/utils/colors.dart' as colors;
import 'package:introduction_screen/introduction_screen.dart';

class ChooseLoc extends StatefulWidget {
  const ChooseLoc({Key? key}) : super(key: key);

  @override
  State<ChooseLoc> createState() => _ChooseLocState();
}

class _ChooseLocState extends State<ChooseLoc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Container(
              height: 450,
              width: 500,
              color: colors.hintcolor.withOpacity(0.5),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: AppBar(
                title: Text(
                  "Drop location",
                  style: GoogleFonts.poppins(
                      color: colors.searchtextcolor,
                      fontWeight: FontWeight.w100),
                ),
                leading: Icon(Icons.location_on),
                backgroundColor: colors.searchbarcolor,
                elevation: 2,
                actions: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.search))
                ],
              ),
            ),
            Spacer(),
            Row(
              children: [
                Spacer(),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: IconButton(
                    onPressed: () {

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TripDetails()),
                      );
                    },
                    icon: Icon(
                      Icons.navigate_next_outlined,
                      size: 40,
                      color: colors.primarytextcolor,
                    ),


                  ),
                )
              ],
            ),
            Spacer()
          ],
        ),
        appBar: AppBar(
          title: Text(
            "Pick Up location",
            style: GoogleFonts.poppins(
                color: colors.searchtextcolor, fontWeight: FontWeight.w100),
          ),
          backgroundColor: colors.searchbarcolor,
          elevation: 2,
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        ),
        drawer: Drawer());
  }
}
