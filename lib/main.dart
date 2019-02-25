import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'home.dart';
import 'login.dart';
import 'logedout.dart';

void main() {

  runApp(new Chat());
}

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Login();
  }
}
