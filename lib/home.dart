import 'dart:async';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dot/blocs/auth_bloc.dart';
import 'package:dot/blocs/bloc_provider.dart';
import 'package:dot/chats.dart';
import 'package:dot/contacts.dart';
import 'package:dot/log.dart';
import 'package:dot/main.dart';
import 'package:dot/profile.dart';
import 'package:dot/settings.dart';
import 'package:dot/wizard.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateHome();
  }
}

class _StateHome extends State<Home> with TickerProviderStateMixin {
  TabController _tabController;

  Widget _appBarTitle;
  AuthBloc bloc;
  @override
  void initState() {
    super.initState();
    bloc = BlocProvider.of<AuthBloc>(context);
    _tabController = new TabController(vsync: this, initialIndex: 0, length: 3);
    _tabController.addListener(_handleTabSelection);
    _appBarTitle = Text('chats', style: TextStyle(color: Colors.grey[200]));

    init();
  }

  void _handleTabSelection() {
    setState(() {
      if (_tabController.index == 0) {
        _appBarTitle = Text('chats',
            style: TextStyle(
                color: Wizard.darktheme ? Colors.grey[200] : Colors.grey[800]));
      } else if (_tabController.index == 1) {
        _appBarTitle = Text('contacts',
            style: TextStyle(
                color: Wizard.darktheme ? Colors.grey[200] : Colors.grey[800]));
      } else if (_tabController.index == 2) {
        _appBarTitle = Text('profile',
            style: TextStyle(
                color: Wizard.darktheme ? Colors.grey[200] : Colors.grey[800]));
      }
    });
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  List<String> _list;

  final DocumentReference = Firestore.instance.document("Data");

  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          exit(0);
        },
        child: Theme(
          data: Wizard.darktheme ? MyApp.themeDataDark : MyApp.themeDataBright,
          child: Scaffold(
            resizeToAvoidBottomPadding: true,
            body: DefaultTabController(
              length: 3,
              child: Scaffold(
                key: _scaffoldKey,
                appBar: AppBar(
                  elevation: 0,
                  brightness: Brightness.dark,
                  backgroundColor: Wizard.darktheme
                      ? Color.fromRGBO(44, 47, 51, 1.0)
                      : Colors.grey[300],
                  bottom: TabBar(
                    controller: _tabController,
                    indicatorWeight: 1,
                    tabs: [
                      Tab(
                          icon: Icon(Icons.forum,
                              color: Wizard.darktheme
                                  ? (_tabController.index == 0
                                      ? Colors.white
                                      : Colors.grey[400])
                                  : (_tabController.index == 0
                                      ? Colors.grey[800]
                                      : Colors.grey[600]))),
                      Tab(
                          icon: Icon(Icons.contacts,
                              color: Wizard.darktheme
                                  ? (_tabController.index == 1
                                      ? Colors.white
                                      : Colors.grey[400])
                                  : (_tabController.index == 1
                                      ? Colors.grey[800]
                                      : Colors.grey[600]))),
                      Tab(
                          icon: Icon(Icons.person,
                              color: Wizard.darktheme
                                  ? (_tabController.index == 2
                                      ? Colors.white
                                      : Colors.grey[400])
                                  : (_tabController.index == 2
                                      ? Colors.grey[800]
                                      : Colors.grey[600]))),
                    ],
                  ),
                  title: _appBarTitle,
                  actions: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(),
                      child: new Row(
                        children: <Widget>[
                          IconButton(
                            tooltip: 'Search',
                            color: Wizard.darktheme
                                ? Colors.grey[200]
                                : Colors.grey[800],
                            icon: const Icon(
                              Icons.search,
                            ),
                            onPressed: () {},
                          ),
                          Padding(padding: EdgeInsets.only()),
                          PopupMenuButton<Menu>(
                            icon: Icon(
                              Icons.more_vert,
                              color: Wizard.darktheme
                                  ? Colors.grey[200]
                                  : Colors.grey[800],
                            ),
                            onSelected: (Menu result) {
                              selectedOption(result);
                            },
                            itemBuilder: (BuildContext context) =>
                                <PopupMenuEntry<Menu>>[
                                  const PopupMenuItem<Menu>(
                                    value: Menu.setting1,
                                    child: Text('settings'),
                                  ),
                                  PopupMenuItem<Menu>(
                                    value: Menu.setting2,
                                    child: Row(
                                      children: <Widget>[
                                        Text(
                                          'dark theme',
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 15),
                                        ),
                                        Switch(
                                          value: Wizard.darktheme,
                                          onChanged: (bool changed) {
                                            setState(() {
                                              Wizard.darktheme = changed;
                                              if (!changed) {
                                                SystemChrome
                                                    .setSystemUIOverlayStyle(
                                                        SystemUiOverlayStyle
                                                            .light
                                                            .copyWith(
                                                  statusBarColor:
                                                      Color.fromRGBO(
                                                          44, 47, 51, 1.0),
                                                  statusBarIconBrightness:
                                                      Brightness.light,
                                                  systemNavigationBarColor:
                                                      Colors.grey[300],
                                                  systemNavigationBarIconBrightness:
                                                      Brightness.dark,
                                                ));
                                              } else {
                                                SystemChrome
                                                    .setSystemUIOverlayStyle(
                                                        SystemUiOverlayStyle
                                                            .light
                                                            .copyWith(
                                                  statusBarColor:
                                                      Color.fromRGBO(
                                                          44, 47, 51, 1.0),
                                                  statusBarIconBrightness:
                                                      Brightness.light,
                                                  systemNavigationBarColor:
                                                      Color.fromRGBO(
                                                          44, 47, 51, 1.0),
                                                  systemNavigationBarIconBrightness:
                                                      Brightness.light,
                                                ));
                                              }
                                              SystemChrome
                                                  .setEnabledSystemUIOverlays(
                                                      SystemUiOverlay.values);

                                              _handleTabSelection();
                                            });
                                            Navigator.pop(context);
                                          },
                                        )
                                      ],
                                    ),
                                  ),
                                  PopupMenuItem<Menu>(
                                    value: Menu.setting3,
                                    child: Row(
                                      children: <Widget>[
                                        Text('log out'),
                                        Padding(
                                          padding: EdgeInsets.only(left: 15),
                                        ),
                                        Icon(Icons.exit_to_app)
                                      ],
                                    ),
                                  ),
                                ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                body: TabBarView(
                  controller: _tabController,
                  children: [
                    Chats(),
                    Contacts(),
                    Profile(),
                  ],
                ),
              ),
            ),
          ),
        ));
  }

  Future<bool> _requestPop() {
    return new Future.value(false);
  }

  void init() {
    _list = List();
    _list.add("Google");
    _list.add("IOS");
    _list.add("Andorid");
    _list.add("Dart");
    _list.add("Flutter");
    _list.add("Python");
    _list.add("React");
    _list.add("Xamarin");
    _list.add("Kotlin");
    _list.add("Java");
    _list.add("RxAndroid");
  }

  void selectedOption(Menu result) {
    if (result.index == 0) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => new Settings()));
    } else if (result.index == 1) {
    } else if (result.index == 2) {
      print('log out');
      try {
        FirebaseAuth.instance.signOut();
      } catch (e) {
        print(e);
      }

      if (!Wizard.darktheme) {
        SystemChrome.setSystemUIOverlayStyle(
            SystemUiOverlayStyle.light.copyWith(
          statusBarColor: Color.fromRGBO(84, 89, 167, 1.0),
          statusBarIconBrightness: Brightness.light,
          systemNavigationBarColor: Colors.grey[200],
          systemNavigationBarIconBrightness: Brightness.dark,
        ));
        SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
      } else {
        SystemChrome.setSystemUIOverlayStyle(
            SystemUiOverlayStyle.light.copyWith(
          statusBarColor: Color.fromRGBO(84, 89, 167, 1.0),
          statusBarIconBrightness: Brightness.light,
          systemNavigationBarColor: Color.fromRGBO(30, 30, 30, 1.0),
          systemNavigationBarIconBrightness: Brightness.light,
        ));
        SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
        showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  title: Text('Signing out!'),
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
      }
      Future.delayed(const Duration(milliseconds: 4000), () {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => new Log(Wizard.darktheme)));
      });
    }
  }
}

enum Menu { setting1, setting2, setting3 }
