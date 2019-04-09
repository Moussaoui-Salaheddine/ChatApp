import 'package:dot/main.dart';
import 'package:dot/wizard.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
<<<<<<< HEAD
import 'newusermanagment.dart';
=======
>>>>>>> c3114715b4aedd832801b2b8e402642dacae7074

class SignUp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateSignUp();
  }
}

class _StateSignUp extends State<SignUp> {
  final _formKeysignup = GlobalKey<FormState>();
  Color _eyecolor;
  bool eyepressed = false;
  bool _obsecurepsd = true;
  String _email, _password;
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return Theme(
      data: Wizard.darktheme ? MyApp.themeDataDark : MyApp.themeDataBright,
      child: Scaffold(
        resizeToAvoidBottomPadding: true,
        //backgroundColor: Color.fromRGBO(30, 30, 30, 1.0),
        body: Container(
          width: 1080,
          height: 1920,
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
                      margin: EdgeInsets.only(top: 30),
                      child: Form(
                        key: _formKeysignup,
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: 320,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey[600], width: 1)),
                                  enabledBorder: UnderlineInputBorder(
=======
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      backgroundColor: Color.fromRGBO(30, 30, 30, 1.0),
      body: Container(
        width: 1080,
        height: 1920,
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
                    margin: EdgeInsets.only(top: 30),
                    child: Form(
                      key: _formKeysignup,
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: 320,
                            child: TextFormField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                border: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey[600], width: 2)),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey[600], width: 2),
                                ),
                                focusedBorder: UnderlineInputBorder(
>>>>>>> c3114715b4aedd832801b2b8e402642dacae7074
                                    borderSide: BorderSide(
                                        color: Colors.grey[600], width: 1),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromRGBO(84, 89, 167, 1.0),
                                          width: 3)),
                                  hintText: 'your email',
                                  prefixIcon: Icon(
                                    Icons.mail,
                                    //Color.fromRGBO(0, 165, 165, 1.0),
                                  ),
                                ),
                                validator: (val) {
                                  if (val.length == 0) {
                                    return "enter your email";
                                  } else {
                                    return null;
                                  }
                                },
                                onSaved: (input) {
                                  _email = input;
                                },
                              ),
<<<<<<< HEAD
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              width: 320,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey[600], width: 1)),
                                  enabledBorder: UnderlineInputBorder(
=======
                              validator: (val) {
                                if (val.length == 0) {
                                  return "enter your email";
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
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                border: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey[600], width: 2)),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey[600], width: 2),
                                ),
                                focusedBorder: UnderlineInputBorder(
>>>>>>> c3114715b4aedd832801b2b8e402642dacae7074
                                    borderSide: BorderSide(
                                        color: Colors.grey[600], width: 1),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromRGBO(84, 89, 167, 1.0),
                                          width: 3)),
                                  hintText: 'Pick a Username',
                                  prefixIcon: Icon(
                                    Icons.person,
                                    //Color.fromRGBO(0, 165, 165, 1.0),
                                  ),
                                ),
                                validator: (val) {
                                  if (val.length == 0) {
                                    return "Username cannot be empty";
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              width: 320,
                              child: TextFormField(
                                obscureText: _obsecurepsd,
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
                                            color: Color.fromRGBO(
                                                84, 89, 167, 1.0),
                                            width: 3)),
                                    hintText: 'Choose a Password',
                                    prefixIcon: Icon(
                                      Icons.lock,
                                    ),
                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        if (eyepressed) {
                                          setState(() {
                                            _eyecolor = Colors.grey[500];
                                            eyepressed = false;
                                            _obsecurepsd = true;
                                          });
                                        } else {
                                          setState(() {
                                            _eyecolor = Color.fromRGBO(
                                                84, 89, 167, 1.0);
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
                              margin: EdgeInsets.only(top: 20),
                              width: 320,
                              child: TextFormField(
                                obscureText: _obsecurepsd,
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(
                                      borderSide: BorderSide(
<<<<<<< HEAD
                                          color: Colors.grey[600], width: 1)),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey[600], width: 1),
=======
                                          color: Colors.grey[600], width: 2)),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey[600], width: 2),
>>>>>>> c3114715b4aedd832801b2b8e402642dacae7074
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromRGBO(84, 89, 167, 1.0),
                                          width: 3)),
                                  hintText: 'Confirm Password',
                                  prefixIcon: Icon(
                                    Icons.error_outline,
                                  ),
<<<<<<< HEAD
=======
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      if (eyepressed) {
                                        setState(() {
                                          _eyecolor = Colors.white70;
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
                            margin: EdgeInsets.only(top: 20),
                            width: 320,
                            child: TextFormField(
                              style: TextStyle(color: Colors.white),
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
                                        color: Color.fromRGBO(84, 89, 167, 1.0),
                                        width: 3)),
                                hintText: 'Confirm Password',
                                hintStyle: TextStyle(color: Colors.white70),
                                prefixIcon: Icon(
                                  Icons.error_outline,
                                  color: Colors.white70,
>>>>>>> c3114715b4aedd832801b2b8e402642dacae7074
                                ),
                                validator: (val) {
                                  if (val.length == 0) {
                                    return "Password cannot be empty";
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                            ),
<<<<<<< HEAD
                            Container(
                              margin: EdgeInsets.only(top: 40),
                              width: 250,
                              height: 55,
                              child: RaisedButton(
                                color: Color.fromRGBO(84, 89, 167, 1.0),
                                elevation: 8,
                                colorBrightness: Brightness.dark,
                                onPressed: signup,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0)),
                                child: Text(
                                  'Signup',
                                  style: TextStyle(
                                      fontSize: 30, fontFamily: 'Comfortaa'),
                                ),
=======
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 40),
                            width: 250,
                            height: 55,
                            child: RaisedButton(
                              color: Color.fromRGBO(84, 89, 167, 1.0),
                              elevation: 8,
                              colorBrightness: Brightness.dark,
                              onPressed: signup,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0)),
                              textColor: Colors.white,
                              child: Text(
                                'Signup',
                                style: TextStyle(
                                    fontSize: 30, fontFamily: 'Comfortaa'),
>>>>>>> c3114715b4aedd832801b2b8e402642dacae7074
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child: RaisedButton(
                                elevation: 0,
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  'Already Have an Account?',
                                ),
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

  Future<void> signup() async {
    {
      if (_formKeysignup.currentState.validate()) {
        _formKeysignup.currentState.save();

        try {
<<<<<<< HEAD
          FirebaseUser newuser = await FirebaseAuth.instance
              .createUserWithEmailAndPassword(
                  email: _email, password: _password)
              .then((newuser) {
            UserManagment().storenewUser(newuser, context);
          });

          newuser.sendEmailVerification();
=======
          FirebaseUser user = await FirebaseAuth.instance
              .createUserWithEmailAndPassword(
                  email: _email, password: _password);

          user.sendEmailVerification();
>>>>>>> c3114715b4aedd832801b2b8e402642dacae7074
        } on Exception catch (e) {
          print(e);
        }

        showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  title: Text('Creating your account'),
                  content: Container(
                    margin: EdgeInsets.only(left: 120, right: 120),
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
      }
    }
  }
}
