import 'package:flutter/material.dart';
import 'package:flutter100day/day6/dashboard.dart';
import 'package:page_transition/page_transition.dart';

class ExerciseApp extends StatefulWidget {
  @override
  _ExerciseAppState createState() => _ExerciseAppState();
}

class _ExerciseAppState extends State<ExerciseApp>
    with TickerProviderStateMixin {
  PageController _pageController;

  AnimationController rippleController;
  AnimationController scaleController;

  Animation<double> rippleAnimation;
  Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();

    _pageController = PageController(initialPage: 0);

    rippleController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    scaleController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    rippleAnimation = Tween<double>(
      begin: 80.0,
      end: 90.0,
    ).animate(rippleController)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          rippleController.reverse();
        } else if (status == AnimationStatus.dismissed) {
          rippleController.forward();
        }
      });

    scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 30.0,
    ).animate(scaleController)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          Navigator.push(
              context,
              PageTransition(
                  type: PageTransitionType.fade, child: Dashboard()));
        }
      });

    rippleController.forward();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    scaleController.reverse();
  }

  @override
  void dispose() {
    rippleController.dispose();
    scaleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: <Widget>[
          Page(image: 'assets/images/exercise1.jpg'),
          Page(image: 'assets/images/exercise1.jpg'),
          Page(image: 'assets/images/exercise1.jpg'),
        ],
      ),
    );
  }

  Widget Page({image}) {
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
          padding: EdgeInsets.all(40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 40.0),
              Text(
                'Exercise 1',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '15',
                    style: TextStyle(
                        color: Colors.yellow[400],
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Minutes',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ],
              ),
              SizedBox(height: 30.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '3',
                    style: TextStyle(
                        color: Colors.yellow[400],
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Exercise',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  SizedBox(height: 80.0),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      'Start the morning with your health',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 30.0),
                    ),
                  ),
                  SizedBox(height: 30.0),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: AnimatedBuilder(
                      animation: rippleAnimation,
                      builder: (context, child) => Container(
                        width: rippleAnimation.value,
                        height: rippleAnimation.value,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.amber.withOpacity(0.4),
                          ),
                          child: InkWell(
                            onTap: () {
                              scaleController.forward();
                            },
                            child: AnimatedBuilder(
                              animation: scaleAnimation,
                              builder: (context, child) => Transform.scale(
                                scale: scaleAnimation.value,
                                child: Container(
                                  margin: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.amber[300],
                                  ),
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
            ],
          ),
        ),
      ),
    );
  }
}
