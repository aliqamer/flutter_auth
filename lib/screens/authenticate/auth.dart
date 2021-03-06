import 'package:flutter/material.dart';
import 'package:flutter_auth/screens/authenticate/register.dart';
import 'package:flutter_auth/screens/authenticate/signin.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showSignIn = true;

  void toggleView() {
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return Container(child: SignIn(toggleView: toggleView));
    } else {
      return Container(child: Register(toggleView: toggleView));
    }
  }
}
