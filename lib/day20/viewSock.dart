import 'package:flutter/material.dart';

class ViewSock extends StatefulWidget {
  @override
  _ViewSockState createState() => _ViewSockState();
}

class _ViewSockState extends State<ViewSock> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              height: MediaQuery.of(context).size.height / 2.5,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  colors: [
                    Colors.redAccent[400],
                    Colors.redAccent[400].withOpacity(0.6),
                    // Color.fromRGBO(251, 121, 155, 1),
                    // Color.fromRGBO(251, 53, 155, 1),
                  ],
                ),
              ),
              child: Transform.translate(
                offset: Offset(30, -40),
                child: Image.asset('assets/images/sock2.png'),
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 10,
            child: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height / 1.55,
              padding: EdgeInsets.all(30.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  )),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Ranger Sport',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 19.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Text(
                      "Ankle Men's Atheletic Socks",
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 21.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'Ranger sport socks are a fusion of materials of the sturdient quality and versitile design that suits all purposes. Each pair of Ranger is knitted from 100% combed cotton yarn running along a reinforced 2-Ply core polyester based elastic through out the socks.',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 17.0,
                        height: 1.5,
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(
                            right: 20.0,
                          ),
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.red, width: 3.0),
                          ),
                          child: Container(
                            width: 30.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                              border:
                                  Border.all(color: Colors.white, width: 2.0),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            right: 20.0,
                          ),
                          width: 25.0,
                          height: 25.0,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            right: 20.0,
                          ),
                          width: 25.0,
                          height: 25.0,
                          decoration: BoxDecoration(
                            color: Colors.lightBlue,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40.0),
                    Text(
                      'More Option',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Container(
                      height: 80,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          AspectRatio(
                            aspectRatio: 3.2 / 1,
                            child: Container(
                              padding: EdgeInsets.all(13),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey[300]),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    width: 56,
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        color: Color.fromRGBO(251, 53, 105, 1)),
                                    child: Image.asset('assets/images/sock4.png'),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        'Ankle Length Socks',
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(97, 90, 90, 1),
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Text(
                                        '23,345',
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(97, 90, 90, .7),
                                            fontSize: 13),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          AspectRatio(
                            aspectRatio: 3.2 / 1,
                            child: Container(
                              margin: EdgeInsets.only(left: 20),
                              padding: EdgeInsets.all(13),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey[300]),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    width: 56,
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        color: Color.fromRGBO(81, 234, 234, 1)),
                                    child: Image.asset(
                                        'assets/images/sock3.png'),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        'Quarter Length Socks',
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(97, 90, 90, 1),
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Text(
                                        '23,345',
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(97, 90, 90, .7),
                                            fontSize: 13),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
