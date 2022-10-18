import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  IconData? icon;
  Color? color;
  Item({this.color, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.0845,
      width: MediaQuery.of(context).size.width * 0.18,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(width: 2, color: color!),
      ),
      child: Center(
          child: Icon(
        icon,
        color: color,
        size: 35,
      )),
    );
  }
}
