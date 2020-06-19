import 'package:flutter/material.dart';
import 'package:flutter100day/day16/FadeAnimation.dart';

class CatagoryPage extends StatefulWidget {
  final String title;
  final String image;
  final String tag;

  const CatagoryPage({Key key, this.title, this.image, this.tag})
      : super(key: key);

  @override
  _CatagoryPageState createState() => _CatagoryPageState();
}

class _CatagoryPageState extends State<CatagoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Hero(
              tag: widget.tag,
              child: Material(
                child: Container(
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(widget.image),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        colors: [
                          Colors.black.withOpacity(0.8),
                          Colors.black.withOpacity(0.1),
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          FadeAnimation(
                            1.0,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(Icons.arrow_back_ios,
                                      color: Colors.white),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    IconButton(
                                      icon: Icon(Icons.search,
                                          color: Colors.white),
                                      onPressed: () {},
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.favorite,
                                          color: Colors.white),
                                      onPressed: () {},
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.shopping_cart,
                                          color: Colors.white),
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          FadeAnimation(
                            1.2,
                            Container(
                              height: 150.0,
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  widget.title,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 40.0,
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
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      FadeAnimation(
                        1.4,
                        Text(
                          'New Product',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      FadeAnimation(
                        1.6,
                        Row(
                          children: <Widget>[
                            Text(
                              'View more',
                              style: TextStyle(
                                color: Colors.grey[500],
                              ),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.grey[500],
                              size: 12.0,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  FadeAnimation(1.8, makeItem(title: 'Beauty', price: '100'),),
                  FadeAnimation(2.0, makeItem(title: 'Beauty', price: '100'),),
                  FadeAnimation(2.2, makeItem(title: 'Beauty', price: '100'),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget makeItem({title, price}) {
  return Container(
    margin: EdgeInsets.only(bottom: 20.0),
    height: 180.0,
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      image: DecorationImage(
        image: AssetImage('assets/images/shopping3.jpg'),
        fit: BoxFit.cover,
      ),
    ),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          colors: [
            Colors.black.withOpacity(0.7),
            Colors.black.withOpacity(0.0),
          ],
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
                SizedBox(height: 5.0),
                Text(
                  '\$' + price,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            Container(
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Icon(
                Icons.add_shopping_cart,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
