import 'package:appro/Pages/Register/Componnet/Header1.dart';
import 'package:appro/Pages/Register/Componnet/InputWrapper1.dart';
import 'package:flutter/material.dart';

final TextEditingController regisusernameController =
    new TextEditingController();
final TextEditingController regispasswordController =
    new TextEditingController();
final TextEditingController usernamecheckingController =
    new TextEditingController();
final TextEditingController passwordcheckingController =
    new TextEditingController();

class Register extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _registerPageState();
  }
}

class _registerPageState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Colors.cyan[500],
            Colors.cyan[400],
            Colors.cyan[300],
          ])),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 80,
              ),
              Header1(),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60),
                    )),
                child: InputWrapper1(),
              ))
            ],
          )),
      resizeToAvoidBottomPadding: false,
    );
  }
}
