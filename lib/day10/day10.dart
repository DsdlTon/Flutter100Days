import 'package:flutter/material.dart';

class FurnitureShop extends StatefulWidget {
  @override
  _FurnitureShopState createState() => _FurnitureShopState();
}

class _FurnitureShopState extends State<FurnitureShop> {
  final List<String> _listItem = [
    'assets/images/furniture1.jpg',
    'assets/images/furniture2.jpg',
    'assets/images/furniture3.jpg',
    'assets/images/furniture4.jpg',
    'assets/images/furniture5.jpg',
    'assets/images/furniture6.jpg',
    'assets/images/furniture1.jpg',
    'assets/images/furniture2.jpg',
    'assets/images/furniture3.jpg',
    'assets/images/furniture4.jpg',
    'assets/images/furniture5.jpg',
    'assets/images/furniture6.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        brightness: Brightness.light,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu, color: Colors.white),
        centerTitle: true,
        title: Text(
          'Home',
          style: TextStyle(color: Colors.white, fontSize: 23.0),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.black38,
              ),
              child: Center(
                child: Text(
                  '0',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget>[
              Container(
                height: 250.0,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                    image: AssetImage('assets/images/furniture7.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    gradient:
                        LinearGradient(begin: Alignment.bottomRight, colors: [
                      Colors.black.withOpacity(0.4),
                      Colors.black.withOpacity(0.2),
                    ]),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'LifeStyle Sale',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 30.0),
                      Container(
                        height: 50.0,
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 40.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Center(
                          child: Text(
                            'Shop Now',
                            style: TextStyle(
                              color: Colors.grey[900],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30.0),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: _listItem
                      .map(
                        (item) => Card(
                          elevation: 0,
                          color: Colors.transparent,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              image: DecorationImage(
                                image: AssetImage(item),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Transform.translate(
                              offset: Offset(60, -60),
                              child: Container(
                                margin: EdgeInsets.all(70.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.white),
                                child: Icon(
                                  Icons.bookmark_border,
                                  size: 20.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
