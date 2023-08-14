import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:lesson_20_flutter/pages/signup_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();

  runApp(const MaterialApp(
    home: SignUp(),
  ));
}

