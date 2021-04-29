import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/config/config.dart';
import 'package:travel_app/home.dart';
import 'package:travel_app/pages/login_pages/login_page.dart';
import 'package:travel_app/pages/login_pages/selection_method_login.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    displaySplash();
  }

  displaySplash() {
    Timer(Duration(seconds: 5), ()  {
      if(/*TravelApp.auth.currentUser != null*/false){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage(),));
      }else{
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => SelectionMethodLogin(),));
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text("Im a Splash Screen!"),
        ),
      ),
    );
  }
}
