import 'dart:async';
import 'package:dot/main.dart';
import 'package:dot/wizard.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Chat extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateChat();
  }
}

class _StateChat extends State<Chat> {
  List<String> _messages;

  TextEditingController _textFieldController = new TextEditingController();

  ScrollController scrollController;

  @override
  void initState() {
    _messages = List<String>();
    _messages.add("Hey what's up");
    _messages.add("hey");
    _messages.add("how are you");
    _messages.add("fine thx how ab u");

    scrollController = ScrollController();

    super.initState();
  }

  void handleSendingMessage() {
    setState(() {
      var text = _textFieldController.value.text.toString();
      if (text.isNotEmpty) {
        _textFieldController.clear();
        _messages.add(text);
      }
    });
    Future.delayed(Duration(milliseconds: 50), () {
      scrollController.animateTo(scrollController.position.maxScrollExtent,
          curve: Curves.easeOut, duration: Duration(milliseconds: 400));
    });
  }

  Widget build(BuildContext context) {
    var textinput = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(bottom: 5),
            child: TextField(
              controller: _textFieldController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[500], width: 0.5),
                    borderRadius: BorderRadius.circular(30.0)),
                disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[500], width: 0.5),
                    borderRadius: BorderRadius.circular(30.0)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[500], width: 0.5),
                    borderRadius: BorderRadius.circular(30.0)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[500], width: 0.5),
                    borderRadius: BorderRadius.circular(30.0)),
                hintText: 'Aa',
                hintStyle: TextStyle(color: Colors.grey[500]),
                prefixIcon: IconButton(
                  icon: Icon(
                    Icons.camera_alt,
                  ),
                  onPressed: () {},
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    Icons.send,
                  ),
                  onPressed: handleSendingMessage,
                ),
              ),
              onSubmitted: (text) {
                handleSendingMessage();
              },
            ),
          ),
        )
      ],
    );
    return WillPopScope(
        onWillPop: _requestPop,
        child: Theme(
          data: Wizard.darktheme ? MyApp.themeDataDark : MyApp.themeDataBright,
          child: Scaffold(
            resizeToAvoidBottomPadding: true,
            //backgroundColor: Color.fromRGBO(30, 30, 30, 1.0),
            appBar: AppBar(
              //elevation: 11,
              elevation: 0,
              brightness: Brightness.dark,
              backgroundColor: Wizard.darktheme
                  ? Color.fromRGBO(44, 47, 51, 1.0)
                  : Colors.grey[300],
              centerTitle: true,
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Wizard.darktheme ? Colors.grey[200] : Colors.grey[800],
                ),
                onPressed: _requestPop,
              ),
              title: Row(
                children: <Widget>[
                  Container(
                    width: 35,
                    height: 35,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/mark.png'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                  ),
                  Text(
                    'Zuccs',
                    style: TextStyle(
                        color: Wizard.darktheme
                            ? Colors.grey[200]
                            : Colors.grey[800]),
                  ),
                ],
              ),
              actions: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.info_outline,
                    color:
                        Wizard.darktheme ? Colors.grey[200] : Colors.grey[800],
                  ),
                )
              ],
            ),
            body: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: ListView.builder(
                      controller: scrollController,
                      itemCount: _messages.length,
                      itemBuilder: (BuildContext context, int index) {
                        if (index % 2 == 0) {
                          return getSentMessageLayout(index);
                        } else {
                          return getReceivedMessageLayout(index);
                        }
                      },
                    ),
                  ),
                  Divider(
                    height: 2.0,
                  ),
                  Container(
                    child: textinput,
                  )
                ],
              ),
            ),
          ),
        ));
  }

  Widget getSentMessageLayout(int index) {
    return Container(
      margin: EdgeInsets.only(
        top: 10,
        right: 5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Card(
            color: Color.fromRGBO(114, 137, 218, 1.0),
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(0),
                    topRight: Radius.circular(40.0),
                    topLeft: Radius.circular(40.0))),
            margin: EdgeInsets.only(right: 10),
            child: Container(
              margin: EdgeInsets.all(10),
              constraints: BoxConstraints(
                maxWidth: 200.0,
              ),
              child: Text(
                _messages[index],
                style: TextStyle(color: Colors.grey[200]),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getReceivedMessageLayout(int index) {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 10),
      child: Row(
        children: <Widget>[
          Container(
            width: 35,
            height: 35,
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/mark.png'),
            ),
          ),
          Card(
            color: Wizard.darktheme
                ? Color.fromRGBO(44, 47, 51, 1.0)
                : Colors.grey[350],
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                    topLeft: Radius.circular(40.0))),
            margin: EdgeInsets.only(left: 10),
            child: Container(
              constraints: BoxConstraints(
                maxWidth: 200.0,
              ),
              margin: EdgeInsets.all(10),
              child: Text(_messages[index]),
            ),
          ),
        ],
      ),
    );
  }

  Future<bool> _requestPop() {
    if (!Wizard.darktheme) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Color.fromRGBO(44, 47, 51, 1.0),
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: Colors.grey[300],
        systemNavigationBarIconBrightness: Brightness.dark,
      ));
    } else {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Color.fromRGBO(44, 47, 51, 1.0),
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: Color.fromRGBO(44, 47, 51, 1.0),
        systemNavigationBarIconBrightness: Brightness.light,
      ));
    }

    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);

    Navigator.pop(context);
  }

  // return <Widget>[
  //   new Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: <Widget>[
  //       new Container(
  //           margin: const EdgeInsets.only(right: 8.0),
  //           child: new CircleAvatar(
  //             backgroundImage: AssetImage('assets/logo.png'),
  //           )),
  //     ],
  //   ),
  //   new Expanded(
  //     child: new Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: <Widget>[
  //         new Text(_messages[index],
  //             style: new TextStyle(
  //                 fontSize: 14.0,
  //                 color: Colors.black,
  //                 fontWeight: FontWeight.bold)),
  //         new Container(
  //             margin: const EdgeInsets.only(top: 5.0),
  //             child: CircleAvatar(
  //               backgroundImage: AssetImage('assets/logo.png'),
  //             )),
  //       ],
  //     ),
  //   ),
  // ];

}

