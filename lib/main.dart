import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:login_page/splashscreen.dart';
import 'package:login_page/loginpage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDZEsYH2q88E30y5gX7X165VuJ7n4Ojq8E",
  authDomain: "loginpage-15799.firebaseapp.com",
  projectId: "loginpage-15799",
  storageBucket: "loginpage-15799.appspot.com",
  messagingSenderId: "879407800608",
  appId: "1:879407800608:web:d5e25d9fe8a1347190b745",
  measurementId: "G-SEE6TNFEN6"));
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        debugShowCheckedModeBanner: false,
        title: 'Flutter Firebase',
        home: const SplashScreen(
          child: LoginPage(),
 ),
 );
}
}