import 'package:flutter/material.dart';
import 'home.dart';
import 'signup.dart';
import 'package:flutter/cupertino.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _StateLogin();
  }
}

class _StateLogin extends State<Login> {
  Color personcolor = Colors.grey[800];
  void change() {
    this.setState(() {
      personcolor = Colors.blue;
    });
  }

  bool passwordhide = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/background.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: ListView(
          children: <Widget>[
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(250),
                bottomRight: Radius.circular(40),
                topRight: Radius.circular(40),
              )),
              margin: EdgeInsets.only(top: 30, left: 20, right: 20),
              elevation: 8,
              child: Form(
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 60),
                      width: 200,
                      height: 150,
                      child: Text(
                        'Sign In ',
                        style: TextStyle(
                          fontSize: 40,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30, right: 10),
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                              decoration: new InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.person,
                                    color: personcolor,
                                    size: 28,
                                  ),
                                  enabledBorder: new OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(30.0),
                                      ),
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  disabledBorder: new OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(30.0),
                                      ),
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  focusedBorder: new OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(30.0),
                                      ),
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  border: new OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(30.0),
                                      ),
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  filled: true,
                                  hintStyle:
                                      new TextStyle(color: Colors.grey[800]),
                                  hintText: "Username",
                                  fillColor: Colors.white),
                              validator: (val) {
                                if (val.length == 0) {
                                  return "Username cannot be empty";
                                } else {
                                  return null;
                                }
                              },
                              keyboardType: TextInputType.text,
                              style: new TextStyle(
                                fontFamily: "Raleway",
                                color: Colors.grey[800],
                              )),
                          Padding(
                            padding: EdgeInsets.only(top: 20),
                          ),
                          TextFormField(
                              obscureText: passwordhide,
                              decoration: new InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    color: Colors.grey[800],
                                    size: 28,
                                  ),
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      if (passwordhide) {
                                        this.setState(() {
                                          passwordhide = false;
                                        });
                                      } else {
                                        this.setState(() {
                                          passwordhide = true;
                                        });
                                      }
                                    },
                                    icon: Icon(
                                      Icons.remove_red_eye,
                                      color: Colors.grey[800],
                                      size: 28,
                                    ),
                                  ),
                                  enabledBorder: new OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(30.0),
                                      ),
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  disabledBorder: new OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(30.0),
                                      ),
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  focusedBorder: new OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(30.0),
                                      ),
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  border: new OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(30.0),
                                      ),
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  filled: true,
                                  hintStyle: new TextStyle(
                                    color: Colors.grey[800],
                                  ),
                                  hintText: "Password",
                                  fillColor: Colors.white),
                              validator: (val) {
                                if (val.length == 0) {
                                  return "Password cannot be empty";
                                } else {
                                  return null;
                                }
                              },
                              keyboardType: TextInputType.text,
                              style: new TextStyle(
                                fontFamily: "Raleway",
                                color: Colors.grey[800],
                              )),
                          Padding(
                            padding: EdgeInsets.only(top: 50),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 100, right: 10),
                            height: 60,
                            child: RaisedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => new Home()));
                              },
                              shape: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(255, 0, 169, 1.0))),
                              color: Color.fromRGBO(255, 0, 169, 1.0),
                              child: Center(
                                child: Text(
                                  'Sign In',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: "Roboto"),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 50),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 300),
                      child: FloatingActionButton(
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Colors.white54)),
                        onPressed: () {},
                        backgroundColor: Color.fromRGBO(255, 0, 169, 1.0),
                        child: Icon(
                          Icons.keyboard_arrow_down,
                          size: 35,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                topRight: Radius.circular(250),
                topLeft: Radius.circular(40),
                bottomLeft: Radius.circular(40),
              )),
              margin: EdgeInsets.only(top: 30, left: 20, right: 20),
              elevation: 8,
              child: Form(
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 100),
                      width: 250,
                      height: 150,
                      child: Text(
                        'Sign Up',
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 0),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30, right: 10),
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                              decoration: new InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.person,
                                    color: Colors.grey[800],
                                    size: 28,
                                  ),
                                  enabledBorder: new OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(30.0),
                                      ),
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  disabledBorder: new OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(30.0),
                                      ),
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  focusedBorder: new OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(30.0),
                                      ),
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  border: new OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(30.0),
                                      ),
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  filled: true,
                                  hintStyle:
                                      new TextStyle(color: Colors.grey[800]),
                                  hintText: "Pick a Username",
                                  fillColor: Colors.white),
                              validator: (val) {
                                if (val.length == 0) {
                                  return "Username cannot be empty";
                                } else {
                                  return null;
                                }
                              },
                              keyboardType: TextInputType.text,
                              style: new TextStyle(
                                fontFamily: "Raleway",
                                color: Colors.grey[800],
                              )),
                          Padding(
                            padding: EdgeInsets.only(top: 0),
                          ),
                          TextFormField(
                              obscureText: passwordhide,
                              decoration: new InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    color: Colors.grey[800],
                                    size: 28,
                                  ),
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      if (passwordhide) {
                                        this.setState(() {
                                          passwordhide = false;
                                        });
                                      } else {
                                        this.setState(() {
                                          passwordhide = true;
                                        });
                                      }
                                    },
                                    icon: Icon(
                                      Icons.remove_red_eye,
                                      color: Colors.grey[800],
                                      size: 28,
                                    ),
                                  ),
                                  enabledBorder: new OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(30.0),
                                      ),
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  disabledBorder: new OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(30.0),
                                      ),
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  focusedBorder: new OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(30.0),
                                      ),
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  border: new OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(30.0),
                                      ),
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  filled: true,
                                  hintStyle: new TextStyle(
                                    color: Colors.grey[800],
                                  ),
                                  hintText: "Choose a Password",
                                  fillColor: Colors.white),
                              validator: (val) {
                                if (val.length == 0) {
                                  return "Password cannot be empty";
                                } else {
                                  return null;
                                }
                              },
                              keyboardType: TextInputType.text,
                              style: new TextStyle(
                                fontFamily: "Raleway",
                                color: Colors.grey[800],
                              )),
                          Padding(
                            padding: EdgeInsets.only(top: 0),
                          ),
                          TextFormField(
                              obscureText: passwordhide,
                              decoration: new InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.error_outline,
                                    color: Colors.grey[800],
                                    size: 28,
                                  ),
                                  enabledBorder: new OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(30.0),
                                      ),
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  disabledBorder: new OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(30.0),
                                      ),
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  focusedBorder: new OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(30.0),
                                      ),
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  border: new OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(30.0),
                                      ),
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  filled: true,
                                  hintStyle: new TextStyle(
                                    color: Colors.grey[800],
                                  ),
                                  hintText: "Confirm Password",
                                  fillColor: Colors.white),
                              validator: (val) {
                                if (val.length == 0) {
                                  return "Password cannot be empty";
                                } else {
                                  return null;
                                }
                              },
                              keyboardType: TextInputType.text,
                              style: new TextStyle(
                                fontFamily: "Raleway",
                                color: Colors.grey[800],
                              )),
                          Padding(
                            padding: EdgeInsets.only(top: 50),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 50, right: 50),
                            height: 60,
                            child: RaisedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => new Home()));
                              },
                              shape: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(255, 0, 169, 1.0))),
                              color: Color.fromRGBO(255, 0, 169, 1.0),
                              child: Center(
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: "Roboto"),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 40),
                    ),
                  ],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 50)),
          ],
        ),
      ),
    );
  }
}

