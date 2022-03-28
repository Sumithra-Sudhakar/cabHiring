import 'package:cabhiring/screens/login.dart';
import 'package:cabhiring/screens/signup.dart';
import 'package:cabhiring/screens/trip_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cabhiring/utils/colors.dart' as colors;
import 'package:introduction_screen/introduction_screen.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ChooseLoc extends StatefulWidget {
  const ChooseLoc({Key? key}) : super(key: key);

  @override
  State<ChooseLoc> createState() => _ChooseLocState();
}

class _ChooseLocState extends State<ChooseLoc> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);
  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Container(
              height: 450,
              width: 500,
             //color: colors.hintcolor.withOpacity(0.5),
              child:  GoogleMap(
                onMapCreated: _onMapCreated,
                initialCameraPosition: CameraPosition(
                  target: _center,
                  zoom: 11.0,
                ),
              ),

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
        drawer:  Drawer(
    child: Center(
    child: Column(
    children: <Widget>[
      UserAccountsDrawerHeader(
        accountEmail: Text(''), // keep blank text because email is required
        accountName: Row(
          
          children: <Widget>[
            Container(

              width: 50,
              height: 50,
              decoration: BoxDecoration(shape: BoxShape.circle),
              child: CircleAvatar(
                radius: 100.0,
               child: Image.asset('assets/homeimage.png'),
              ),
            ),
            Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('KS Ravindran ', style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 18

                  ),),
                ),
]),
            Spacer()
          ],
        ),
      ),
      Spacer(),
      Padding(
        padding: EdgeInsets.fromLTRB(30, 30, 30, 50),
        child: SizedBox(
          height: 54,
          width: 214,
          child: ElevatedButton.icon(
            icon: Icon(
              Icons.logout,
              size: 24,
              color: colors.buttontextcolor,
            ),
            label: Text(
              "LOG OUT",
              style: GoogleFonts.montserrat(
                  color: colors.buttontextcolor, fontSize: 16),
            ),
            onPressed: () {


              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
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
    ],
    ),
    ),
    ));
  }
}
