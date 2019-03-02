import 'package:flutter/material.dart';
import 'login.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setEnabledSystemUIOverlays([]);
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: Colors.white,
    systemNavigationBarIconBrightness: Brightness.dark,
  ));
  runApp(new Chat());
}

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Color.fromRGBO(255, 0, 169, 1.0),
        accentColor: Colors.cyan[600],
        canvasColor: Colors.grey[200],
        fontFamily: 'Camfortaa',
      ),
      debugShowCheckedModeBanner: false,
      home: new Login(),
    );
  }
}
