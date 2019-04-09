import 'package:dot/main.dart';
import 'package:dot/wizard.dart';
import 'package:flutter/material.dart';
import 'signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';

class PasswordReset extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StatePasswordReset();
  }
}

class _StatePasswordReset extends State<PasswordReset> {
  final _formKeyreset = GlobalKey<FormState>();
  String _email;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Wizard.darktheme ? MyApp.themeDataDark : MyApp.themeDataBright,
      child: Scaffold(
        resizeToAvoidBottomPadding: true,
        body: Container(
          width: 1080,
          height: 1920,
          decoration: BoxDecoration(),
          child: ListView(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 50, right: 25, left: 25),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/logo.png'),
                              fit: BoxFit.fill)),
                    ), //logo
                    Container(
                      margin: EdgeInsets.only(top: 70),
                      child: Form(
                        key: _formKeyreset,
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 70),
                              width: 320,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey[600], width: 1)),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey[600], width: 1),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromRGBO(84, 89, 167, 1.0),
                                          width: 3)),
                                  hintText: 'Your Email',
                                  prefixIcon: Icon(
                                    Icons.mail,
                                    //Color.fromRGBO(0, 165, 165, 1.0),
                                  ),
                                ),
                                validator: (val) {
                                  if (val.length == 0) {
                                    return "Please enter your Email";
                                  } else {
                                    return null;
                                  }
                                },
                                onSaved: (input) {
                                  _email = input;
                                },
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 70),
                              width: 250,
                              height: 55,
                              child: RaisedButton(
                                color: Color.fromRGBO(84, 89, 167, 1.0),
                                elevation: 8,
                                colorBrightness: Brightness.dark,
                                onPressed: reset,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0)),
                                child: Text(
                                  'Reset',
                                  style: TextStyle(
                                      fontSize: 30, fontFamily: 'Comfortaa'),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 70),
                              width: 60,
                              height: 60,
                              child: RaisedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                shape: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(40.0)),
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.white,
                                  size: 28,
                                ),
                                color: Color.fromRGBO(84, 89, 167, 1.0),
                              ),
                            )
                          ],
                        ),
                      ),
                    ) //form
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> reset() async {
    {
      if (_formKeyreset.currentState.validate()) {
        _formKeyreset.currentState.save();

        try {
          FirebaseAuth.instance.sendPasswordResetEmail(email: _email);

          //user.sendEmailVerification();
        } on Exception catch (e) {
          print(e);
        }

        showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  title: Text('resetting'),
                  content: Container(
                    margin: EdgeInsets.only(left: 100, right: 100),
                    child: CircularProgressIndicator(
                      backgroundColor: Color.fromRGBO(84, 89, 167, 1.0),
                    ),
                  ),
                  actions: <Widget>[
                    FlatButton(
                      child: Text(
                        'Cancel',
                        style:
                            TextStyle(color: Color.fromRGBO(84, 89, 167, 1.0)),
                      ),
                      onPressed: () => Navigator.pop(context, 'cancel'),
                    )
                  ],
                ));

        Future.delayed(const Duration(milliseconds: 4000), () {
          setState(() {
            Navigator.pop(context);
            showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      title: Text('resetting'),
                      content: Container(
                        margin: EdgeInsets.only(left: 20, right: 20),
                        child: Text(
                            'We have sent you an email to reset your password'),
                      ),
                      actions: <Widget>[
                        FlatButton(
                          child: Text(
                            'ok',
                            style: TextStyle(
                                color: Color.fromRGBO(84, 89, 167, 1.0)),
                          ),
                          onPressed: () => Navigator.pop(context, 'ok'),
                        )
                      ],
                    ));
          });
        });
      }
    }
  }
}
