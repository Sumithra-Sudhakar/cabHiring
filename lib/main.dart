import 'package:cabhiring/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (Firebase.apps.isEmpty) {
    await Firebase.initializeApp(
      name: 'CarAPP',
      options: FirebaseOptions(
        apiKey: "AIzaSyCPyVyuRwuHGLQVJxS84D1Gm6QdZoWD5lA",
        appId: "1:993861023703:android:8a285aea83fd23f420fd92",
        databaseURL: "https://cabhiring-eda48-default-rtdb.firebaseio.com/",
        messagingSenderId: "993861023703",
        projectId: "cabhiring-eda48",
      ),
    ).whenComplete(() {
      print("completedAppInitialize");
    });
  }
  // await Firebase.initializeApp(
  //   // Replace with actual values
  //   options: FirebaseOptions(
  //     apiKey: "AIzaSyCPyVyuRwuHGLQVJxS84D1Gm6QdZoWD5lA",
  //     appId: "1:993861023703:android:8a285aea83fd23f420fd92",
  //     databaseURL: "https://cabhiring-eda48-default-rtdb.firebaseio.com/",
  //     messagingSenderId: "993861023703",
  //     projectId: "cabhiring-eda48",
  //   ),
  // );
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Cab Hiring',

    home: Home(),
  );
}

