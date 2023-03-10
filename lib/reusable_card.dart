import 'package:flutter/material.dart';
class ResusableCard extends StatelessWidget {
  final Color colour;
  final childCard;
  const ResusableCard({super.key, required this.colour, this.childCard,});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: childCard,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(color: colour, borderRadius: BorderRadius.circular(10.0)),
      height: 300.0,

    );
  }
}