import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'log.dart';

class Wizard extends StatefulWidget {
  //defining a static getter for the dark theme boolean variable
  static get darktheme => _StateWizard.darktheme;
  //defining a static setter for the dark theme boolean variable
  static set darktheme(bool val) {
    _StateWizard.darktheme = val;
  }
  @override
  State<StatefulWidget> createState() {
    return _StateWizard();
  }
}

class _StateWizard extends State<Wizard> {
  // selectedmode 1 & 2 can distinguish between the two cards and make sure only one is selected
  BorderSide _selectedmode1 = BorderSide();
  BorderSide _selectedmode2 = BorderSide();
  bool _modeselector1 = false;
  bool _modeselector2 = false;
  //dark theme changing variable
  static bool darktheme = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
        resizeToAvoidBottomInset: false,
        resizeToAvoidBottomPadding: false,
=======
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
>>>>>>> c3114715b4aedd832801b2b8e402642dacae7074
        backgroundColor: Color.fromRGBO(30, 30, 30, 1.0),
        body: Container(
          margin: EdgeInsets.only(top: 20),
          child: DefaultTabController(
            length: 4,
            child: Builder(
              builder: (BuildContext context) => Container(
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          child: IconTheme(
                            data: IconThemeData(
                              size: 128,
                              color: Colors.black,
                            ),
                            child: TabBarView(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(top: 80),
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        width: 130,
                                        height: 130,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                //definded in the file pupspec.yaml
                                                image: AssetImage(
                                                    'assets/logo.png'),
                                                fit: BoxFit.fill)),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 100),
                                        child: Text(
                                          'Welcome to Dot Messenger',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            top: 100, left: 250),
                                        width: 60,
                                        height: 60,
                                        child: RaisedButton(
                                          onPressed: () {
                                            DefaultTabController.of(context)
                                                .animateTo(1);
                                          },
                                          shape: CircleBorder(),
                                          child: Icon(
                                            Icons.keyboard_arrow_right,
                                            color: Colors.white,
                                            size: 32,
                                          ),
                                          color:
                                              Color.fromRGBO(84, 89, 167, 1.0),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 80),
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        width: 130,
                                        height: 130,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                //definded in the file pupspec.yaml
                                                image: AssetImage(
                                                    'assets/logowow.png'),
                                                fit: BoxFit.fill)),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 70),
                                      ),
                                      Text('this App was made with Flutter by ',
                                          style:
                                              TextStyle(color: Colors.white)),
                                      Padding(
                                        padding: EdgeInsets.only(top: 20),
                                      ),
                                      Text('Salaheddine MOUSSAOUI  &',
                                          style:
                                              TextStyle(color: Colors.white)),
                                      Padding(
                                        padding: EdgeInsets.only(top: 20),
                                      ),
                                      Text('Harooooooooune BELLAL',
                                          style:
                                              TextStyle(color: Colors.white)),
                                      Padding(
                                        padding: EdgeInsets.only(top: 35),
                                      ),
                                      Text('As our final Graduation Project',
                                          style:
                                              TextStyle(color: Colors.white)),
                                      Padding(
                                        padding: EdgeInsets.only(top: 50),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(left: 50),
                                            width: 60,
                                            height: 60,
                                            child: RaisedButton(
                                              onPressed: () {
                                                DefaultTabController.of(context)
                                                    .animateTo(0);
                                              },
                                              shape: CircleBorder(),
                                              child: Icon(
                                                Icons.keyboard_arrow_left,
                                                color: Colors.white,
                                                size: 32,
                                              ),
                                              color: Color.fromRGBO(
                                                  84, 89, 167, 1.0),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 200),
                                            width: 60,
                                            height: 60,
                                            child: RaisedButton(
                                              onPressed: () {
                                                DefaultTabController.of(context)
                                                    .animateTo(2);
                                              },
                                              shape: CircleBorder(),
                                              child: Icon(
                                                Icons.keyboard_arrow_right,
                                                color: Colors.white,
                                                size: 32,
                                              ),
                                              color: Color.fromRGBO(
                                                  84, 89, 167, 1.0),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 80),
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        width: 130,
                                        height: 130,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                //definded in the file pupspec.yaml
                                                image: AssetImage(
                                                    'assets/logowink.png'),
                                                fit: BoxFit.fill)),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 70),
                                      ),
                                      Text('We hope it shows how much ',
                                          style:
                                              TextStyle(color: Colors.white)),
                                      Padding(
                                        padding: EdgeInsets.only(top: 20),
                                      ),
                                      Text('effort & dedication we ',
                                          style:
                                              TextStyle(color: Colors.white)),
                                      Padding(
                                        padding: EdgeInsets.only(top: 20),
                                      ),
                                      Text('put into making this app',
                                          style:
                                              TextStyle(color: Colors.white)),
                                      Padding(
                                        padding: EdgeInsets.only(top: 35),
                                      ),
                                      Text('without being said, let\'s begin',
                                          style:
                                              TextStyle(color: Colors.white)),
                                      Padding(
                                        padding: EdgeInsets.only(top: 50),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(left: 50),
                                            width: 60,
                                            height: 60,
                                            child: RaisedButton(
                                              onPressed: () {
                                                DefaultTabController.of(context)
                                                    .animateTo(1);
                                              },
                                              shape: CircleBorder(),
                                              child: Icon(
                                                Icons.keyboard_arrow_left,
                                                color: Colors.white,
                                                size: 32,
                                              ),
                                              color: Color.fromRGBO(
                                                  84, 89, 167, 1.0),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 200),
                                            width: 60,
                                            height: 60,
                                            child: RaisedButton(
                                              onPressed: () {
                                                DefaultTabController.of(context)
                                                    .animateTo(3);
                                              },
                                              shape: CircleBorder(),
                                              child: Icon(
                                                Icons.keyboard_arrow_right,
                                                color: Colors.white,
                                                size: 32,
                                              ),
                                              color: Color.fromRGBO(
                                                  84, 89, 167, 1.0),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(top: 40),
                                        child: Text(
                                          'Choose what suits you',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 30),
                                        width: 350,
                                        height: 170,
                                        child: RaisedButton(
                                          onPressed: () {
                                            setState(() {
                                              if (_modeselector1) {
                                                _selectedmode1 = BorderSide();
                                                _modeselector1 = false;
                                              } else {
                                                _selectedmode1 = BorderSide(
                                                    width: 5,
                                                    color: Color.fromRGBO(
                                                        30, 200, 30, 1.0));
                                                _modeselector1 = true;
                                                _selectedmode2 = BorderSide();
                                                _modeselector2 = false;
                                              }
                                            });
                                          },
                                          shape: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30.0),
                                            borderSide: _selectedmode1,
                                          ),
                                          elevation: 30,
                                          color: Colors.grey[200],
                                          child: Container(
                                            margin: EdgeInsets.only(top: 20),
                                            child: Column(
                                              children: <Widget>[
                                                //definded in the file pupspec.yaml
                                                Image.asset(
                                                  'assets/logobright.png',
                                                  width: 100,
                                                  height: 100,
                                                ),
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(top: 20),
                                                ),
                                                Text(
                                                  'Bright',
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          84, 89, 167, 1.0)),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 20),
                                        width: 350,
                                        height: 170,
                                        child: RaisedButton(
                                          onPressed: () {
                                            setState(() {
                                              if (_modeselector2) {
                                                _selectedmode2 = BorderSide();
                                                _modeselector2 = false;
                                              } else {
                                                _selectedmode2 = BorderSide(
                                                    width: 5,
                                                    color: Color.fromRGBO(
                                                        30, 200, 30, 1.0));
                                                _modeselector2 = true;
                                                _selectedmode1 = BorderSide();
                                                _modeselector1 = false;
                                              }
                                            });
                                          },
                                          shape: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30.0),
                                            borderSide: _selectedmode2,
                                          ),
                                          elevation: 30,
                                          color: Colors.grey[200],
                                          child: Container(
                                            margin: EdgeInsets.only(top: 20),
                                            child: Column(
                                              children: <Widget>[
                                                //definded in the file pupspec.yaml
                                                Image.asset(
                                                  'assets/logodark.png',
                                                  width: 100,
                                                  height: 100,
                                                ),
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(top: 20),
                                                ),
                                                Text(
                                                  'Dark',
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          84, 89, 167, 1.0)),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 40),
                                        width: 250,
                                        height: 55,
                                        child: RaisedButton(
                                          color:
                                              Color.fromRGBO(84, 89, 167, 1.0),
                                          elevation: 8,
                                          colorBrightness: Brightness.dark,
                                          onPressed: () {
                                            if (_modeselector1 == true ||
                                                _modeselector2 == true) {
                                              if (_modeselector2) {
                                                SystemChrome
                                                    .setSystemUIOverlayStyle(
                                                        SystemUiOverlayStyle
                                                            .dark
                                                            .copyWith(
                                                  statusBarColor:
                                                      Color.fromRGBO(
                                                          30, 30, 30, 1.0),
                                                  statusBarIconBrightness:
                                                      Brightness.light,
                                                  systemNavigationBarColor:
                                                      Color.fromRGBO(
                                                          30, 30, 30, 1.0),
                                                  systemNavigationBarIconBrightness:
                                                      Brightness.light,
                                                ));
                                                SystemChrome
                                                    .setEnabledSystemUIOverlays(
                                                        SystemUiOverlay.values);
                                                Navigator.pop(context);
                                                setState(() {
                                                  darktheme = true;
                                                });
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            new Log(
                                                                darktheme)));
                                              } else {
                                                SystemChrome
                                                    .setSystemUIOverlayStyle(
                                                        SystemUiOverlayStyle
                                                            .dark
                                                            .copyWith(
                                                  statusBarColor:
                                                      Colors.grey[200],
                                                  statusBarIconBrightness:
                                                      Brightness.dark,
                                                  systemNavigationBarColor:
                                                      Colors.grey[200],
                                                  systemNavigationBarIconBrightness:
                                                      Brightness.dark,
                                                ));
                                                SystemChrome
                                                    .setEnabledSystemUIOverlays(
                                                        SystemUiOverlay.values);
                                                setState(() {
                                                  darktheme = false;
                                                });
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            new Log(
                                                                darktheme)));
                                              }
                                            } else {
                                              showDialog<String>(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) =>
                                                          AlertDialog(
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          30.0),
                                                            ),
                                                            title: Text(
                                                                'Wait a minute'),
                                                            content: Container(
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left: 20,
                                                                      right:
                                                                          20),
                                                              child: Text(
                                                                  'Please choose a theme to proceed !'),
                                                            ),
                                                            actions: <Widget>[
                                                              FlatButton(
                                                                child: Text(
                                                                  'ok',
                                                                  style: TextStyle(
                                                                      color: Color.fromRGBO(
                                                                          84,
                                                                          89,
                                                                          167,
                                                                          1.0)),
                                                                ),
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        context,
                                                                        'ok'),
                                                              )
                                                            ],
                                                          ));
                                            }
                                          },
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30.0)),
                                          textColor: Colors.white,
                                          child: Text(
                                            'finish',
                                            style: TextStyle(
                                                fontSize: 30,
                                                fontFamily: 'Comfortaa'),
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
                        Container(
                          margin: EdgeInsets.only(bottom: 30),
                          child: TabPageSelector(
                              selectedColor: Colors.white, indicatorSize: 10),
                        ),
                      ],
                    ),
                  ),
            ),
          ),
        ));
  }
}
