import 'package:belajar/sceen/home_page.dart';
import 'package:belajar/sceen/http_page.dart';
import 'package:belajar/sceen/latihan_bloc.dart';
import 'package:belajar/sceen/sign_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(MaterialApp(
      theme: ThemeData(),
      // theme: ThemeData.dark(),

      home: const MyApp()));
}

//http,
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.green,
          appBarTheme: AppBarTheme(color: Colors.grey[50]),
          textTheme: GoogleFonts.latoTextTheme(),
          scaffoldBackgroundColor: Colors.grey[50],
          buttonColor: Colors.green[900],
          accentColor: Colors.green[900],
          primaryColor: Colors.green[900],
          dividerColor: Colors.green[900]),
      title: 'Pandemic Activity',
      debugShowCheckedModeBanner: false,
      home: HttpPage(),
    );
  }
}
