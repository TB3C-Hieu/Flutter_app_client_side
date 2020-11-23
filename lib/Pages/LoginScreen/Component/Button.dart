import 'package:flutter/material.dart';
class Button extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Column(
      children: <Widget>[
      Container(
      height: 50,
      margin: EdgeInsets.fromLTRB(50, 10, 50, 20),
      decoration: BoxDecoration(
        color: Colors.cyan[500],
        borderRadius: BorderRadius.circular(10),
      ),
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
    ),
        Container(
          height: 50,
          margin: EdgeInsets.symmetric(horizontal: 50),
          decoration: BoxDecoration(
            color: Colors.cyan[500],
            borderRadius: BorderRadius.circular(10),
          ),
        child: RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/Register');
          },
          child: Center(
            child: Text(
              "Register",
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