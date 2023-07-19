import 'package:flutter/material.dart';

void main() {
  print('Day 11 Flutter application');

  const MaterialApp myapp = MaterialApp(
      home: Center(
    child: Text(
      'Hello Blizzard',
      style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 24),
    ),
  ));

  MaterialApp myNextApp = MaterialApp(
      title: 'Word Find Game',
      theme: ThemeData(fontFamily: 'Ribeye'),
      home: const Scaffold(
        body: Center(
          child: Text(
            'Hello Blizzard',
            style: TextStyle(fontSize: 24, color: Color(0x3d913bFF)),
          ),
        ),
      ));

  final MyNiceApp temuujin = MyNiceApp();
  runApp(temuujin);
}

class MyNiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
      title: const Text('My nice app'),
    ),
          body: Container(
            child: Center(
              child: Text(
                  'Hello',
             style: TextStyle(fontSize: 24, color: Color(0xfff33322)),
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {  },
            child: Image.asset(
              'assets/images.png',
              width: 200,
            )

          )

          ,
        ),
    );
  }
}
