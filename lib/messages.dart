import 'package:dot/wizard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'chat.dart';

class Messages extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateMessages();
  }
}

class _StateMessages extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        SystemChrome.setSystemUIOverlayStyle(
            SystemUiOverlayStyle.light.copyWith(
          systemNavigationBarColor: Colors.black,
          statusBarIconBrightness: Brightness.light,
          systemNavigationBarIconBrightness: Brightness.light,
        ));
        SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => new Chat()));
      },
      child: Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(top: 15),
          child: Column(
            children: <Widget>[
              Container(
                child: ListTile(
                  title: Text('Mark zucc ',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Comfortaa',
                      )),
                  subtitle: Row(
                    children: <Widget>[
                      Flexible(
                        child: Text(
                          'just sent you a messageee  eeeeeee',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            '8:00 Am',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 15,
                                color: Wizard.darktheme
                                    ? Color.fromRGBO(114, 137, 218, 1.0)
                                    : Color.fromRGBO(255, 111, 105, 1.0)),
                            maxLines: 1,
                          ),
                        ],
                      ),
                    ],
                  ),
                  leading: Container(
                    width: 65,
                    height: 65,
                    child: CircleAvatar(
                      radius: 30.0,
                      backgroundColor: Wizard.darktheme
                          ? Color.fromRGBO(114, 137, 218, 1.0)
                          : Color.fromRGBO(255, 111, 105, 1.0),
                      child: CircleAvatar(
                        radius: 30.0,
                        backgroundImage: AssetImage("assets/mark.png"),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
