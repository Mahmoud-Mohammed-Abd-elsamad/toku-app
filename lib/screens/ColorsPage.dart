import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/components/ListItem.dart';
import '../models/Item.dart';

class ColorsPage extends StatelessWidget {
  List<Item> colorsList = [
    Item(
        jbName: "Chairo",
        enName: "brown",
        image: "assets/images/colors/color_brown.png",
        sound: "sounds/colors/brown.wav"),
    Item(
        jbName: "Dasutiierō",
        enName: "dusty_yellow",
        image: "assets/images/colors/color_dusty_yellow.png",
        sound: "sounds/colors/dusty yellow.wav"),
    Item(
        jbName: "Gurē",
        enName: "gray",
        image: "assets/images/colors/color_gray.png",
        sound: "sounds/colors/gray.wav"),
    Item(
        jbName: "Midori",
        enName: "green",
        image: "assets/images/colors/color_green.png",
        sound: "sounds/colors/green.wav"),
    Item(
        jbName: "Ashi",
        enName: "reed",
        image: "assets/images/colors/color_red.png",
        sound: "sounds/colors/red.wav"),
    Item(
        jbName: "Shiro",
        enName: "white",
        image: "assets/images/colors/color_white.png",
        sound: "sounds/colors/white.wav"),
    Item(
        jbName: "Kiiro",
        enName: "yellow",
        image: "assets/images/colors/yellow.png",
        sound: "sounds/colors/yellow.wav"),
    Item(
        jbName: "Kuro",
        enName: "black",
        image: "assets/images/colors/color_black.png",
        sound: "sounds/colors/black.wav"),
  ];

  ColorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Colors",
          style: TextStyle(color: Color(0xffFFFFFF), fontSize: 22),
        ),
        backgroundColor: const Color(0xFF2c2625),
      ),
      body: ListView.builder(
        itemCount: colorsList.length,
        itemBuilder: (BuildContext context, int index) {
          return ListItem(number: colorsList[index], color: 0xFF79339c);
        },
      ),
    );
  }
}