//   bool passwordhide = true;
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       resizeToAvoidBottomPadding: false,
//       body: new Container(
//           decoration: new BoxDecoration(
//             image: new DecorationImage(
//               image: new AssetImage("assets/loginbg.jpg"),
//               fit: BoxFit.cover,
//             ),
//           ),
//           child: new Container(
//               margin: EdgeInsets.only(top: 100, right: 50, left: 50),
//               child: Form(
//                 child: Column(
//                   children: <Widget>[
//                     Container(
//                       width: 200,
//                       height: 150,
//                       child: Image.asset('assets/logo.png'),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.only(top: 100),
//                     ),
//                     TextFormField(
//                         decoration: new InputDecoration(
//                             prefixIcon: Icon(
//                               Icons.person,
//                               color: Colors.grey[800],
//                               size: 28,
//                             ),
//                             enabledBorder: new OutlineInputBorder(
//                                 borderRadius: const BorderRadius.all(
//                                   const Radius.circular(30.0),
//                                 ),
//                                 borderSide: BorderSide(color: Colors.white)),
//                             disabledBorder: new OutlineInputBorder(
//                                 borderRadius: const BorderRadius.all(
//                                   const Radius.circular(30.0),
//                                 ),
//                                 borderSide: BorderSide(color: Colors.white)),
//                             focusedBorder: new OutlineInputBorder(
//                                 borderRadius: const BorderRadius.all(
//                                   const Radius.circular(30.0),
//                                 ),
//                                 borderSide: BorderSide(color: Colors.white)),
//                             border: new OutlineInputBorder(
//                                 borderRadius: const BorderRadius.all(
//                                   const Radius.circular(30.0),
//                                 ),
//                                 borderSide: BorderSide(color: Colors.white)),
//                             filled: true,
//                             hintStyle: new TextStyle(color: Colors.grey[800]),
//                             hintText: "Username",
//                             fillColor: Colors.white),
//                         validator: (val) {
//                           if (val.length == 0) {
//                             return "Username cannot be empty";
//                           } else {
//                             return null;
//                           }
//                         },
//                         keyboardType: TextInputType.text,
//                         style: new TextStyle(
//                           fontFamily: "Raleway",
//                           color: Colors.grey[800],
//                         )),
//                     Padding(
//                       padding: EdgeInsets.only(top: 20),
//                     ),
//                     TextFormField(
//                         obscureText: passwordhide,
//                         decoration: new InputDecoration(
//                             prefixIcon: Icon(
//                               Icons.lock,
//                               color: Colors.grey[800],
//                               size: 28,
//                             ),
//                             suffixIcon: IconButton(
//                               onPressed: () {
//                                 if (passwordhide) {
//                                   this.setState(() {
//                                     passwordhide = false;
//                                   });
//                                 } else {
//                                   this.setState(() {
//                                     passwordhide = true;
//                                   });
//                                 }
//                               },
//                               icon: Icon(
//                                 Icons.remove_red_eye,
//                                 color: Colors.grey[800],
//                                 size: 28,
//                               ),
//                             ),
//                             enabledBorder: new OutlineInputBorder(
//                                 borderRadius: const BorderRadius.all(
//                                   const Radius.circular(30.0),
//                                 ),
//                                 borderSide: BorderSide(color: Colors.white)),
//                             disabledBorder: new OutlineInputBorder(
//                                 borderRadius: const BorderRadius.all(
//                                   const Radius.circular(30.0),
//                                 ),
//                                 borderSide: BorderSide(color: Colors.white)),
//                             focusedBorder: new OutlineInputBorder(
//                                 borderRadius: const BorderRadius.all(
//                                   const Radius.circular(30.0),
//                                 ),
//                                 borderSide: BorderSide(color: Colors.white)),
//                             border: new OutlineInputBorder(
//                                 borderRadius: const BorderRadius.all(
//                                   const Radius.circular(30.0),
//                                 ),
//                                 borderSide: BorderSide(color: Colors.white)),
//                             filled: true,
//                             hintStyle: new TextStyle(
//                               color: Colors.grey[800],
//                             ),
//                             hintText: "Password",
//                             fillColor: Colors.white),
//                         validator: (val) {
//                           if (val.length == 0) {
//                             return "Password cannot be empty";
//                           } else {
//                             return null;
//                           }
//                         },
//                         keyboardType: TextInputType.text,
//                         style: new TextStyle(
//                           fontFamily: "Raleway",
//                           color: Colors.grey[800],
//                         )),
//                     Padding(
//                       padding: EdgeInsets.only(top: 50),
//                     ),
//                     Container(
//                       height: 60,
//                       child: RaisedButton(
//                         onPressed: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => new Home()));
//                         },
//                         shape: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(30.0),
//                             borderSide: BorderSide(
//                                 color: Color.fromRGBO(255, 0, 169, 1.0))),
//                         color: Color.fromRGBO(255, 0, 169, 1.0),
//                         child: Center(
//                           child: Text(
//                             'Sign In',
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 20,
//                                 fontFamily: "Roboto"),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.only(top: 20),
//                     ),
//                     Text(
//                       'Don\'t have an account?',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontStyle: FontStyle.italic,
//                       ),
//                     ),
//                     Container(
//                       height: 20,
//                       child: FlatButton(
//                         onPressed: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => new SignUp()));
//                         },
//                         child: Text(
//                           'Sign Up',
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold, color: Colors.white),
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               ))),
//     );
//   }

