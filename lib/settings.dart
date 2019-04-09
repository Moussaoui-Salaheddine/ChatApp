import 'package:dot/main.dart';
import 'package:dot/wizard.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateSettings();
  }
}

class _StateSettings extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Theme(
        data: Wizard.darktheme ? MyApp.themeDataDark : MyApp.themeDataBright,
        child: Scaffold(
            resizeToAvoidBottomPadding: true,
            appBar: AppBar(
              elevation: 0,
              brightness: Brightness.dark,
              backgroundColor: Wizard.darktheme
                  ? Color.fromRGBO(44, 47, 51, 1.0)
                  : Colors.grey[300],
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Wizard.darktheme ? Colors.grey[200] : Colors.grey[800],
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              centerTitle: true,
              title: Text(
                'settings',
                style: TextStyle(
                    color:
                        Wizard.darktheme ? Colors.grey[200] : Colors.grey[800]),
              ),
              actions: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.help_outline,
                    color:
                        Wizard.darktheme ? Colors.grey[200] : Colors.grey[800],
                  ),
                  onPressed: () {},
                )
              ],
            )));
  }
}
