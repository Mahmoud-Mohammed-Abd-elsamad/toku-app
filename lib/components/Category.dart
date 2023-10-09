import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  @override
  Category(this.name, this.color, {super.key});

  String name;
  int color;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
      alignment: Alignment.centerLeft,
      width: double.infinity,
      height: 65,
      color: Color(color),
      child: Text(
        name,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
      ),
    );
  }
}
