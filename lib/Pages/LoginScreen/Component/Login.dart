import 'package:appro/Models/Cred.dart';
import 'package:appro/Pages/LoginScreen/LoginPage.dart';
import 'package:appro/Processors/PreApi/PreAPI.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  PreAPI _helper = PreAPI();

  Future<int> login() async {
    final cred = Cred(
        userName: usernameController.text,
        userPassword: passwordController.text);

    final response = await _helper.post(
      '/account/login',
      cred.toString(),
    );

    print(cred.toString());
    print(usernameController.text);
    print(passwordController.text);
    print(response);

    return int.parse(response.toString());
  }

  bool isButtonPressed = false;
  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Container(
          height: 50,
          decoration: BoxDecoration(
            color: Colors.cyan[500],
            borderRadius: BorderRadius.circular(10),
          ),
          child: RaisedButton(
            color: isButtonPressed ? Colors.grey : Colors.cyan[500],
            onPressed: () async {
              int status = await this.login();
              if (status != null && status != 0) {
                Navigator.pushNamed(context, '/HomeScreen');
              } else {
                Navigator.pushNamed(context, '/');
              }
            },
            child: Center(
              child: Text(
                "Login",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ))
    ]);
  }
}
