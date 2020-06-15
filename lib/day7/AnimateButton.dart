import 'package:flutter/material.dart';

class AnimateButton extends StatefulWidget {
  final Color primaryColor;
  final Color darkPrimayColor;

  AnimateButton({Key key, this.primaryColor, this.darkPrimayColor});

  @override
  _AnimateButtonState createState() => _AnimateButtonState();
}

class _AnimateButtonState extends State<AnimateButton>
    with TickerProviderStateMixin {
  AnimationController _fadeAnimationController;
  AnimationController _animationController;
  AnimationController _scaleAnimationController;

  Animation<double> _fadeAnimation;
  Animation<double> _animation;
  Animation<double> _scaleAnimation;

  bool animationComplete = false;
  double barColorOpacity = 0.6;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    _fadeAnimationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 400),
    );

    _scaleAnimationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 400),
    );

    _fadeAnimation = Tween<double>(
      begin: 50.0,
      end: 0.0,
    ).animate(_fadeAnimationController);

    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 1.05,
    ).animate(_scaleAnimationController)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _scaleAnimationController.reverse();
          _fadeAnimationController.forward();
          _animationController.forward();
        }
      });

    _animation = Tween<double>(
      begin: 0.0,
      end: 200.0,
    ).animate(_animationController)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          setState(() {
            animationComplete = true;
            barColorOpacity = 0.0;
          });
        }
      });
  }

  @override
  void dispose() {
    super.dispose();

    _fadeAnimationController.dispose();
    _animationController.dispose();
    _scaleAnimationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AnimatedBuilder(
          animation: _scaleAnimation,
          builder: (context, child) => Transform.scale(
            scale: _scaleAnimation.value,
            child: InkWell(
              onTap: () {
                _scaleAnimationController.forward();
              },
              child: Center(
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                        color: widget.primaryColor,
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Align(
                              child: animationComplete == false
                                  ? Text(
                                      'Download',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16.0),
                                    )
                                  : Icon(
                                      Icons.check,
                                      color: Colors.white,
                                    ),
                            ),
                          ),
                          AnimatedBuilder(
                            animation: _fadeAnimation,
                            builder: (context, child) => Container(
                              width: _fadeAnimation.value,
                              height: 50,
                              decoration: BoxDecoration(
                                color: widget.darkPrimayColor,
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: Icon(
                                Icons.arrow_downward,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    AnimatedBuilder(
                      animation: _animationController,
                      builder: (context, child) => Positioned(
                        top: 0,
                        left: 0,
                        height: 50.0,
                        width: _animation.value,
                        child: AnimatedOpacity(
                          opacity: barColorOpacity,
                          duration: Duration(milliseconds: 200),
                          child: Container(
                            decoration: BoxDecoration(color: Colors.white),
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
      ],
    );
  }
}
