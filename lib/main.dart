/*  This is the main.dart file in the package 'dot.com.dot' 
    This flutter app was made by *Salah Eddine Moussaoui* & *Haroune Bellal*
    This app is intended to be our final graduation project of subject -1- */

import 'package:dot/blocs/auth_bloc.dart';
import 'package:dot/blocs/bloc_provider.dart';
import 'package:dot/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'wizard.dart';

//main function
void main() {
  //system user interface changing over the defaule dark UI with custom feilds
  //system UI : statusBar + systemNavigationBar
  //TODO: initializing system UI variables
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
    statusBarColor: Color.fromRGBO(84, 89, 167, 1.0),
    statusBarIconBrightness: Brightness.light,
    systemNavigationBarColor: Color.fromRGBO(30, 30, 30, 1.0),
    systemNavigationBarIconBrightness: Brightness.light,
  ));
  //the function that starts the app and given an instance of the class MyApp
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  //defining a static getter for the dark theme data
  static get themeDataDark => _MyAppState.themeDataDark;
  //defining a static getter for the bright theme data
  static get themeDataBright => _MyAppState.themeDataBright;
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //dark theme
  //TODO: initializing the dark theme data
  static ThemeData themeDataDark = ThemeData(
    brightness: Brightness.dark,
    fontFamily: 'Comfortaa',
    textTheme: TextTheme(button: TextStyle(color: Colors.grey[200])),
    iconTheme: IconThemeData(
      color: Colors.grey[200],
    ),
    accentColor: Colors.grey[200],
    primaryColor: Colors.grey[200],
    errorColor: Colors.yellow,
    buttonColor: Color.fromRGBO(30, 30, 30, 1.0),
    backgroundColor: Color.fromRGBO(30, 30, 30, 1.0),
    scaffoldBackgroundColor: Color.fromRGBO(30, 30, 30, 1.0),
    indicatorColor: Colors.white,
    dialogBackgroundColor: Colors.grey[200],
  );

  //bright theme
  //TODO: initializing the bright theme data
  static ThemeData themeDataBright = ThemeData(
    brightness: Brightness.light,
    fontFamily: 'Comfortaa',
    textTheme: TextTheme(button: TextStyle(color: Colors.grey[500])),
    iconTheme: IconThemeData(
      color: Colors.grey[800],
    ),
    accentColor: Colors.grey[500],
    primaryColor: Colors.grey[500],
    errorColor: Colors.red,
    buttonColor: Colors.grey[200],
    backgroundColor: Colors.grey[200],
    scaffoldBackgroundColor: Colors.grey[200],
    indicatorColor: Colors.grey[800],
    dialogBackgroundColor: Colors.grey[200],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //using dynamic theming to manipulate themes
      theme: Wizard.darktheme ? themeDataDark : themeDataBright,
      debugShowCheckedModeBanner: false,
      //giving the instance of the class Wizard to the home attribute of MaterialApp
      home: BlocProvider(
        child: _handleStartScreen(),
        bloc: AuthBloc(),
      ),
    );
  }

  Widget _handleStartScreen() {
    return StreamBuilder<FirebaseUser>(
      stream: FirebaseAuth.instance.onAuthStateChanged,
      builder: (context, snapShot) {
        SystemChrome.setSystemUIOverlayStyle(
            SystemUiOverlayStyle.light.copyWith(
          statusBarColor: Wizard.darktheme
              ? Color.fromRGBO(30, 30, 30, 1.0)
              : Colors.grey[300],
          statusBarIconBrightness:
              Wizard.darktheme ? Brightness.light : Brightness.dark,
          systemNavigationBarColor: Wizard.darktheme
              ? Color.fromRGBO(44, 47, 51, 1.0)
              : Colors.grey[300],
          systemNavigationBarIconBrightness:
              Wizard.darktheme ? Brightness.light : Brightness.dark,
        ));
        if (snapShot.hasData) {
          return Home();
        } else {
          SystemChrome.setEnabledSystemUIOverlays([]);
          return Wizard();
        }
      },
    );
  }
}
