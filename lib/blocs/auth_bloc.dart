import 'package:dot/blocs/bloc_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthBloc extends BlocBase {
  FirebaseUser currentUser;
  AuthBloc() {
    FirebaseAuth.instance.onAuthStateChanged.listen((onData) {
      if (onData != null) {
        print('user changed');
        currentUser = onData;
      }
    });
  }

  @override
  void dispose() {}
}
