import 'package:flutter/material.dart';
import 'package:flutter_auth/models/user.dart';
import 'package:flutter_auth/screens/authenticate/auth.dart';
import 'package:flutter_auth/screens/home/home.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<MyUser>(context);
    print(user);
    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
