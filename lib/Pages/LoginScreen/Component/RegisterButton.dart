import 'package:appro/Pages/Register/Register.dart';
import 'package:flutter/material.dart';
import 'package:appro/Routing_Handler/Routing_Handler.dart';
class RegisterButton extends StatelessWidget {
  bool isButtonPressed = false;

  @override
  Widget build(BuildContext context) {
    return Row(
        children: <Widget>[
          Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.cyan[500],
                borderRadius: BorderRadius.circular(10),
              ),
              child: RaisedButton(
                color: isButtonPressed ? Colors.grey : Colors.cyan[500],
                onPressed: () {
                  Navigator.pushNamed(context, '/Register');
                },
                child: Center(
                  child: Text(
                    "Register",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              )
          )
        ]
    );
  }

}