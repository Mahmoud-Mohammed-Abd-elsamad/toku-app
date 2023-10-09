import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../models/Item.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key, required this.number, required this.color});
  final Item number;
  final int color;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Color(color),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 85,
            color: const Color(0xfffdf5d9),
            child: Image.asset(number.image!!),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  number.jbName,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  number.enName,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () async {
              try {
                final player = AudioPlayer();

                await player.play(AssetSource(number.sound));

              } catch (ex) {
                print(ex);
              }
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class ItemPhrase extends StatelessWidget {
  const ItemPhrase({super.key, required this.phrase});
  final Item phrase;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
     width: 299,
      height: 90,
      color: const Color(0xFF4dacc8),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  phrase.jbName
                  ,textAlign:TextAlign.left ,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  phrase.enName,
                    textAlign:TextAlign.left ,
                style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () async {
              try {
                final player = AudioPlayer();

                await player.play(AssetSource(phrase.sound));

                // AudioCache player = AudioCache(prefix: "assets/sounds/numbers/");
                // player.loadAsset("number_five_sound.mp3");
              } catch (ex) {
                print(ex);
              }
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
