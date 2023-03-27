import 'package:flutter/material.dart';
import 'package:puskesmas_nganjuk2/others/pcolor.dart';
import 'package:puskesmas_nganjuk2/pages/forgotpassword.dart';
import 'package:puskesmas_nganjuk2/pages/home.dart';
import 'package:puskesmas_nganjuk2/pages/login.dart';
import 'package:puskesmas_nganjuk2/pages/register.dart';
import 'package:puskesmas_nganjuk2/pages/splashscreen.dart';
import 'package:puskesmas_nganjuk2/pages/verification.dart';

// void main() {
//   runApp(const MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Color(0xfff1f1f1),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: "nunito",
          primaryColor: Color(0xff3FBBC0),
          primarySwatch: Palette.pcolor,
          buttonTheme: ButtonThemeData(buttonColor: Colors.amber)),
      home: Splashscreen(),
      routes: {
        '/splashscreen': (context) => Splashscreen(),
        '/login': (context) => Login(),
        '/home': (context) => HomePage(),
        '/register': (context) => Register(),
        '/forgotpw': (context) => ForgotPassword(),
        '/verif': (context) => Verification(),
      },
    );
  }
}
