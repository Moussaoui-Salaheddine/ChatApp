import 'package:flutter/material.dart';
import 'home.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
          resizeToAvoidBottomPadding: false,
          body: new Container(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage("assets/loginbg.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: new Container(
                  margin: EdgeInsets.only(top: 300, right: 50, left: 50),
                  child: Form(
                    child: Column(
                      children: <Widget>[
                        new TextFormField(
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
                            decoration: new InputDecoration(
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Colors.grey[800],
                                  size: 28,
                                ),
                                suffixIcon: IconButton(
                                  onPressed: () {},
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
                                hintStyle:
                                    new TextStyle(color: Colors.grey[800]),
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
                            Padding(padding: EdgeInsets.only(top: 50),),
                            Container(
                              height: 60,
                              child: RaisedButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => new Home()));
                              },
                              shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                borderSide: BorderSide(color: Color.fromRGBO(255, 0, 169, 1.0))
                              ),
                              color: Color.fromRGBO(255, 0, 169, 1.0),
                              child: Center(
                                child: Text('Sign In', style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: "Roboto"),),
                              ),
                            ),
                            )
                      ],
                    ),
                  )
                  )),
        );
  }
}

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
