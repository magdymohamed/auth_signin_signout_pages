import 'package:auth_signin_signout_pages/Signin.dart';
import 'package:auth_signin_signout_pages/conestant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: primarycolor,
    systemNavigationBarColor: primarycolor,
  ));
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Signin(),
  ));
}
