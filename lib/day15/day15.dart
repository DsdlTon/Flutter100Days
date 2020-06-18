import 'package:flutter/material.dart';
import 'package:flutter100day/day15/FadeAnimation.dart';
import 'package:flutter100day/day15/shoe.dart';

class ShoeShop extends StatefulWidget {
  @override
  _ShoeShopState createState() => _ShoeShopState();
}

class _ShoeShopState extends State<ShoeShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        leading: null,
        title: Text(
          'Shoes',
          style: TextStyle(
            fontSize: 25.0,
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_none, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              FadeAnimation(
                1.2,
                Container(
                  height: 40,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      AspectRatio(
                        aspectRatio: 2.2 / 1,
                        child: Container(
                          margin: EdgeInsets.only(right: 5.0),
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Center(
                            child: Text(
                              'All',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 17.0),
                            ),
                          ),
                        ),
                      ),
                      AspectRatio(
                        aspectRatio: 2.2 / 1,
                        child: Container(
                          margin: EdgeInsets.only(right: 5.0),
                          child: Center(
                            child: Text(
                              'Sneakers',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 15.0),
                            ),
                          ),
                        ),
                      ),
                      AspectRatio(
                        aspectRatio: 2.2 / 1,
                        child: Container(
                          margin: EdgeInsets.only(right: 5.0),
                          child: Center(
                            child: Text(
                              'Football',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 15.0),
                            ),
                          ),
                        ),
                      ),
                      AspectRatio(
                        aspectRatio: 2.2 / 1,
                        child: Container(
                          margin: EdgeInsets.only(right: 5.0),
                          child: Center(
                            child: Text(
                              'Soccer',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 15.0),
                            ),
                          ),
                        ),
                      ),
                      AspectRatio(
                        aspectRatio: 2.2 / 1,
                        child: Container(
                          margin: EdgeInsets.only(right: 5.0),
                          child: Center(
                            child: Text(
                              'Basketball',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 15.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              FadeAnimation(
                  1.5,
                  makeItem(
                      image: 'assets/images/shoe1.png',
                      color: Colors.blue,
                      tag: 'blue',
                      context: context)),
              FadeAnimation(
                  1.6,
                  makeItem(
                      image: 'assets/images/shoe2.jpg',
                      color: Colors.white,
                      tag: 'white',
                      context: context)),
              FadeAnimation(
                  1.7,
                  makeItem(
                      image: 'assets/images/shoe3.jpg',
                      color: Colors.yellow,
                      tag: 'yellow',
                      context: context)),
            ],
          ),
        ),
      ),
    );
  }
}

Widget makeItem({image, color, tag, context}) {
  return Hero(
    tag: tag,
    child: GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Shoes(
              image: image,
              color: color,
              tag: tag,
            ),
          ),
        );
      },
      child: Container(
        height: 250,
        width: double.infinity,
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[400],
              blurRadius: 10,
              offset: Offset(0, 10),
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      FadeAnimation(
                        1,
                        Text(
                          "Sneakers",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      FadeAnimation(
                        1.1,
                        Text(
                          "Nike",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
                FadeAnimation(
                  1.2,
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: Center(
                      child: Icon(
                        Icons.favorite_border,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            FadeAnimation(
              1.2,
              Text(
                "100\$",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
