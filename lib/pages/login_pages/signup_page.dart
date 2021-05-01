import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:travel_app/config/config.dart';
import 'package:travel_app/home.dart';
import 'package:travel_app/pages/login_pages/login_page.dart';
import 'package:travel_app/widget/toast_design.dart';
import 'package:firebase_storage/firebase_storage.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController _userNameTextEditingController =
      TextEditingController();
  final TextEditingController _emailTextEditingController =
      TextEditingController();
  final TextEditingController _passwordTextEditingController =
      TextEditingController();
  final TextEditingController _rePasswordTextEditingController =
      TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String userImageUrl;
  File _imageFile;

  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery.of(context).size.width,
        _screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: _screenHeight,
          width: _screenWidth,
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
                            "SIGN UP PAGE",
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
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: selectAndPickImage,
                            child: CircleAvatar(
                              radius: _screenWidth * 0.10,
                              backgroundColor: Colors.transparent,
                              backgroundImage: _imageFile == null
                                  ? null
                                  : FileImage(_imageFile),
                              child: _imageFile == null
                                  ? Icon(
                                      Icons.add_a_photo_outlined,
                                      size: _screenWidth * 0.1,
                                      color: Colors.grey,
                                    )
                                  : null,
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
                              key: _formKey,
                              child: Column(
                                children: [
                                  TextFormField(
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Name",
                                      hintStyle: TextStyle(color: Colors.white),
                                      contentPadding:
                                          EdgeInsets.symmetric(horizontal: 18),
                                    ),
                                    controller: _userNameTextEditingController,
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
                              child: Column(
                                children: [
                                  TextFormField(
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Email",
                                      hintStyle: TextStyle(color: Colors.white),
                                      contentPadding: EdgeInsets.symmetric(
                                        horizontal: 18,
                                      ),
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
                                    hintText: "Confirm-Password",
                                    hintStyle: TextStyle(color: Colors.white),
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 18,
                                    ),
                                  ),
                                  controller: _rePasswordTextEditingController,
                                ),
                              ]),
                            ),
                          ),
                         /* Container(
                            width: MediaQuery.of(context).size.width,
                            color: Colors.red,
                            height: 100,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Positioned(
                                  bottom: 0,
                                  child: Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          uploadAndSaveImage();
                                        },
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
                                      GestureDetector(
                                        onTap: () => Navigator.of(context)
                                            .pushReplacement(
                                                new MaterialPageRoute(
                                                    builder: (BuildContext
                                                            context) =>
                                                        LoginPage())),
                                        child: Text(
                                          "Already have an Account",
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
                          ),*/
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    child:  Container(
                      width: MediaQuery.of(context).size.width,
                      //color: Colors.red,
                      height: 90,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            bottom: 0,
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    uploadAndSaveImage();
                                  },
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
                                GestureDetector(
                                  onTap: () => Navigator.of(context)
                                      .pushReplacement(
                                      new MaterialPageRoute(
                                          builder: (BuildContext
                                          context) =>
                                              LoginPage())),
                                  child: Text(
                                    "Already have an Account",
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
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future selectAndPickImage() async {
    final pickedFile =
        await ImagePicker().getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _imageFile = File(pickedFile.path);
      } else {
        print("No Image Selected!");
      }
    });
  }

  Future uploadAndSaveImage() async {
    if (_imageFile != null) {
      if (_passwordTextEditingController.text.isNotEmpty &&
          _rePasswordTextEditingController.text.isNotEmpty &&
          _userNameTextEditingController.text.isNotEmpty &&
          _emailTextEditingController.text.isNotEmpty) {
        if (_passwordTextEditingController.text ==
            _rePasswordTextEditingController.text) {
          uploadToStorage();
        } else {
          ToastWidget().toastDesign(msg: "Password Does Not Match!");
        }
      } else {
        ToastWidget().toastDesign(msg: "Please Fill all the Field!");
      }
    } else {
      ToastWidget().toastDesign(msg: "Please Select an Image file!");
    }
  }

  Future uploadToStorage() async {
    if (_imageFile != null) {
      String imageFileName = DateTime.now().millisecondsSinceEpoch.toString();
      UploadTask uploadTask = FirebaseStorage.instance
          .ref("usersImage")
          .child(imageFileName)
          .putFile(_imageFile);
      TaskSnapshot snapshot = await uploadTask;
      //userImageUrl =await snapshot.ref.getDownloadURL();

      await snapshot.ref.getDownloadURL().then((value) {
        print("first print this");
        userImageUrl = value;
        _registerUser();
      });

      print("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&$userImageUrl");
    }
  }

  void _registerUser() async {
    User user;
    await TravelApp.auth
        .createUserWithEmailAndPassword(
            email: _emailTextEditingController.text.trim(),
            password: _passwordTextEditingController.text.trim())
        .then((auth) => {
              user = auth.user,
            })
        .catchError((onError) {
      ToastWidget().toastDesign(msg: onError.toString());
    });

    if (user != null) {
      saveUserInfoToFireStore(user).then(
        (value) {
          ToastWidget().toastDesign(msg: "Successfully Created Account!");
          Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => HomePage(),), (route) => false);
        });
    }
  }

  Future saveUserInfoToFireStore(User user) async {
    TravelApp.firebaseFireStore.collection("Users").doc(user.uid).set({
      "uid": user.uid,
      "email": user.email,
      "userName": _userNameTextEditingController.text.trim(),
      "userImageUrl": userImageUrl
    }).then((value) async {
      await TravelApp.sharedPreferences.setString(TravelApp.userUID, user.uid);
      await TravelApp.sharedPreferences.setString(TravelApp.email, user.email);
      await TravelApp.sharedPreferences.setString(TravelApp.userName, _userNameTextEditingController.text.trim());
      await TravelApp.sharedPreferences.setString(TravelApp.userImageUrl, userImageUrl);
    }).onError(
      (error, stackTrace) => ToastWidget()
          .toastDesign(msg: "${error.toString()} Did not Create Correctly!"),
    );
  }
}
