import 'package:flutter/material.dart';
import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'signupbright.dart';
import 'psdresetbright.dart';

class LogBright extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateLogBright();
  }
}

class _StateLogBright extends State<LogBright> {
  final _formKeysignin = GlobalKey<FormState>();
  Color _eyecolor = Colors.grey[800];
  bool eyepressed = false;
  bool _obsecurepsd = true;

  String _email, _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[150],
      resizeToAvoidBottomPadding: true,
      body: Container(
        width: 1080,
        height: 1920,
        decoration: BoxDecoration(
          color: Colors.grey[200],
        ),
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
                      key: _formKeysignin,
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: 320,
                            child: TextFormField(
                              style: TextStyle(color: Colors.grey[800]),
                              decoration: InputDecoration(
                                border: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey[600], width: 2)),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey[600], width: 2),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color.fromRGBO(84, 89, 167, 1.0),
                                        width: 3)),
                                hintText: 'Username',
                                hintStyle: TextStyle(color: Colors.grey[800]),
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Colors.grey[
                                      800], //Color.fromRGBO(0, 165, 165, 1.0),
                                ),
                              ),
                              validator: (val) {
                                if (val.length == 0) {
                                  return "Username cannot be empty";
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
                            margin: EdgeInsets.only(top: 20),
                            width: 320,
                            child: TextFormField(
                              style: TextStyle(color: Colors.grey[800]),
                              obscureText: _obsecurepsd,
                              decoration: InputDecoration(
                                  border: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey[600], width: 2)),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey[600], width: 2),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromRGBO(84, 89, 167, 1.0),
                                          width: 3)),
                                  hintText: 'Password',
                                  hintStyle: TextStyle(color: Colors.grey[800]),
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    color: Colors.grey[800],
                                  ),
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      if (eyepressed) {
                                        setState(() {
                                          _eyecolor = Colors.grey[800];
                                          eyepressed = false;
                                          _obsecurepsd = true;
                                        });
                                      } else {
                                        setState(() {
                                          _eyecolor =
                                              Color.fromRGBO(84, 89, 167, 1.0);
                                          eyepressed = true;
                                          _obsecurepsd = false;
                                        });
                                      }
                                    },
                                    icon: Icon(
                                      Icons.remove_red_eye,
                                      color: _eyecolor,
                                    ),
                                  )),
                              validator: (val) {
                                if (val.length == 0) {
                                  return "Password cannot be empty";
                                } else {
                                  return null;
                                }
                              },
                              onSaved: (input) {
                                _password = input;
                              },
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20, left: 170),
                            child: RaisedButton(
                                elevation: 0,
                                color: Colors.grey[200],
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              new PasswordReset()));
                                },
                                child: Text(
                                  'forgot password?',
                                  style: TextStyle(color: Colors.grey[600]),
                                  textAlign: TextAlign.right,
                                )),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 40),
                            width: 250,
                            height: 55,
                            child: RaisedButton(
                              color: Color.fromRGBO(84, 89, 167, 1.0),
                              elevation: 8,
                              colorBrightness: Brightness.dark,
                              onPressed: login,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0)),
                              textColor: Colors.white,
                              child: Text(
                                'login',
                                style: TextStyle(
                                    fontSize: 30, fontFamily: 'Comfortaa'),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 25, left: 40),
                            child: Row(
                              children: <Widget>[
                                RaisedButton(
                                  elevation: 0,
                                  color: Colors.grey[200],
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                new SignUp()));
                                  },
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                        'don\'t have an account? ',
                                        style:
                                            TextStyle(color: Colors.grey[600]),
                                      ),
                                      Text(
                                        'Sign Up',
                                        style: TextStyle(color: Colors.black),
                                      )
                                    ],
                                  ),
                                )
                              ],
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
    );
  }

  Future<void> login() async {
    if (_formKeysignin.currentState.validate()) {
      _formKeysignin.currentState.save();
      try {
        FirebaseUser user = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: _email, password: _password);

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
                title: Text('Signing in'),
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
                      style: TextStyle(color: Color.fromRGBO(84, 89, 167, 1.0)),
                    ),
                    onPressed: () => Navigator.pop(context, 'cancel'),
                  )
                ],
              ));
    }
  }
}
