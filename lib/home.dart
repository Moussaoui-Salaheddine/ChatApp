import 'package:flutter/material.dart';
import 'chatpage.dart';
import 'profile.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateHome();
  }
}

class _StateHome extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Color.fromRGBO(128, 0, 64, 1.0),
          accentColor: Colors.cyan[600],
          canvasColor: Colors.grey[200],
          fontFamily: 'Montserrat',
          textTheme: TextTheme(
            headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
            title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
            body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          floatingActionButton: new FloatingActionButton(
            onPressed: () {},
            backgroundColor: Color.fromRGBO(128, 0, 64, 1.0),
            child: Icon(
              Icons.add,
              size: 35,
            ),
          ),
          body: DefaultTabController(
            length: 3,
            child: Scaffold(
              appBar: AppBar(
                bottom: TabBar(
                  indicatorColor: Color.fromRGBO(255, 128, 191, 1.0),
                  indicatorWeight: 3.5,
                  tabs: [
                    Tab(icon: Icon(Icons.chat)),
                    Tab(icon: Icon(Icons.call)),
                    Tab(icon: Icon(Icons.person)),
                  ],
                ),
                title: Text('Flapper  <beta>'),
                actions: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: new Row(
                      children: <Widget>[
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            size: 32,
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(10)),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.settings,
                            size: 32,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              body: TabBarView(
                children: [
                  new Chatpage(),
                  Center(
                      child: Text(
                    'calls',
                    style: TextStyle(fontSize: 50),
                  )),
                  new Profile()
                ],
              ),
            ),
          ),
        ));
  }
}
