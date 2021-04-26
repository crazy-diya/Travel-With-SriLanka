import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TravelApp{
  static const String appName = "travel_app";

  static SharedPreferences sharedPreferences;
  static FirebaseFirestore firebaseFireStore;
  static FirebaseAuth auth;
  static User user;


  static final String usersCollectionName = 'Users';
  static final String userName = 'userName';
  static final String email = 'email';
  static final String userUID = 'uid';
  static final String userImageUrl = 'userImageUrl';


}