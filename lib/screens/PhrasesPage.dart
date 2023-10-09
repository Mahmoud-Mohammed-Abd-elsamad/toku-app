import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/components/ListItem.dart';

import '../models/Item.dart';

class PhrasePage extends StatelessWidget {
  List<Item> phrases = [
    Item(
        jbName: "Kimasu ka",
        enName: "are you coming",
        sound: "sounds/phrases/are_you_coming.wav"),
    Item(
        jbName: "Kōdoku suru koto o wasurenaide",
        enName: "dont forget to subscribe",
        sound: "sounds/phrases/dont_forget_to_subscribe.wav"),
    Item(
        jbName: "Go kibun wa ikagadesu ka.",
        enName: "how are you feeling",
        sound: "sounds/phrases/how_are_you_feeling.wav"),
    Item(
        jbName: "Watashi wa anime ga daisukidesu",
        enName: "i love anime",
        sound: "sounds/phrases/i_love_anime.wav"),
    Item(
        jbName: "Watashi wa puroguramingu ga",
        enName: "i love programming",
        sound: "sounds/phrases/i_love_programming.wav"),
    Item(
        jbName: "Puroguramingu wa kantandesu",
        enName: "programming is easy",
        sound: "sounds/phrases/programming_is_easy.wav"),
    Item(
        jbName: "Namae wa nandesu ka",
        enName: "what is your name",
        sound: "sounds/phrases/what_is_your_name.wav"),
    Item(
        jbName: "Doko ni iku no",
        enName: "where are you going",
        sound: "sounds/phrases/where_are_you_going.wav"),
    Item(
        jbName: "Hai, ikimasu",
        enName: "yes im coming",
        sound: "sounds/phrases/yes_im_coming.wav"),
  ];

  PhrasePage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Phrasese",
          style: TextStyle(color: Colors.white, fontSize: 23),
        ),
        backgroundColor: const Color(0xff412e27),
      ),
      body: ListView.builder(
          itemCount: phrases.length,
          itemBuilder: (BuildContext context, int index) {
            return ItemPhrase(phrase: phrases[index]);
          }),
    );
  }
}
