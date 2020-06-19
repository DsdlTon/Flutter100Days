import 'package:flutter/material.dart';
import 'package:flutter100day/day20/FadeAnimation.dart';
import 'package:flutter100day/day20/viewSock.dart';
import 'package:page_transition/page_transition.dart';

class SockShopApplication extends StatefulWidget {
  @override
  _SockShopApplicationState createState() => _SockShopApplicationState();
}

class _SockShopApplicationState extends State<SockShopApplication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            FadeAnimation(
              1.0,
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
                width: double.infinity,
                // height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50.0),
                    bottomLeft: Radius.circular(50.0),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.yellowAccent,
                      Colors.yellowAccent.withOpacity(0.4),
                    ],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FadeAnimation(
                      1.3,
                      Icon(Icons.menu, color: Colors.grey[700], size: 30.0),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          flex: 4,
                          child: FadeAnimation(
                            1.6,
                            Text(
                              'Best Online \nSocks Collection',
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: FadeAnimation(
                            1.9,
                            Image.asset('assets/images/sock1.png'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(0, -40),
              child: FadeAnimation(
                2.2,
                Container(
                  height: 60.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.0),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 20.0,
                        color: Colors.grey[350],
                        offset: Offset(0.0, 10.0),
                      ),
                    ],
                  ),
                  padding: EdgeInsets.only(left: 25.0, top: 8.0),
                  margin: EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      suffixIcon:
                          Icon(Icons.search, color: Colors.black, size: 20.0),
                      hintText: 'Search',
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              width: double.infinity,
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      FadeAnimation(
                        2.5,
                        Text(
                          'Choose \na catagory',
                          style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(width: 30.0),
                      FadeAnimation(
                        2.8,
                        Container(
                          height: 40.0,
                          width: 90.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Colors.red[100],
                          ),
                          child: Center(
                            child: Text(
                              'Adult',
                              style: TextStyle(
                                color: Colors.red[400],
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0),
                      FadeAnimation(
                        2.8,
                        Container(
                          height: 40.0,
                          width: 90.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Colors.grey[200],
                          ),
                          child: Center(
                            child: Text(
                              'Children',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30.0),
                  Container(
                    height: 220,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        FadeAnimation(
                          3.1,
                          itemCard(
                            context: context,
                            startColor: Color.fromRGBO(251, 121, 155, 1),
                            endColor: Color.fromRGBO(251, 53, 105, 1),
                            image: 'assets/images/sock5.png',
                          ),
                        ),
                        FadeAnimation(
                          3.4,
                          itemCard(
                            context: context,
                            startColor: Color.fromRGBO(203, 251, 255, 1),
                            endColor: Color.fromRGBO(81, 223, 234, 1),
                            image: 'assets/images/sock6.png',
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget itemCard({context, startColor, endColor, image}) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context,
          PageTransition(type: PageTransitionType.fade, child: ViewSock()));
    },
    child: AspectRatio(
      aspectRatio: 4.4 / 5,
      child: Container(
        margin: EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 20.0),
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13.0),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            colors: [
              startColor,
              endColor,
            ],
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 10.0,
              color: Colors.grey[350],
              offset: Offset(5.0, 10.0),
            ),
          ],
        ),
        child: Container(
          margin: EdgeInsets.all(30.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
            ),
          ),
        ),
      ),
    ),
  );
}
