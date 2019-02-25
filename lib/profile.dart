import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _StateProfile();
  }
}

class _StateProfile extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(5),
            child: Icon(Icons.person, size: 400),
          ),
          Text(
            'Name Name',
            style: TextStyle(fontSize: 30),
          ),
          Text(
            '@Username',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
