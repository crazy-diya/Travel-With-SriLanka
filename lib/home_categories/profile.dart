import 'package:flutter/material.dart';
import 'package:travel_app/config/config.dart';
import 'package:travel_app/pages/login_pages/selection_method_login.dart';
import 'package:travel_app/widget/toast_design.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: TextButton(
          child: Text("Sign Out!"),
          onPressed: () async {
            await TravelApp.auth.signOut().then((value) {
              ToastWidget().toastDesign(msg: "SuccessFully SignOut!");
            }).then(
              (value) => Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SelectionMethodLogin(),
                  ),
                  (route) => false),
            );
          },
        ),
      ),
    );
  }
}

/*

Widget profile(){
  return Center(child: Text("Liked"),);
}*/
