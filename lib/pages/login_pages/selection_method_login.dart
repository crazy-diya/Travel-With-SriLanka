import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:travel_app/pages/login_pages/login_page.dart';
import 'package:travel_app/pages/login_pages/signup_page.dart';

class SelectionMethodLogin extends StatefulWidget {
  @override
  _SelectionMethodLoginState createState() => _SelectionMethodLoginState();
}

class _SelectionMethodLoginState extends State<SelectionMethodLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/img13.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 40,
            left: 10,
            right: 10,
            bottom: 20,
          ),
          child: Container(
            child: Stack(
              children: [
                Positioned(
                  bottom: 10,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "TRAVEL TIME ",
                          style: TextStyle(
                            fontSize: 36,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "Get Ready To Travel with Us!",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        GestureDetector(
                          onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ),
                          ),
                          child: Container(
                            height: 45,
                            width: 290,
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.transparent,
                                border:
                                    Border.all(color: Colors.white, width: 1)),
                            alignment: Alignment.center,
                            child: Text(
                              "SIGN IN",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: () =>
                              Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SignupPage(),
                          )),
                          child: Container(
                            height: 45,
                            width: 290,
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.transparent,
                                border:
                                    Border.all(color: Colors.white, width: 1)),
                            alignment: Alignment.center,
                            child: Text(
                              "SIGN UP",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 45,
                          width: 290,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.transparent,
                            border: Border.all(
                              color: Colors.white,
                              width: 1,
                            ),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "CONTINUE WITH GOOGLE ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
