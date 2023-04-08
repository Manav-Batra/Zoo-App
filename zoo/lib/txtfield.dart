import 'package:flutter/material.dart';
import 'constant.dart';

class textfield extends StatelessWidget {
  textfield(this.text);
  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        onChanged: (value) {},
        style: TextStyle(color: Color(0xFF758756), fontWeight: FontWeight.bold),
        decoration: kuchkuch,
      ),
    );
  }
}
