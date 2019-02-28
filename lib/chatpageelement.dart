import 'package:flutter/material.dart';

class Chatpageelement extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateChatpageelemnt();
  }
}

class _StateChatpageelemnt extends State<Chatpageelement> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 7,
      shape: Border(
        bottom: BorderSide(color: Color.fromRGBO(255, 0, 169, 1.0), width: 2)
      ),
      child: Center(
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(top: 10),
                color: Colors.white,
                child: Image.asset(
                  'assets/defaultprofile.png',
                  height: 100,
                  width: 100,
                  scale: 1.0,
                  fit: BoxFit.fill,
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 20),),
              Text('Felix Kjilberg', style: TextStyle(fontSize: 15),),
              Padding(padding: EdgeInsets.only(top: 10),),
              Text('@PewDiePie', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12), )
          ],
        ),
      ),
    );
  }
}
