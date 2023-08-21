import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> names = [
    'Sara',
    'Bob',
    'Tori',
    'Felix',
    'Alex',
    'Lana',
    'Jenny',
    'Zane',
    'Elanore',
    'Mattew',
    'Daniel',
    'Klara',
    'Robin',
    'Ruffy',
    'Dave',
    'Tom',
    'Jane',
    'Jasmin',
    'Luis',
    'Yandag',
    'Olie',
    'Tim',
    'Violet',
    'Liz',
    'Penelophe',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeScreen'),
      ),
      body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: names.length,
          itemBuilder: (context, index) {
            return Container(
              height: 50,
              width: 50,
              color: Colors.yellow,
              child: Text(names[index]),
            );
          }),
    );
  }
}
