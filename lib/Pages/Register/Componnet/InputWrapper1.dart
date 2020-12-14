import 'package:flutter/material.dart';

import 'SubmitButton.dart';
import 'InputField1.dart';

class InputWrapper1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all((30)),
      child: Column(
        children: <Widget> [
          SizedBox(height: 40,),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
              ),
            child: InputField1(),
            ),
      SizedBox(height: 40),
          SubmitButton(),
        ]
      )
    );
  }
}