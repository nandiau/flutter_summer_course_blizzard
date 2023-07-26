import 'package:flutter/material.dart';
import 'package:wordfind_app/welcome_page.dart';

void main() {
  print('Word Find Game');

  MaterialApp myapp = MaterialApp(
      title: 'Word Find Game',
      theme: ThemeData(fontFamily: 'Ribeye'),
      home: WelcomePage());

  runApp(myapp);
}
