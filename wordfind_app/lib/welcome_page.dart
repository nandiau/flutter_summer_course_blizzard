import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:wordfind_app/gradient_letter.dart';
import 'package:wordfind_app/gradient_text.dart';
import 'package:wordfind_app/start_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBF5F2),
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
            'assets/back1.png',
          ))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  top: 200,
                ),
              ),
              Expanded(
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GradientLetter('W'),
                      GradientLetter('O'),
                      GradientLetter('R'),
                      GradientLetter('D'),
                    ],
                  ),
                  GradientText('Game', 31.6),
                  Image.asset(
                    'assets/iCodeGuy.png',
                  ),
                  Expanded(
                      child: GradientText(
                    'READY',
                    25.0,
                  )),
                ]),
              ),
            ],
          )),
      floatingActionButton: Container(
          width: 310,
          height: 60,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xFFE86B02), Color(0xFFFA9541)],
            ),
            borderRadius: BorderRadius.circular(25),
          ),
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => StartPage()));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  )),
              child: Text('PLAY',
                  style: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  )))),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
