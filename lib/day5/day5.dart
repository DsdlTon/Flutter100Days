import 'package:animator/animator.dart';
import 'package:flutter/material.dart';

class MapApplication extends StatefulWidget {
  @override
  _MapApplicationState createState() => _MapApplicationState();
}

class _MapApplicationState extends State<MapApplication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/map1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0.9),
                    Colors.black.withOpacity(0.3),
                  ],
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      height: 250.0,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          locationCard(
                              image: 'assets/images/map2.jpg',
                              range: '2.1',
                              title: 'The Taj Mahal, Agra'),
                          locationCard(
                              image: 'assets/images/map3.jpg',
                              range: '1.8',
                              title: 'The Red Fort, New Delhi'),
                          locationCard(
                              image: 'assets/images/map4.jpg',
                              range: '15.2',
                              title: 'The Beaches of Goa'),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.0),
                  ],
                ),
              ),
            ),
          ),
          marker(top: 310.0, left: 50.0),
          marker(top: 210.0, left: 220.0),
          marker(top: 280.0, left: 350.0),
        ],
      ),
    );
  }

  Widget marker({top, left}) {
    return Positioned(
      top: top,
      left: left,
      child: Container(
        width: 20.0,
        height: 20.0,
        decoration: BoxDecoration(
          color: Colors.blue.withOpacity(0.3),
          shape: BoxShape.circle,
        ),
        child: Animator<double>(
          duration: Duration(seconds: 1),
          tween: Tween<double>(begin: 4.0, end: 6.0),
          cycles: 0,
          builder: (anim) => Center(
            child: Container(
              margin: EdgeInsets.all(anim.value),
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget locationCard({image, range, title}) {
    return AspectRatio(
      aspectRatio: 1.7 / 2,
      child: Container(
        margin: EdgeInsets.only(right: 20.0),
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 60.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(image),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20.0)),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Text(
                    '$range mi',
                    style: TextStyle(
                      color: Colors.grey[500],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Text(
              title,
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Align(
              alignment: Alignment.bottomRight,
              child:
                  Icon(Icons.star_border, color: Colors.yellow[700], size: 30),
            )
          ],
        ),
      ),
    );
  }
}
