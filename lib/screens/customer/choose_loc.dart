import 'package:cabhiring/screens/customer/customer_settings.dart';
import 'package:cabhiring/screens/login.dart';
import 'package:cabhiring/screens/customer/signup.dart';
import 'package:cabhiring/screens/customer/trip_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_search_bar/flutter_search_bar.dart';
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
                  IconButton(onPressed: () {
                    showSearch(context: context, delegate: MySearchDelegate());
                  }, icon: Icon(Icons.search))
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
          actions: [IconButton(onPressed: () {
showSearch(context: context, delegate: MySearchDelegate());
          }, icon: Icon(Icons.search))],
        ),
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
                  MaterialPageRoute(builder: (context) => CustomerSetting()));

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

class MySearchDelegate  extends SearchDelegate{
  @override
  Widget? buildLeading (BuildContext context) => IconButton(
    icon: Icon(Icons.arrow_back_ios_outlined),
    onPressed: ()=> close(context, null),
  );

  @override
  List<Widget>? buildActions(BuildContext context) => [
    IconButton(
      icon: const Icon(Icons.clear),
      onPressed: (){
        if(query.isEmpty){close(context, null);}
        query='';
      },
    )
  ];

  @override
  Widget buildResults(BuildContext context ) => Container();

  @override
  Widget buildSuggestions(BuildContext context){
    List <String> suggestions =[
      'Racecourse , Coimbatore',
      'Crosscut Road, Coimbatore',
      'Coimbatore International Airport',
      'Marudhamalai, Coimbatore',
      'Marudhamalai, Coimbatore',

    ];
    return ListView.builder(itemBuilder: (context, index){
      final suggestion = suggestions[index];
      return ListTile(
        title: Text(suggestion),
        onTap: (){
          query = suggestion;
        },
      );
    });
  }
}
