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
            WorkList('Day 1 - Find Inspiration'),
            WorkList('Day 2 - Travel Guide'),
          ],
        ),
      ),
    );
  }
}

Widget WorkList(title) {
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
                },
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
