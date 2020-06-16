import 'package:flutter/material.dart';
import 'package:flutter100day/day11/FadeAnimation.dart';

class TravelApplication extends StatefulWidget {
  @override
  _TravelApplicationState createState() => _TravelApplicationState();
}

class _TravelApplicationState extends State<TravelApplication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 300.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/travel1.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      colors: [
                        Colors.black.withOpacity(0.4),
                        Colors.black.withOpacity(0.1),
                      ],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(20.0, 80.0, 20.0, 20.0),
                        child: Text(
                          'What you would like to find?',
                          style: TextStyle(
                            fontSize: 35.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 30.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: Colors.white,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search, color: Colors.grey),
                            border: InputBorder.none,
                            hintText: 'Search',
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.fromLTRB(30.0, 20.0, 20.0, 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FadeAnimation(
                      0.5,
                      Text(
                        'Best Destination',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    FadeAnimation(
                      1.0,
                      Container(
                        height: 200.0,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            ItemCard(
                                image: 'assets/images/travel6.jpg',
                                title: 'Sweden'),
                            ItemCard(
                                image: 'assets/images/travel2.jpg',
                                title: 'Singapore'),
                            ItemCard(
                                image: 'assets/images/travel3.jpg',
                                title: 'Norway'),
                            ItemCard(
                                image: 'assets/images/travel4.jpg',
                                title: 'Thailand'),
                            ItemCard(
                                image: 'assets/images/travel5.jpg',
                                title: 'America'),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    FadeAnimation(
                      1.5,
                      Text(
                        'Best Hotel',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    FadeAnimation(
                      2.0,
                      Container(
                        height: 200.0,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            ItemCard(
                                image: 'assets/images/travel6.jpg',
                                title: 'Sweden'),
                            ItemCard(
                                image: 'assets/images/travel2.jpg',
                                title: 'Singapore'),
                            ItemCard(
                                image: 'assets/images/travel3.jpg',
                                title: 'Norway'),
                            ItemCard(
                                image: 'assets/images/travel4.jpg',
                                title: 'Thailand'),
                            ItemCard(
                                image: 'assets/images/travel5.jpg',
                                title: 'America'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget ItemCard({image, title}) {
  return AspectRatio(
    aspectRatio: 1 / 1,
    child: Padding(
      padding: EdgeInsets.only(right: 15.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
            image: AssetImage(
              image,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(0.2),
                Colors.black.withOpacity(0.1),
              ],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
