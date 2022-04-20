import 'dart:ffi';

import 'package:cabhiring/screens/customer/customer_settings.dart';
import 'package:cabhiring/screens/login.dart';
import 'package:cabhiring/utils/alert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:cabhiring/utils/colors.dart' as colors;
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'driver_setting.dart';

class DriverHome extends StatefulWidget {
  const DriverHome({Key? key}) : super(key: key);

  @override
  State<DriverHome> createState() => _DriverHomeState();
}

class _DriverHomeState extends State<DriverHome> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);
  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Have a nice day!",
                    style: GoogleFonts.poppins(
                        fontSize: 28,
                        color: colors.primarytextcolor,
                        fontWeight: FontWeight.bold
                    ),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(child: Padding(
                  
                  padding: const EdgeInsets.all(8.0),
                  child: Center(child: Text("Your current Location....", style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: colors.secondarytextcolor
                  ),),),
                ),
                color: colors.hintcolor.withOpacity(0.5),
                ),
              ),
              buildCard("Coimbatore", "Chennai"),
              buildCard("Coimbatore", "Chennai"),
              buildCard("Coimbatore", "Chennai"),
              buildCard("Coimbatore", "Chennai"),
              buildCard("Coimbatore", "Chennai"),
              buildCard("Coimbatore", "Chennai"),   buildCard("Coimbatore", "Chennai"),   buildCard("Coimbatore", "Chennai"),   buildCard("Coimbatore", "Chennai"),
              buildCard("Coimbatore", "Chennai"),




            ],
          ),
        ),
      appBar: AppBar(),
        drawer:  Drawer(
 

          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [


                buildMenuItems(context),
                buildHeader(context),

              ],
            ),
          ),
        ));
  }

  buildMenuItems(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(24),
        color: colors.primarytextcolor,
        child: Center(
          child: CircleAvatar(
            radius: 52,
            backgroundImage: AssetImage('assets/homeimage.png'),
          ),
        )
    );
  }

  buildHeader(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24.0),
      child: Column(

        children: [
          ListTile(leading: Icon(Icons.person),
            title: Text("KS Ravindran"),
          ),
          ListTile(leading: Icon(Icons.phone),
            title: Text("1234567890"),
          ),
          ListTile(leading: Icon(Icons.car_rental),
            title: Text("TN22AB5123"),
          ),
          ListTile(leading: Icon(Icons.notifications),
            title: Text("Notifications"),),
          //Spacer(),
          Divider(color: Colors.black26,),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DriverSetting()));

            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Log Out"),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );

            },
          )
        ],
      ),
    );

  }
  Widget buildCard(String pickuplocation, String droplocation, ) => Card(
    color: colors.searchbarcolor.withOpacity(0.7),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Pickup Location: $pickuplocation", style: GoogleFonts.poppins(fontSize: 14,
                color: colors.secondarytextcolor,
                fontWeight: FontWeight.w500
            ),),


          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Drop Location: $droplocation", style:  GoogleFonts.poppins(fontSize: 14,
                color: colors.secondarytextcolor,
                fontWeight: FontWeight.w500
            ),),
          ),

          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(onPressed: (){displayDialog(context, "Yes", "No", (){
                Navigator.pop(context);
              }, "Take the ride!", "Are you sure you would like to take the trip");}, icon: Icon(Icons.navigate_next, color: colors.secondarytextcolor,size: 36,)),
            ),
          )
        ],
      ),
    ),
  );
}

