import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: FlatButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/pokemon');
                },
                icon: Icon(
                  Icons.edit_location,
                  color: Colors.yellowAccent,
                ),
                label: Text(
                  'Choose a Pokemon',
                  style: TextStyle(
                    letterSpacing: 5.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        )));
  }
}
