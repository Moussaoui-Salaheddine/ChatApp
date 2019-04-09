import 'package:dot/main.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
<<<<<<< HEAD
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/services.dart';
=======
>>>>>>> c3114715b4aedd832801b2b8e402642dacae7074
import 'signup.dart';
import 'psdreset.dart';
import 'home.dart';
import 'wizard.dart';

class Log extends StatefulWidget {
  //dark theme varibale change
  bool darktheme;
  //explicit constructor
  Log(this.darktheme);
  @override
  State<StatefulWidget> createState() {
    return _StateLog();
  }
}

class _StateLog extends State<Log> {
  //using a custom font to define the Google logo imported from the material icon data theme by flutter
  static const _kFontFam = 'MyFlutterApp';
  static const IconData google = const IconData(0xf1a0, fontFamily: _kFontFam);
  //the global key of the log in form
  final _formKeysignin = GlobalKey<FormState>();
  //obsecure password button icon color
  Color _eyecolor;
  //the obsecure password switch
  bool eyepressed = false;
  bool _obsecurepsd = true;
  //the variable that will keep track of the form fields and saves them on call of the function onsave
  String _email, _password;
  //the global google sign in instance
  GoogleSignIn googleAuth = new GoogleSignIn();
  //firebase authentication
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    //replacing the back button with the _requestPop function
    return WillPopScope(
        onWillPop: _requestPop,
        child: Theme(
          //dynamic theming change
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
<<<<<<< HEAD
                    margin: EdgeInsets.only(top: 50, right: 25, left: 25),
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                              //definded in the file pupspec.yaml
                              image: DecorationImage(
                                  image: AssetImage('assets/logo.png'),
                                  fit: BoxFit.fill)),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 70),
                          child: Form(
                            key: _formKeysignin,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width: 320,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      border: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.grey[600],
                                              width: 1)),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.grey[600], width: 1),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color.fromRGBO(
                                                  84, 89, 167, 1.0),
                                              width: 3)),
                                      hintText: 'email',
                                      prefixIcon: Icon(
                                        Icons.person,
                                      ),
                                    ),
                                    validator: (val) {
                                      if (val.length == 0) {
                                        return "Email cannot be empty";
                                      } else {
                                        return null;
                                      }
                                    },
                                    onSaved: (input) {
                                      _email = input;
                                    },
=======
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
                                    borderSide: BorderSide(
                                        color: Color.fromRGBO(84, 89, 167, 1.0),
                                        width: 3)),
                                hintText: 'Email',
                                hintStyle: TextStyle(color: Colors.white70),
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Colors
                                      .white70, //Color.fromRGBO(0, 165, 165, 1.0),
                                ),
                              ),
                              validator: (val) {
                                if (val.length == 0) {
                                  return "Email cannot be empty";
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
                                  hintStyle: TextStyle(color: Colors.white70),
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    color: Colors.white70,
>>>>>>> c3114715b4aedd832801b2b8e402642dacae7074
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
                                                color: Colors.grey[600],
                                                width: 1)),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.grey[600],
                                              width: 1),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color.fromRGBO(
                                                    84, 89, 167, 1.0),
                                                width: 3)),
                                        hintText: 'password',
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
                                  margin: EdgeInsets.only(top: 20, left: 170),
                                  child: RaisedButton(
                                      elevation: 0,
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    new PasswordReset()));
                                      },
                                      child: Text('forgot password?',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                              color: Colors.grey[600]))),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 40),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(top: 40),
                                        width: 230,
                                        height: 50,
                                        child: RaisedButton(
                                          color:
                                              Color.fromRGBO(84, 89, 167, 1.0),
                                          elevation: 8,
                                          colorBrightness: Brightness.dark,
                                          onPressed: login,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30.0)),
                                          child: Text(
                                            'login',
                                            style: TextStyle(
                                                fontSize: 30,
                                                fontFamily: 'Comfortaa'),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.only(top: 40, left: 15),
                                        width: 50,
                                        height: 50,
                                        child: RaisedButton(
                                          color:
                                              Color.fromRGBO(84, 89, 167, 1.0),
                                          elevation: 8,
                                          colorBrightness: Brightness.dark,
                                          onPressed: googlesignin,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30.0)),
                                          textColor: Colors.white,
                                          child: Icon(google),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 25, left: 40),
                                  child: Row(
                                    children: <Widget>[
                                      RaisedButton(
                                        elevation: 0,
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
                                              style: TextStyle(
                                                  color: Colors.grey[600]),
                                            ),
                                            Text(
                                              'Sign Up',
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
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }

  Future<void> login() async {
    if (_formKeysignin.currentState.validate()) {
      _formKeysignin.currentState.save();

      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
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

      SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);

      try {
        FirebaseUser user = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: _email, password: _password);

<<<<<<< HEAD
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
                      backgroundColor: Color.fromRGBO(44, 47, 51, 1.0),
=======
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
>>>>>>> c3114715b4aedd832801b2b8e402642dacae7074
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
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => new Home()));
          });
        });
      } on PlatformException catch (e) {
        print(e.details);
        print(e.message);
        print(e);
      }
    }
  }

  Future<void> googlesignin() async {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Color.fromRGBO(84, 89, 167, 1.0),
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.light,
    ));
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);

    GoogleSignInAccount googleUser = await googleAuth.signIn();
    GoogleSignInAuthentication googleSignInAuth =
        await googleUser.authentication;
    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleSignInAuth.accessToken,
      idToken: googleSignInAuth.idToken,
    );
    final FirebaseUser user = await _auth.signInWithCredential(credential);
    print("signed in " + user.displayName);
    return user;
  }

  Future<bool> _requestPop() {
    return new Future.value(false);
  }
}
