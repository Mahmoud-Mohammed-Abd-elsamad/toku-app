import 'package:flutter/material.dart';
import 'package:untitled1/screens/ColorsPage.dart';
import 'package:untitled1/screens/Home.dart';

void main() {
  runApp(const Toku());
}

class Toku extends StatelessWidget {
  const Toku({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
