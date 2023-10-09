import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/components/ListItem.dart';

import '../models/Item.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Item> numbers = [
      Item(
          jbName: "Chichioya",
          enName: "father",
          image: "assets/images/family_members/family_father.png",
          sound: "sounds/family_members/father.wav"),
      Item(
          jbName: "Hahaoya",
          enName: "mother",
          image: "assets/images/family_members/family_mother.png",
          sound: "sounds/family_members/mother.wav"),
      Item(
          jbName: "Ojīsan",
          enName: "grandfather",
          image: "assets/images/family_members/family_grandfather.png",
          sound: "sounds/family_members/grand father.wav"),
      Item(
          jbName: "O bāchan",
          enName: "grandmothe",
          image: "assets/images/family_members/family_grandmother.png",
          sound: "sounds/family_members/grand mother.wav"),
      Item(
          jbName: "Musume",
          enName: "daughter",
          image: "assets/images/family_members/family_daughter.png",
          sound: "sounds/family_members/daughter.wav"),
      Item(
          jbName: "Kyōdai",
          enName: "brother",
          image: "assets/images/family_members/family_older_brother.png",
          sound: "sounds/family_members/older bother.wav"),
      Item(
          jbName: "Imōto",
          enName: "sister",
          image: "assets/images/family_members/family_older_sister.png",
          sound: "sounds/family_members/older sister.wav"),
      Item(
          jbName: "Musuko",
          enName: "son",
          image: "assets/images/family_members/family_son.png",
          sound: "sounds/family_members/son.wav"),
      Item(
          jbName: "Otōto",
          enName: "younger_brother",
          image: "assets/images/family_members/family_younger_brother.png",
          sound: "sounds/family_members/youngerbrohter.wav"),
      Item(
          jbName: "Imōto",
          enName: "younger_sister",
          image: "assets/images/family_members/family_younger_sister.png",
          sound: "sounds/family_members/younger_sister.wav"),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Family mempers",
          style: TextStyle(color: Colors.white, fontSize: 23),
        ),
        backgroundColor: const Color(0xff412e27),
      ),
      body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (BuildContext context, int index) {
            return ListItem(
              number: numbers[index],
              color: 0xFF568a35,
            );
          }),
    );
  }
}
