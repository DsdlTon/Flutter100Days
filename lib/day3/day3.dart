import 'package:flutter/material.dart';
import 'package:flutter100day/day3/FadeAnimation.dart';
import 'package:flutter100day/day3/day3_2.dart';
import 'package:page_transition/page_transition.dart';

class StarterPage extends StatefulWidget {
  @override
  _StarterPageState createState() => _StarterPageState();
}

class _StarterPageState extends State<StarterPage>
    with TickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> _animation;

  bool _textVisible = true;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 100));

    _animation = Tween<double>(
      begin: 0.0,
      end: 25.0,
    ).animate(
      _animationController,
    );

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();

    super.dispose();
  }

  void _onTap() {
    setState(() {
      _textVisible = false;
    });

    _animationController.forward().then(
          (f) => Navigator.push(
            context,
            PageTransition(
              type: PageTransitionType.fade,
              child: HomePage(),
            ),
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/food5.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.2),
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
                    'Taking Order For Delivery',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                FadeAnimation(
                  1.0,
                  Text(
                    'See resturants nearby by \nadding location',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      height: 1.4,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                FadeAnimation(
                  1.5,
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                        colors: [
                          Colors.yellow,
                          Colors.orange,
                        ],
                      ),
                    ),
                    child: MaterialButton(
                      onPressed: () => _onTap(),
                      child: Text(
                        'Start',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
                FadeAnimation(
                  2.0,
                  Center(
                    child: Text(
                      'Now Deliver to Your Door 24/7',
                      style: TextStyle(
                        color: Colors.white38,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
