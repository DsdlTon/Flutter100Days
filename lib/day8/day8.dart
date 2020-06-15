import 'package:flutter/material.dart';
import 'package:flutter100day/day8/FadeAnimation.dart';
import 'package:flutter100day/day8/loginPage.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  AnimationController _scaleController;
  AnimationController _scale2Controller;
  AnimationController _widthController;
  AnimationController _positionController;

  Animation<double> _scaleAnimation;
  Animation<double> _scale2Animation;
  Animation<double> _widthAnimation;
  Animation<double> _positionAnimation;

  bool hideIcon = false;

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
      end: 0.8,
    ).animate(_scaleController)
      ..addStatusListener(
        (status) {
          if (status == AnimationStatus.completed) {
            _widthController.forward();
          }
        },
      );

    _widthController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 400),
    );

    _widthAnimation = Tween<double>(
      begin: 80.0,
      end: 300.0,
    ).animate(_widthController)
      ..addStatusListener(
        (status) {
          if (status == AnimationStatus.completed) {
            _positionController.forward();
          }
        },
      );

    _positionController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 800),
    );

    _positionAnimation = Tween<double>(
      begin: 0.0,
      end: 215.0,
    ).animate(_positionController)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          setState(() {
            hideIcon = true;
          });
          _scale2Controller.forward();
        }
      });

    _scale2Controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 800),
    );

    _scale2Animation = Tween<double>(
      begin: 1.0,
      end: 32.0,
    ).animate(_scale2Controller)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          Navigator.push(
            context,
            PageTransition(child: LoginPage(), type: PageTransitionType.fade),
          );
        }
      });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setState(() {
      hideIcon = false;
    });
    _scale2Controller.reverse().then(
          (value) => _positionController.reverse().then(
                (value) => _widthController
                    .reverse()
                    .then((value) => _scaleController.reverse()),
              ),
        );
  }

  @override
  void dispose() {
    super.dispose();
    _scaleController.dispose();
    _scale2Controller.dispose();
    _positionController.dispose();
    _widthController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20.0),
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            stops: [0.2, 0.9],
            colors: [
              Color.fromRGBO(7, 14, 40, 1),
              Color.fromRGBO(3, 9, 10, 1),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FadeAnimation(
              1,
              Text(
                'Welcome',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35.0,
                ),
              ),
            ),
            SizedBox(height: 30.0),
            FadeAnimation(
              1.2,
              Text(
                "We promis that you'll have the most \nfuss-free time with us ever.",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.7),
                  fontSize: 15.0,
                  height: 1.5,
                ),
              ),
            ),
            SizedBox(height: 150.0),
            FadeAnimation(
              1.4,
              AnimatedBuilder(
                animation: _scaleController,
                builder: (context, child) => Transform.scale(
                  scale: _scaleAnimation.value,
                  child: Center(
                    child: AnimatedBuilder(
                      animation: _widthController,
                      builder: (context, child) => Container(
                        width: _widthAnimation.value,
                        height: 80,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.blue.withOpacity(.4),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: InkWell(
                          onTap: () {
                            _scaleController.forward();
                          },
                          child: Stack(
                            children: [
                              AnimatedBuilder(
                                animation: _positionController,
                                builder: (context, child) => Positioned(
                                  left: _positionAnimation.value,
                                  child: AnimatedBuilder(
                                    animation: _scale2Controller,
                                    builder: (context, child) =>
                                        Transform.scale(
                                      scale: _scale2Animation.value,
                                      child: Container(
                                        width: 60.0,
                                        height: 60.0,
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          shape: BoxShape.circle,
                                        ),
                                        child: hideIcon == false
                                            ? Icon(
                                                Icons.arrow_forward,
                                                color: Colors.white,
                                              )
                                            : Container(),
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
              ),
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
