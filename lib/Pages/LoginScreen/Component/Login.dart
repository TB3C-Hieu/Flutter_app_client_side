import 'package:flutter/material.dart';
class LoginButton extends StatelessWidget{
  bool isButtonPressed = false;
  @override
  Widget build(BuildContext context){
    return Row(
      children: <Widget>[
      Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.cyan[500],
        borderRadius: BorderRadius.circular(10),
      ),
        child: RaisedButton(
          color: isButtonPressed ? Colors.grey:Colors.cyan[500],
          onPressed: () {
            Navigator.pushNamed(context, '/HomeScreen');
          },
        child: Center(
        child: Text(
          "Login",
          style: TextStyle(
            color: Colors.white,
            fontSize:  15,
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