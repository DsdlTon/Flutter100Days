import 'package:flutter/material.dart';
import 'package:flutter100day/day16/FadeAnimation.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter100day/day16/Shop.dart';

class ECommerceApplication extends StatefulWidget {
  @override
  _ECommerceApplicationState createState() => _ECommerceApplicationState();
}

class _ECommerceApplicationState extends State<ECommerceApplication>
    with TickerProviderStateMixin {
  AnimationController _scaleController;
  Animation<double> _scaleAnimation;

  bool hideText = false;

  @override
  void initState() {
    super.initState();

    _scaleController = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 300,
      ),
    );

    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 32.0,
    ).animate(_scaleController)
      ..addStatusListener((status) {
        if (status == AnimationStatus.forward) {
          setState(() {
            hideText = true;
          });
        } else if (status == AnimationStatus.completed) {
          Navigator.push(
              context,
              PageTransition(
                child: ShopPage(),
                type: PageTransitionType.fade,
              ));
        }
      });
  }

  @override
  void dispose() {
    super.dispose();
    _scaleController.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _scaleController.reverse();
    setState(() {
      hideText = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/shopping1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(0.8),
                Colors.black.withOpacity(0.2),
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
                  1.0,
                  Text(
                    'Brand New \nPerspective',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40.0,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                FadeAnimation(
                  1.2,
                  Text(
                    "Let's start with our summer\ncollection.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 80.0,
                ),
                AnimatedBuilder(
                  animation: _scaleController,
                  builder: (context, child) => Transform.scale(
                    scale: _scaleAnimation.value,
                    child: FadeAnimation(
                      1.4,
                      InkWell(
                        onTap: () {
                          _scaleController.forward();
                        },
                        child: Container(
                          height: 50.0,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Center(
                            child: hideText == false
                                ? Text(
                                    'Get Start',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  )
                                : Container(),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                FadeAnimation(
                  1.6,
                  Container(
                    height: 50.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(30.0),
                      border: Border.all(color: Colors.white),
                    ),
                    child: Center(
                      child: Text(
                        'Create Account',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
