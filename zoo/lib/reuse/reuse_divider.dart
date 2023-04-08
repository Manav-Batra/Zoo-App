import 'package:flutter/material.dart';

class reusedivider extends StatelessWidget {
  const reusedivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      child: Divider(
        thickness: 2.0,
        color: Color(0xFF25310B),
      ),
    );
  }
}
