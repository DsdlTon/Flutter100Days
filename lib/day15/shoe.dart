import 'package:flutter/material.dart';
import 'package:flutter100day/day15/FadeAnimation.dart';

class Shoes extends StatefulWidget {
  final String tag;
  final String image;
  final Color color;

  const Shoes({Key key, this.image, this.color, this.tag}) : super(key: key);

  @override
  _ShoesState createState() => _ShoesState();
}

class _ShoesState extends State<Shoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Hero(
          tag: widget.tag,
          child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: widget.color,
              image: DecorationImage(
                image: AssetImage(widget.image),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 50,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        color: Colors.white,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Icon(
                          Icons.favorite_border,
                          size: 20.0,
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  child: Container(
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        colors: [
                          Colors.black.withOpacity(.9),
                          Colors.black.withOpacity(.8),
                          Colors.black.withOpacity(.5),
                          Colors.black.withOpacity(.0),
                        ],
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        FadeAnimation(
                          1.0,
                          Text(
                            'Sneakers',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 50.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.0,
                            ),
                          ),
                        ),
                        SizedBox(height: 30.0),
                        FadeAnimation(
                          1.2,
                          Text(
                            'Size',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              letterSpacing: 1.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        FadeAnimation(
                          1.4,
                          Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(right: 15.0),
                                height: 40.0,
                                width: 40.0,
                                decoration: BoxDecoration(
                                  // color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Container(
                                  child: Center(
                                    child: Text(
                                      '40',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 15.0),
                                height: 40.0,
                                width: 40.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Container(
                                  child: Center(
                                    child: Text(
                                      '42',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 15.0),
                                height: 40.0,
                                width: 40.0,
                                decoration: BoxDecoration(
                                  // color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Container(
                                  child: Center(
                                    child: Text(
                                      '44',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 15.0),
                                height: 40.0,
                                width: 40.0,
                                decoration: BoxDecoration(
                                  // color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Container(
                                  child: Center(
                                    child: Text(
                                      '46',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 50.0,
                        ),
                        FadeAnimation(
                          1.6,
                          Container(
                            width: double.infinity,
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Center(
                              child: Text(
                                'Buy Now',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
