import 'package:dot/blocs/auth_bloc.dart';
import 'package:dot/blocs/bloc_provider.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateProfile();
  }
}

class _StateProfile extends State<Profile> {
  AuthBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = BlocProvider.of<AuthBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 100),
      child: Center(
          child: Column(
        children: <Widget>[
          Container(width: 200, height: 200, child: CircleAvatar()),
          Padding(
            padding: EdgeInsets.only(top: 20),
          ),
          Text(
            '. . .',
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
          ),
          Text(
            '${bloc?.currentUser?.email}',
          )
        ],
      )),
    );
  }
}
