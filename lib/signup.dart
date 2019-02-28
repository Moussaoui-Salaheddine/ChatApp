import 'package:flutter/material.dart';

class SignUp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("assets/loginbg.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 1080,
            child: Text('Sign Up', style: TextStyle(color: Colors.white),),
          ) 
      )
    );
  }

  
}