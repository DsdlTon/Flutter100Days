import 'package:flutter/material.dart';
import 'package:flutter100day/day4/FadeAnimation.dart';

class Documentary extends StatefulWidget {
  @override
  _DocumentaryState createState() => _DocumentaryState();
}

class _DocumentaryState extends State<Documentary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                expandedHeight: 498.0,
                backgroundColor: Colors.black,
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/documentary1.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          colors: [
                            Colors.black,
                            Colors.black.withOpacity(0.3),
                          ],
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            FadeAnimation(
                              0.5,
                              Text(
                                'Steve Nash',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(height: 20.0),
                            Row(
                              children: <Widget>[
                                FadeAnimation(
                                  1.0,
                                  Text(
                                    '18 Seasons in NBA',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 40.0),
                                FadeAnimation(
                                  1.0,
                                  Text(
                                    'NBA Most Valuable Player',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          FadeAnimation(
                            1.5,
                            Text(
                              "Stephen John Nash OC OBC (born 7 February 1974) is a Canadian former professional basketball player who played 18 seasons in the National Basketball Association (NBA). He was an eight-time NBA All-Star and a seven-time All-NBA selection. Twice, Nash was named the NBA Most Valuable Player while playing for the Phoenix Suns. He currently serves as senior advisor of the Canadian men's national team and as a player development consultant for the Golden State Warriors.",
                              style: TextStyle(color: Colors.grey, height: 1.4),
                            ),
                          ),
                          SizedBox(height: 40.0),
                          FadeAnimation(
                            1.7,
                            Text(
                              'Born',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          FadeAnimation(
                            1.7,
                            Text(
                              "7 February 1974",
                              style: TextStyle(color: Colors.grey, height: 1.4),
                            ),
                          ),
                          SizedBox(height: 20.0),
                          FadeAnimation(
                            1.7,
                            Text(
                              'Nationality',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          FadeAnimation(
                            1.7,
                            Text(
                              "Canadian",
                              style: TextStyle(color: Colors.grey, height: 1.4),
                            ),
                          ),
                          SizedBox(height: 20.0),
                          FadeAnimation(
                            1.7,
                            Text(
                              'Video',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          FadeAnimation(
                            2.0,
                            Container(
                              height: 200,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  videoCard('assets/images/documentary5.jpg'),
                                  videoCard('assets/images/documentary2.jpg'),
                                  videoCard('assets/images/documentary3.jpg'),
                                  videoCard('assets/images/documentary4.jpg'),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 80.0),
                  ],
                ),
              ),
            ],
          ),
          Positioned.fill(
            bottom: 30.0,
            child: Container(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: FadeAnimation(
                  2.5,
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30.0),
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: Colors.yellow[700],
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Align(
                      child: Text(
                        'FOLLOW',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget videoCard(image) {
    return AspectRatio(
      aspectRatio: 1.2 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 20.0, top: 10.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(0.9),
                Colors.black.withOpacity(0.2),
              ],
            ),
          ),
          child: Align(
            child: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 70.0,
            ),
          ),
        ),
      ),
    );
  }
}
