import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '100 Days with Flutter',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            WorkList(context, 'Day 1 - Find Inspiration', '/1'),
            WorkList(context, 'Day 2 - Travel Guide', '/2'),
            WorkList(context, 'Day 3 - Food Delivery', '/3'),
            WorkList(context, 'Day 4 - Documentary', '/4'),
            WorkList(context, 'Day 5 - MapApplication', '/5'),
            WorkList(context, 'Day 6 - ExerciseApp', '/6'),
            WorkList(context, 'Day 7 - AnimationButton', '/7'),
            WorkList(context, 'Day 8 - SplashScreen', '/8'),
            WorkList(context, 'Day 9 - PartyApplication', '/9'),
          ],
        ),
      ),
    );
  }
}

Widget WorkList(context, title, page) {
  return Center(
    child: Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.album),
            title: Text(
              title,
              style: TextStyle(
                fontSize: 25.0,
              ),
            ),
          ),
          ButtonBar(
            children: <Widget>[
              FlatButton(
                child: Text(
                  'View',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  //Navigate to selected page
                  Navigator.pushNamed(context, page);
                },
              ),
            ],
          ),
        ],
      ),
    ),
  );
}