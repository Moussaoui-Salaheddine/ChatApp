import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateChat();
  }
}

class _StateChat extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      backgroundColor: Color.fromRGBO(30, 30, 30, 1.0),
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        elevation: 8,
        backgroundColor: Color.fromRGBO(84, 89, 167, 1.0),
        actions: <Widget>[
          Icon(
            Icons.person,
            size: 32,
          )
        ],
        title: Text('Name Name'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height - 136.222,
              color: Colors.black,
              child: ListView(),
            ),
            BottomAppBar(
              elevation: 0,
              child: AppBar(
                backgroundColor: Color.fromRGBO(30, 30, 30, 1.0),
                leading: Icon(Icons.menu),
                title: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide(color: Colors.white)
                    ),
                    hintText: 'Type'
                    ),
                ),
                actions: <Widget>[Icon(Icons.arrow_right)],
              ),
            )
          ],
        ),
      ),
    );
  }
}