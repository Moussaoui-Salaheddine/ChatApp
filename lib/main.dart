import 'package:flutter/material.dart';
import 'login.dart';

void main() {

  runApp(new Chat());
}

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Color.fromRGBO(128, 0, 64, 1.0),
          accentColor: Colors.cyan[600],
          canvasColor: Colors.grey[200],
          fontFamily: 'Montserrat',
          textTheme: TextTheme(
            headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
            title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
            body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
          ),
        ),
      debugShowCheckedModeBanner: false,
      home: new Login(),
    );
  }
}
