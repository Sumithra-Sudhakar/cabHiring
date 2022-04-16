import 'package:cabhiring/screens/customer/customer_settings.dart';
import 'package:cabhiring/screens/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:cabhiring/utils/colors.dart' as colors;
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
        body: Column(
          children: [
           
          ],
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
}
