import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';

class UserManagment {
  storenewUser(user, context) {
    Firestore.instance
        .collection("/users")
        .add({
          'email':user.email,
          'password': user.password
        })
        .then((value) {
          Navigator.of(context).pop();
          Navigator.of(context).pushReplacementNamed('/home');
        })
        .catchError((e) {
          print(e);
        });
  }
}
