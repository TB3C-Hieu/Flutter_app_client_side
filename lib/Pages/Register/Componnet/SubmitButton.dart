import 'package:appro/Models/UserCred/Cred.dart';
import 'package:appro/Pages/Register/Register.dart';
import 'package:appro/Processors/PreApi/PreAPI.dart';
import 'package:appro/Variables/Global.dart';
import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  bool isButtonPressed = false;
  PreAPI _helper = PreAPI();

  Future<int> register() async {
    final cred = Cred(
        userName: regisusernameController.text,
        userPassword: regispasswordController.text);

    final response = await _helper.post('/account/register', cred.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        margin: EdgeInsets.symmetric(horizontal: 50),
        decoration: BoxDecoration(
          color: Colors.cyan[500],
          borderRadius: BorderRadius.circular(10),
        ),
        child: RaisedButton(
          color: isButtonPressed ? Colors.grey : Colors.cyan[500],
          onPressed: () async {
            int status = await this.register();
            if (status != null && status != 0) {
              Global_Variables.getInstance().accountId = status;
              Navigator.pushNamed(context, '/HomeScreen');
            } else {
              Navigator.pushNamed(context, '/');
            }
          },
          child: Center(
            child: Text(
              "Sign up",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ));
  }
}
