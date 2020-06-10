import 'package:flutter/material.dart';
import 'package:flutter100day/day2/FadeAnimation.dart';

class TravelGuide extends StatefulWidget {
  @override
  _TravelGuideState createState() => _TravelGuideState();
}

class _TravelGuideState extends State<TravelGuide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: <Widget>[
          Page(
            image: './assets/images/inspiration4.jpg',
            title: 'Norway',
            description:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
            page: 1,
            rate: 4.0,
          ),
          Page(
            image: './assets/images/inspiration5.jpg',
            title: 'Thai',
            description:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
            page: 2,
            rate: 5.0,
          ),
          Page(
            image: './assets/images/inspiration6.jpg',
            title: 'USA',
            description:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
            page: 3,
            rate: 3.0,
          ),
          Page(
            image: './assets/images/inspiration7.jpg',
            title: 'Canada',
            description:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
            page: 4,
            rate: 2.0,
          ),
        ],
      ),
    );
  }
}

Widget Page({image, title, description, page, rate}) {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(image),
        fit: BoxFit.cover,
      ),
    ),
    child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          stops: [0.1, 0.9],
          colors: [
            Colors.black.withOpacity(0.8),
            Colors.black.withOpacity(0.2),
          ],
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            // SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: <Widget>[
                  Text(
                    page.toString(),
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '/4',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeAnimation(
                    1.0,
                    Text(
                      title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  FadeAnimation(
                    1.5,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 5.0),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 5.0),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 5.0),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 5.0),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 5.0),
                          child: Icon(
                            Icons.star,
                            color: Colors.grey,
                            size: 15.0,
                          ),
                        ),
                        Text(
                          rate.toString(),
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 15.0,
                          ),
                        ),
                        SizedBox(width: 4.0),
                        Text(
                          '(2300)',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.white38,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  FadeAnimation(
                    2.0,
                    Container(
                      padding: EdgeInsets.only(right: 50.0),
                      child: Text(
                        description,
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          height: 1.9,
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  FadeAnimation(
                    2.5,
                    Text(
                      'READ MORE',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}
