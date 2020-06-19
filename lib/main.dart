import 'package:flutter/material.dart';
import 'package:flutter100day/day10/day10.dart';
import 'package:flutter100day/day11/day11.dart';
import 'package:flutter100day/day12/day12.dart';
import 'package:flutter100day/day13/day13.dart';
import 'package:flutter100day/day14/day14.dart';
import 'package:flutter100day/day15/day15.dart';
import 'package:flutter100day/day16/day16.dart';
import 'package:flutter100day/day18/day18.dart';
import 'package:flutter100day/day19/day19.dart';
import 'package:flutter100day/day8/day8.dart';
import 'package:flutter100day/day9/day9.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter100day/home.dart';

import 'package:flutter100day/day1/day1.dart';
import 'package:flutter100day/day2/day2.dart';
import 'package:flutter100day/day3/day3.dart';
import 'package:flutter100day/day4/day4.dart';
import 'package:flutter100day/day5/day5.dart';
import 'package:flutter100day/day6/day6.dart';
import 'package:flutter100day/day7/day7.dart';

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
        '/7': (BuildContext context) => AnimationButton(),
        '/8': (BuildContext context) => SplashScreen(),
        '/9': (BuildContext context) => PartyApplication(),
        '/10': (BuildContext context) => FurnitureShop(),
        '/11': (BuildContext context) => TravelApplication(),
        '/12': (BuildContext context) => LoginUI(),
        '/13': (BuildContext context) => LoginUI2(),
        '/14': (BuildContext context) => LoginUI3(),
        '/15': (BuildContext context) => ShoeShop(),
        '/16': (BuildContext context) => ECommerceApplication(),
        '/18': (BuildContext context) => CarouselUI(),
        '/19': (BuildContext context) => FacebookUI(),
        // '/c': (BuildContext context) => ,
      },
    );
  }
}