// class _StateChat extends State<Chat> {

//   List<String> _messages;

//

//   @override

//   void initState()
//   {
//        _messages = List<String>();
//        _messages.add('Hey What\'s up homie');
//        _messages.add('Hi gm');
//        _messages.add('whats a me me ?');
//        _messages.add('get outta here normie');

//         _textFieldController = TextEditingController();

//        super.initState();
//   }

//   Widget build(BuildContext context) {
//     return Scaffold(
//         resizeToAvoidBottomPadding: true,
//         backgroundColor: Color.fromRGBO(30, 30, 30, 1.0),
//         appBar: AppBar(
//           //elevation: 11,
//           backgroundColor: Color.fromRGBO(45, 42, 111, 1.0),
//           centerTitle: true,
//           title: Text(
//             'One',
//             style: TextStyle(color: Colors.grey[200]),
//           ),
//           actions: <Widget>[
//             IconButton(
//               onPressed: () {},
//               icon: Icon(
//                 Icons.info_outline,
//                 color: Colors.grey[200],
//               ),
//             )
//           ],
//         ),
//         body: Column(
//           children: <Widget>[
//             Expanded(
//               child: ListView.builder(
//                 itemCount: _messages.length,
//                 itemBuilder: (context, index) {
//                   bool reverse = false;

//                   if(index % 2 ==0){
//                     reverse = true;
//                   }

//                   var avatar = Padding(
//                     padding: const EdgeInsets.only(bottom: 8, left: 8, right: 8),
//                     child: CircleAvatar(
//                       child: Text('A'),
//                     ),
//                   );

//                   var traingle = CustomPaint(
//                     painter: Triangle(),
//                   );

//                   var messagebody = DecoratedBox(
//                     decoration: BoxDecoration(
//                       color: Colors.amber,
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     child: Align(
//                       alignment: Alignment.centerLeft,
//                       child: Padding(
//                         padding: const EdgeInsets.all(12),
//                         child: Text(_messages[index]),
//                       ),
//                     ),
//                   );

//                   Widget message;

//                 },
//               ),
//             )
//           ],
//         ),
//         bottomNavigationBar: BottomAppBar(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisSize: MainAxisSize.min,
//             children: <Widget>[
//               Expanded(
//                 child: TextField(
//                   controller: _textFieldController,
//                 ),
//               ),
//               IconButton(
//                 icon: Icon(Icons.send),
//                 onPressed: () {},
//               )
//             ],
//           ),
//         ));
//   }
// }

// class Triangle extends CustomPainter
// {
//   @override
//   void paint(Canvas canvas, Size size) {
//     var paint = Paint()..color = Colors.amber;

//     var path = Path();
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return null;
//   }

// }
