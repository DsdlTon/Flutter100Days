import 'package:flutter/material.dart';
import 'package:flutter100day/day5/day5.dart';
import 'package:flutter100day/day6/day6.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter100day/home.dart';

import 'package:flutter100day/day1/day1.dart';
import 'package:flutter100day/day2/day2.dart';
import 'package:flutter100day/day3/day3.dart';
import 'package:flutter100day/day4/day4.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => HomePage(),
        '/1': (BuildContext context) => FindYourInspiration(),
        '/2': (BuildContext context) => TravelGuide(),
        '/3': (BuildContext context) => StarterPage(),
        '/4': (BuildContext context) => Documentary(),
        '/5': (BuildContext context) => MapApplication(),
        '/6': (BuildContext context) => ExerciseApp(),
        // '/c': (BuildContext context) => ,
      },
    );
  }
}
