import 'package:flutter/material.dart';
// import 'package:e_ticket/error.dart';

class ReusableCard extends StatelessWidget {
  final Widget childCard;
  ReusableCard({this.childCard});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      height: 180,
      child: childCard,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.blueAccent),
    );
  }
}
