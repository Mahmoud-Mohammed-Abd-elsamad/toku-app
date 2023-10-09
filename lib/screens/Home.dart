import 'package:flutter/material.dart';
import 'package:untitled1/screens/ColorsPage.dart';
import 'package:untitled1/screens/Numbers_page.dart';
import 'package:untitled1/screens/PhrasesPage.dart';

import 'Family_page.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toku'),
        backgroundColor: const Color(0xFF2c2625),
      ),
      backgroundColor: const Color(0xFFfff5da),
      body: Column(
        children: [
          Category(
            name: "Numbers",
            color: 0xFFf09135,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NumbersPage()));
            },
          ),
          Category(
            name: "Family members",
            color: 0xFF568a35,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const FamilyPage()));
            },
          ),
          Category(
            name: "Colors",
            color: 0xFF79339c,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ColorsPage()),
              );
            },
          ),
          Category(
            name: "Phrasese",
            color: 0xFF4dacc8,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PhrasePage()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  @override
  Category({super.key, required this.name, required this.color, this.onTap});

  String name;
  int color;
  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
        alignment: Alignment.centerLeft,
        width: double.infinity,
        height: 65,
        color: Color(color),
        child: Text(
          name,
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
