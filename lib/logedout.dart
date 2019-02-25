import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Logedout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: const SystemUiOverlayStyle(),
          sized: false,
          child: Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/logedoutbackground2.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              width: 450,
              margin: EdgeInsets.only(top: 410),
              child: Column(
                children: <Widget>[
                  Text('Text'),
                  Container(
                    width: 350,
                    height: 60,
                    child: RaisedButton(
                      color: Color.fromRGBO(50 ,106 ,218 , 1.0),
                      child: new Text("Sign In", style: TextStyle(color: Colors.white),),
                      onPressed: null,
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0))),
                  ),
                  Padding(padding: EdgeInsets.all(10),),
                  Container(
                    width: 350,
                    height: 60,
                    child: RaisedButton(
                      child: new Text("Sign Up", style: TextStyle(color: Colors.white,),),
                      onPressed: null,
                      color: Colors.red,
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0))),
                  ) 
                  
                ],
              ),
            )),
      ),
    ));
  }
}
