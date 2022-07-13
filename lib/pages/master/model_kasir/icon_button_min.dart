import 'package:flutter/material.dart';

class ButtonMin extends StatelessWidget {
  final IconData icon;
  final Function onPressed;
  ButtonMin({this.icon, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      child: Icon(
        Icons.remove,
        size: 20,
        color: Colors.white,
      ),
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(width: 56, height: 56.0),
      fillColor: Colors.black38,
      shape: CircleBorder(),
    );
  }
}
