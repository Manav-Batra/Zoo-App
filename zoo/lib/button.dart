import 'package:flutter/material.dart';

class roundbutton extends StatelessWidget {
  roundbutton(this.data, this.onpressed, this.colorbg, this.colortxt);
  final Color colorbg, colortxt;
  final String data;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: colorbg,
        borderRadius: BorderRadius.circular(10.0),
        child: MaterialButton(
          onPressed: onpressed,
          minWidth: 150.0,
          height: 42.0,
          child: Text(
            data,
            style: TextStyle(color: colortxt),
          ),
        ),
      ),
    );
  }
}
