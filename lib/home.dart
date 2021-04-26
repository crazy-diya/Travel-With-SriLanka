import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/config/config.dart';
import 'package:travel_app/pages/login_pages/selection_method_login.dart';
import 'package:travel_app/widget/toast_design.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Home Page!"),
              ElevatedButton(
                child: Text("LogOut"),
                onPressed: () async {
                  await TravelApp.auth.signOut().then((value) async {
                    ToastWidget().toastDesign(msg: "Successfully Log Out!");
                    await Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SelectionMethodLogin(),
                        ),
                        (route) => false);
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
