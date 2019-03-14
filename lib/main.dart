import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'wizard.dart';

//temp import
import 'chat.dart';

void main()
{
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
    statusBarColor: Color.fromRGBO(84, 89, 167, 1.0),
    statusBarIconBrightness: Brightness.light,
    systemNavigationBarColor: Color.fromRGBO(30, 30, 30, 1.0),
    systemNavigationBarIconBrightness: Brightness.light,
  ));
  //SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Comfortaa'
      ),
      debugShowCheckedModeBanner: false,
      home: Wizard(),//Chat(), //Wizard(),
    );
  }
  
}