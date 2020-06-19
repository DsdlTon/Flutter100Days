import 'package:flutter/material.dart';
import 'package:flutter100day/day18/FadeAnimation.dart';

class CarouselUI extends StatefulWidget {
  @override
  _CarouselUIState createState() => _CarouselUIState();
}

class _CarouselUIState extends State<CarouselUI> {
  final List<List<String>> products = [
    [
      'assets/images/watch1.jpg',
      'Hugo Boss Oxygen',
      '\$ 100',
    ],
    [
      'assets/images/watch2.jpg',
      'Hugo Boss Signature',
      '\$ 120',
    ],
    [
      'assets/images/watch3.jpg',
      'Casio G-Shock Premium',
      '\$ 80',
    ],
  ];

  int currentIndex = 0;

  void _next() {
    setState(() {
      if (currentIndex < products.length - 1) {
        currentIndex++;
      } else {
        currentIndex = currentIndex;
      }
    });
  }

  void _preve() {
    setState(() {
      if (currentIndex > 0) {
        currentIndex--;
      } else {
        currentIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            GestureDetector(
              onHorizontalDragEnd: (DragEndDetails details) {
                if (details.velocity.pixelsPerSecond.dx > 0) {
                  _preve();
                } else if (details.velocity.pixelsPerSecond.dx < 0) {
                  _next();
                }
              },
              child: Container(
                height: 500.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(products[currentIndex][0]),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      colors: [
                        Colors.grey[400].withOpacity(0.9),
                        Colors.grey[400].withOpacity(0.3),
                        Colors.white.withOpacity(0.1),
                      ],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 130.0, vertical: 20.0),
                        height: 90.0,
                        child: Row(children: _buildIndicator()),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Transform.translate(
                offset: Offset(0, -42),
                child: Container(
                  padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 0.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                      topRight: Radius.circular(50.0),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      FadeAnimation(
                        1.0,
                        Text(
                          products[currentIndex][1],
                          style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 40.0,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                            letterSpacing: -2,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      FadeAnimation(
                        1.2,
                        Row(
                          children: <Widget>[
                            Text(
                              products[currentIndex][2],
                              style: TextStyle(
                                color: Colors.yellow[700],
                                fontSize: 14.0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            SizedBox(width: 10.0),
                            Icon(
                              Icons.star,
                              color: Colors.yellow[700],
                              size: 17.0,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow[700],
                              size: 17.0,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow[700],
                              size: 17.0,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow[700],
                              size: 17.0,
                            ),
                            Icon(
                              Icons.star_half,
                              color: Colors.yellow[700],
                              size: 17.0,
                            ),
                            SizedBox(width: 5.0),
                            Text(
                              '(4.2/70 review)',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.0),
                      FadeAnimation(
                        1.4,
                        Container(
                          height: 50.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.yellow[700],
                          ),
                          child: Center(
                            child: Text(
                              'ADD TO CART',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 11.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _indicator(bool isActive) {
    return Expanded(
      child: Container(
        height: 4.0,
        margin: EdgeInsets.only(right: 5.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          color: isActive == true ? Colors.grey[800] : Colors.white,
        ),
      ),
    );
  }

  List<Widget> _buildIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < products.length; i++) {
      if (i == currentIndex) {
        indicators.add(_indicator(true));
      } else {
        indicators.add(_indicator(false));
      }
    }
    return indicators;
  }
}
