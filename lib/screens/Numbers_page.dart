import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/ListItem.dart';
import '../models/Item.dart';

class NumbersPage extends StatelessWidget {
  List<Item> numbers = [
    Item(
        jbName: "ichi",
        enName: "one",
        image: "assets/images/numbers/number_one.png",
        sound: "sounds/numbers/number_one_sound.mp3"),
    Item(
        jbName: "ni",
        enName: "tow",
        image: "assets/images/numbers/number_two.png",
        sound: "sounds/numbers/number_two_sound.mp3"),
    Item(
        jbName: "mittsu",
        enName: "three",
        image: "assets/images/numbers/number_three.png",
        sound: "sounds/numbers/number_three_sound.mp3"),
    Item(
        jbName: "shi",
        enName: "four",
        image: "assets/images/numbers/number_four.png",
        sound: "sounds/numbers/number_four_sound.mp3"),
    Item(
        jbName: "go",
        enName: "five",
        image: "assets/images/numbers/number_five.png",
        sound: "sounds/numbers/number_five_sound.mp3"),
    Item(
        jbName: "roku",
        enName: "six",
        image: "assets/images/numbers/number_six.png",
        sound: "sounds/numbers/number_six_sound.mp3"),
    Item(
        jbName: "sebun",
        enName: "seven",
        image: "assets/images/numbers/number_seven.png",
        sound: "sounds/numbers/number_seven_sound.mp3"),
    Item(
        jbName: "hachi",
        enName: "eight",
        image: "assets/images/numbers/number_eight.png",
        sound: "sounds/numbers/number_eight_sound.mp3"),
    Item(
        jbName: "kyu",
        enName: "nine",
        image: "assets/images/numbers/number_nine.png",
        sound: "sounds/numbers/number_nine_sound.mp3"),
    Item(
        jbName: "ju",
        enName: "ten",
        image: "assets/images/numbers/number_ten.png",
        sound: "sounds/numbers/number_ten_sound.mp3"),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Numberes",
          style: TextStyle(color: Colors.white, fontSize: 23),
        ),
        backgroundColor: const Color(0xff412e27),
      ),
      body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (BuildContext context, int index) {
            return ListItem(
              number: numbers[index],
              color: 0xFFf09135,
            );
          }),
    );
  }
}
