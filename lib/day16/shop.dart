import 'package:flutter/material.dart';
import 'package:flutter100day/day16/FadeAnimation.dart';

class ShopPage extends StatefulWidget {
  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.60,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/shopping2.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(0.5),
                      Colors.black.withOpacity(0.1),
                    ],
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 40.0, left: 20.0, bottom: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      FadeAnimation(
                        0.8,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.favorite, color: Colors.white),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Icon(Icons.shopping_cart,
                                  color: Colors.white),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          FadeAnimation(
                            1.0,
                            Text(
                              'Our New Products',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 10.0),
                          FadeAnimation(
                            1.2,
                            Row(
                              children: <Widget>[
                                Text(
                                  'VIEW MORE',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 5.0),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                  size: 15.0,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              width: double.infinity,
              child: Column(
                children: <Widget>[
                  FadeAnimation(
                    1.4,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Categories',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'All',
                          style: TextStyle(
                            color: Colors.grey[800],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15.0),
                  FadeAnimation(
                    1.6,
                    Container(
                      height: 150.0,
                      width: double.infinity,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          itemCard(
                              image: 'assets/images/shopping3.jpg',
                              title: 'Beauty'),
                          itemCard(
                              image: 'assets/images/shopping4.jpg',
                              title: 'Cloth'),
                          itemCard(
                              image: 'assets/images/shopping5.jpg',
                              title: 'Glasses'),
                          itemCard(
                              image: 'assets/images/shopping6.jpg',
                              title: 'Tech'),
                          itemCard(
                              image: 'assets/images/shopping7.jpg',
                              title: 'Watch'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
              width: double.infinity,
              child: Column(
                children: <Widget>[
                  FadeAnimation(
                    1.8,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Best Salling oby Category',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'All',
                          style: TextStyle(
                            color: Colors.grey[800],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15.0),
                  FadeAnimation(
                    2.0,
                    Container(
                      height: 150.0,
                      width: double.infinity,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          itemCard2(
                              image: 'assets/images/shopping6.jpg',
                              title: 'Tech'),
                          itemCard2(
                              image: 'assets/images/shopping7.jpg',
                              title: 'Watch'),
                          itemCard2(
                              image: 'assets/images/shopping4.jpg',
                              title: 'Cloth'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget itemCard({image, title}) {
  return AspectRatio(
    aspectRatio: 2 / 2.5,
    child: Container(
      margin: EdgeInsets.only(right: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(0.4),
              Colors.black.withOpacity(0.1),
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

Widget itemCard2({image, title}) {
  return AspectRatio(
    aspectRatio: 3 / 2.2,
    child: Container(
      margin: EdgeInsets.only(right: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(0.4),
              Colors.black.withOpacity(0.1),
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
