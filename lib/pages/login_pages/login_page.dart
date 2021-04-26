import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/config/config.dart';
import 'package:travel_app/home.dart';
import 'package:travel_app/pages/login_pages/signup_page.dart';
import 'package:travel_app/widget/toast_design.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailTextEditingController =
      TextEditingController();
  final TextEditingController _passwordTextEditingController =
      TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
                    top: 50,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "SIGN IN PAGE",
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
                                color: Colors.white,
                                fontWeight: FontWeight.w300),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Container(
                            width: 290,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.transparent,
                              border: Border.all(color: Colors.white, width: 1),
                            ),
                            child: Form(
                              child: Column(
                                children: [
                                  TextFormField(
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Email",
                                      hintStyle: TextStyle(color: Colors.white),
                                      contentPadding:
                                          EdgeInsets.symmetric(horizontal: 18),
                                    ),
                                    controller: _emailTextEditingController,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 290,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.transparent,
                              border: Border.all(color: Colors.white, width: 1),
                            ),
                            child: Form(
                              child: Column(children: [
                                TextFormField(
                                  style: TextStyle(color: Colors.white),
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Password",
                                    hintStyle: TextStyle(color: Colors.white),
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 18,
                                    ),
                                  ),
                                  controller: _passwordTextEditingController,
                                ),
                              ]),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height - 340,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Positioned(
                                  bottom: 0,
                                  child: Column(
                                    children: [
                                      GestureDetector(
                                        child: Container(
                                          height: 45,
                                          width: 290,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.rectangle,
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            color: Colors.transparent,
                                            border: Border.all(
                                                color: Colors.white, width: 1),
                                          ),
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
                                        onTap:()=> _emailTextEditingController
                                                    .text.isNotEmpty &&
                                                _passwordTextEditingController
                                                    .text.isNotEmpty
                                            ? loginUser()
                                            : ToastWidget().toastDesign(msg: "Fill the Email and Password!"),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Forgot Password",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w300),
                                      ),
                                      Text(
                                        "or",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w300),
                                      ),
                                      GestureDetector(
                                        onTap: () => Navigator.of(context)
                                            .pushReplacement(
                                                new MaterialPageRoute(
                                                    builder: (BuildContext
                                                            context) =>
                                                        SignupPage())),
                                        child: Text(
                                          "Create new Account",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w300),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      )
                                    ],
                                  ),
                                ),
                              ],
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
      ),
    );
  }

  Future loginUser() async {
    await TravelApp.auth
        .signInWithEmailAndPassword(
      email: _emailTextEditingController.text.trim(),
      password: _passwordTextEditingController.text.trim(),
    )
        .then((authUser) {
      TravelApp.user = authUser.user;
    }).catchError((onError) {
      ToastWidget().toastDesign(msg: onError.toString());
    });

    if (TravelApp.user != null) {
      readData(TravelApp.user).then(
        (value) => Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ),
            (route) => false),
      );
    }
  }

  Future readData(User user) async {
    TravelApp.firebaseFireStore
        .collection("Users")
        .doc(user.uid)
        .get()
        .then((value) async {
      print("******************************${value.data()}");
    });
  }
}
