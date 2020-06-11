import 'package:flutter/material.dart';
import 'package:flutter100day/day3/FadeAnimation.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        leading: Icon(null),
        elevation: 0,
        brightness: Brightness.light,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_basket),
            onPressed: () {},
            color: Colors.black,
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeAnimation(
                    1.0,
                    Text(
                      'Food Delivery',
                      style: TextStyle(
                        color: Colors.grey[80],
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    height: 50.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        FadeAnimation(
                            1.2, makeCatagory(isActive: true, title: 'Salmon')),
                        FadeAnimation(1.4,
                            makeCatagory(isActive: false, title: 'Burger')),
                        FadeAnimation(
                            1.6, makeCatagory(isActive: false, title: 'Kebab')),
                        FadeAnimation(1.8,
                            makeCatagory(isActive: false, title: 'Noodle')),
                        FadeAnimation(2.0,
                            makeCatagory(isActive: false, title: 'Dessert')),
                      ],
                    ),
                  ),
                  SizedBox(height: 30.0),
                  FadeAnimation(
                    2.5,
                    Text(
                      'Free Delivery',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: FadeAnimation(
                        3.0,
                        ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            foodCard(
                                image: 'assets/images/food1.jpg',
                                price: '15',
                                title: 'Pancake'),
                            foodCard(
                                image: 'assets/images/food2.jpg',
                                price: '10',
                                title: 'Pizza'),
                            foodCard(
                                image: 'assets/images/food4.jpg',
                                price: '5',
                                title: 'Noodle'),
                            foodCard(
                                image: 'assets/images/food5.jpg',
                                price: '20',
                                title: 'Salmon'),
                          ],
                        ),
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

  Widget foodCard({image, price, title}) {
    return AspectRatio(
      aspectRatio: 1 / 1.4,
      child: GestureDetector(
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                stops: [0.2, 0.9],
                colors: [
                  Colors.black.withOpacity(0.8),
                  Colors.black.withOpacity(0.1),
                ],
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '\$ $price',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
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
    );
  }

  Widget makeCatagory({isActive, title}) {
    return AspectRatio(
      aspectRatio: isActive ? 3 : 2.5 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 15.0),
        decoration: BoxDecoration(
          color: isActive ? Colors.yellow[600] : Colors.white,
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: Align(
          child: Text(
            title,
            style: TextStyle(
              color: isActive ? Colors.white : Colors.grey[400],
              fontSize: 18.0,
              fontWeight: isActive ? FontWeight.bold : FontWeight.w100,
            ),
          ),
        ),
      ),
    );
  }
}
