import 'package:dot/messages.dart';
import 'package:dot/wizard.dart';
import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      new GlobalKey<RefreshIndicatorState>();
  @override
  void initState() {
    // WidgetsBinding.instance
    //     .addPostFrameCallback((_) => _refreshIndicatorKey.currentState.show());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RefreshIndicator(
          key: RIKeys.riKey,
          onRefresh: _refresh,
          child: Container(
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                Center(
                  child: Text(
                    '. . .',
                    style: TextStyle(
                      color: Wizard.darktheme
                          ? Colors.grey[500]
                          : Colors.grey[800],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                Messages(),
                Messages(),
                Messages(),
                Messages(),
                Messages(),
                Messages(),
                Messages(),
                Messages(),
                Messages(),
                Messages(),
                Messages(),
                Messages(),
                Messages(),
                Messages(),
                Messages(),
                Messages(),
                Messages(),
                Messages(),
                Messages(),
                Messages(),
              ],
            ),
          )),
    );
  }

  Future<Null> _refresh() async {
    setState(() {});
  }
}

class RIKeys {
  static final riKey = const Key('__RIKEY1__');
}
