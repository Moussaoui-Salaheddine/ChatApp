import 'package:flutter/material.dart';
import 'profile.dart';
import 'chatpage.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateHome();
  }
}

class _StateHome extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(30, 30, 30, 1.0),
      resizeToAvoidBottomPadding: true,
      body: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(84, 89, 167, 1.0),
            bottom: TabBar(
              indicatorColor: Colors.deepPurple,
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
              new ChatPage(),
              Center(
                  child: Text(
                'calls',
                style: TextStyle(fontSize: 50),
              )),
              Center(
                  child: Text(
                'calls',
                style: TextStyle(fontSize: 50),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
