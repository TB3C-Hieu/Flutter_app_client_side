import 'package:flutter/material.dart';

import 'Component/Header.dart';
import 'Component/InputWrapper.dart';

final TextEditingController usernameController = new TextEditingController();
final TextEditingController passwordController = new TextEditingController();

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _loginPageState();
  }
}

class _loginPageState extends State<LoginPage> {
  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Colors.cyan[500],
            Colors.cyan[300],
            Colors.cyan[400],
          ])),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 80,
              ),
              Header(),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60),
                    )),
                child: InputWrapper(),
              ))
            ],
          )),
      resizeToAvoidBottomPadding: false,
    );
  }
}
