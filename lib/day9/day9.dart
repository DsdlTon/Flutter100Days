import 'package:flutter/material.dart';
import 'package:flutter100day/day9/FindEvent.dart';
import 'package:page_transition/page_transition.dart';

class PartyApplication extends StatefulWidget {
  @override
  _PartyApplicationState createState() => _PartyApplicationState();
}

class _PartyApplicationState extends State<PartyApplication>
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
                child: FindEvent(),
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
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/party1.jpg'),
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
                Colors.black.withOpacity(0),
              ],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  'Find the best location near you for a good \nnight.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  'Let us find you an event for your \ninteresting.',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(height: 150.0),
                AnimatedBuilder(
                  animation: _scaleController,
                  builder: (context, child) => Transform.scale(
                    scale: _scaleAnimation.value,
                    child: InkWell(
                      onTap: () {
                        _scaleController.forward();
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 40.0, vertical: 15.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40.0),
                          color: Colors.red[400],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            hideText == false
                                ? Text(
                                    'Find nearest event',
                                    style: TextStyle(color: Colors.white),
                                  )
                                : Container(),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                          ],
                        ),
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