//   @override
//   State<StatefulWidget> createState() {
//     return null;
//   }
// }

//      new MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: Scaffold(
//           resizeToAvoidBottomPadding: false,
//           body: new Container(
//             decoration: new BoxDecoration(
//               image: new DecorationImage(
//                 image: new AssetImage("assets/loginbackground.jpg"),
//                 fit: BoxFit.cover,
//               ),
//             ),
//             child: Column(
//               children: <Widget>[
//                 TextField(
//                   style: TextStyle(color: Colors.white),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.all(140),
//                 ),
//                 new Row(
//                   children: <Widget>[
//                     Padding(padding: EdgeInsets.all(15),),
//                     Image.asset('assets/usernamelogin.png', width: 30, height: 30, fit: BoxFit.fill),
//                     Padding(padding: EdgeInsets.all(10),),
//                     new Container(
//                       width: 300,
//                       child: new TextFormField(
//                         decoration: new InputDecoration(
//                           icon: Icon(Image.asset('asstes/usernamelogin.png')),
//                             focusedBorder: UnderlineInputBorder(
//                                 borderSide: BorderSide(color: Colors.white)),
//                             disabledBorder: UnderlineInputBorder(
//                                 borderSide: BorderSide(color: Colors.white)),
//                             enabledBorder: UnderlineInputBorder(
//                                 borderSide: BorderSide(color: Colors.white)),
//                             hintText: 'Username',
//                             hintStyle: TextStyle(color: Colors.white),
//                             fillColor: Colors.white,
//                             labelStyle: new TextStyle(color: Colors.white)
//                             //fillColor: Colors.green
//                             ),
//                         validator: (val) {
//                           if (val.length == 0) {
//                             return "Username cannot be empty";
//                           } else {
//                             return null;
//                           }
//                         },
//                         keyboardType: TextInputType.text,
//                         style: new TextStyle(
//                           fontFamily: "Poppins",
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//                 Padding(
//                   padding: EdgeInsets.all(15),
//                 ),
//                 new Row(
//                   children: <Widget>[
//                     Padding(padding: EdgeInsets.all(15),),
//                     Image.asset('assets/passwordlogin.png', width: 30, height: 30, fit: BoxFit.fill,),
//                     Padding(padding: EdgeInsets.all(10),),
//                     new Container(
//                   width: 300,
//                   child: new TextFormField(
//                     decoration: new InputDecoration(
//                         focusedBorder: UnderlineInputBorder(
//                             borderSide: BorderSide(color: Colors.white)),
//                         disabledBorder: UnderlineInputBorder(
//                             borderSide: BorderSide(color: Colors.white)),
//                         enabledBorder: UnderlineInputBorder(
//                             borderSide: BorderSide(color: Colors.white)),
//                         hintText: 'Password',
//                         hintStyle: TextStyle(color: Colors.white),
//                         fillColor: Colors.white,
//                         labelStyle: new TextStyle(color: Colors.white)
//                         //fillColor: Colors.green
//                         ),
//                     validator: (val) {
//                       if (val.length == 0) {
//                         return "Password cannot be empty";
//                       } else {
//                         return null;
//                       }
//                     },
//                     keyboardType: TextInputType.text,
//                     style: new TextStyle(
//                       fontFamily: "Poppins",
//                     ),
//                   ),
//                 ),
//                   ],
//                 ),

//                 Padding(
//                   padding: EdgeInsets.all(30),
//                 ),
//                 new Container(
//                   width: 300,
//                   child: new RaisedButton(
//                     onPressed: () {},
//                     child: Text('Sign In',
//                         style: TextStyle(
//                           color: Colors.white,
//                         )),
//                     color: Colors.pink,
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ));
//   }
