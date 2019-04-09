import 'package:flutter/material.dart';

class TabbedAppBarSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new DefaultTabController(
        length: 3,
        child: new Scaffold(
          appBar: new AppBar(
            backgroundColor: Color.fromRGBO(84, 89, 167, 1.0),
            title: const Text('DOT'),
            bottom: new TabBar(
                isScrollable: true,
                indicatorColor: Colors.white,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white70,
                tabs: [
                  new Container(
                    width: 85.0,
                    child: new Tab(icon: new Icon(Icons.chat_bubble)),
                  ),
                  new Container(
                    width: 85.0,
                    child: new Tab(icon: new Icon(Icons.people)),
                  ),
                  new Container(
                    width: 85.0,
                    child: new Tab(icon: new Icon(Icons.person)),
                  ),
                ]),
          ),
          body: new TabBarView(
            children: [
              new ListView(
                children: list,
              ),
              new ListView(
                children: listt,
              ),
              Container()
            ],
          ),
        ),
      ),
    );
  }
}

List<Widget> list = <Widget>[
  new ListTile(
    title: new Text('one',
        style: new TextStyle(fontWeight: FontWeight.w100, fontSize: 20.0)),
    subtitle: Container(
     margin: EdgeInsets.only(right: 150),
      child: new Text(
        '1111111111111111111111111111111111111111111111111',

        overflow: TextOverflow.ellipsis,
        
        maxLines: 1,
      ),
    ),
    leading: new CircleAvatar(
      radius: 30.0,
      backgroundColor: Colors.transparent,
      backgroundImage: new AssetImage(
          "assets/53229497_258605945032392_9196284412558311424_n.JPG"),
    ),
  ),
  Divider(),
  new ListTile(
    title: new Text('one',
        style: new TextStyle(fontWeight: FontWeight.w100, fontSize: 20.0)),
    subtitle: new Text(
      '11111111111111',
      maxLines: 1,
    ),
    leading: new CircleAvatar(
      radius: 30.0,
      backgroundColor: Colors.transparent,
      backgroundImage: new AssetImage(
          "assets/53229497_258605945032392_9196284412558311424_n.JPG"),
    ),
  ),
  Divider(),
  new ListTile(
    title: new Text('one',
        style: new TextStyle(fontWeight: FontWeight.w100, fontSize: 20.0)),
    subtitle: new Text(
      '11111111111111',
      maxLines: 1,
    ),
    leading: new CircleAvatar(
      radius: 30.0,
      backgroundColor: Colors.transparent,
      backgroundImage: new AssetImage(
          "assets/53229497_258605945032392_9196284412558311424_n.JPG"),
    ),
  ),
  Divider(),
  new ListTile(
    title: new Text('one',
        style: new TextStyle(fontWeight: FontWeight.w100, fontSize: 20.0)),
    subtitle: new Text(
      '11111111111111',
      maxLines: 1,
    ),
    leading: new CircleAvatar(
      radius: 30.0,
      backgroundColor: Colors.transparent,
      backgroundImage: new AssetImage(
          "assets/53229497_258605945032392_9196284412558311424_n.JPG"),
    ),
  ),
  Divider(),
  new ListTile(
    title: new Text('one',
        style: new TextStyle(fontWeight: FontWeight.w100, fontSize: 20.0)),
    subtitle: new Text(
      '11111111111111',
      maxLines: 1,
    ),
    leading: new CircleAvatar(
      radius: 30.0,
      backgroundColor: Colors.transparent,
      backgroundImage: new AssetImage(
          "assets/53229497_258605945032392_9196284412558311424_n.JPG"),
    ),
  ),
  Divider(),
  new ListTile(
    title: new Text('one',
        style: new TextStyle(fontWeight: FontWeight.w100, fontSize: 20.0)),
    subtitle: new Text(
      '11111111111111',
      maxLines: 1,
    ),
    leading: new CircleAvatar(
      radius: 30.0,
      backgroundColor: Colors.transparent,
      backgroundImage: new AssetImage(
          "assets/53229497_258605945032392_9196284412558311424_n.JPG"),
    ),
  ),
  Divider(),
  new ListTile(
    title: new Text('one',
        style: new TextStyle(fontWeight: FontWeight.w100, fontSize: 20.0)),
    subtitle: new Text(
      '11111111111111',
      maxLines: 1,
    ),
    leading: new CircleAvatar(
      radius: 30.0,
      backgroundColor: Colors.transparent,
      backgroundImage: new AssetImage(
          "assets/53229497_258605945032392_9196284412558311424_n.JPG"),
    ),
  ),
  new FloatingActionButton(
      elevation: 0.70,
      child: new Icon(Icons.add_comment),
      backgroundColor: new Color.fromRGBO(84, 89, 167, 1.0),
      onPressed: () {}),
];

List<Widget> listt = <Widget>[
  new ListTile(
    title: new Text('one',
        style: new TextStyle(fontWeight: FontWeight.w100, fontSize: 20.0)),
    subtitle: new Text(
      '11111111111111',
      maxLines: 1,
    ),
    leading: new CircleAvatar(
      radius: 30.0,
      backgroundColor: Colors.transparent,
      backgroundImage: new AssetImage(
          "assets/53229497_258605945032392_9196284412558311424_n.JPG"),
    ),
  ),
  new FloatingActionButton(
      elevation: 0.70,
      child: new Icon(Icons.add),
      backgroundColor: new Color.fromRGBO(84, 89, 167, 1.0),
      onPressed: () {})
];

void main() {
  runApp(new TabbedAppBarSample());
}
