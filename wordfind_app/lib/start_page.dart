import 'package:flutter/material.dart';
import 'package:wordfind_app/gradient_text.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBF5F2),
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset('assets/arrow_back.png'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: SizedBox(
          height: 50.0,
          child: Image.asset('assets/game_logo.png'),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/Back2.png'),
          fit: BoxFit.cover,
        )),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 50,
                ),
              ),
              Image.asset('assets/iCodeGuyHead.png'),
              GradientText('Player Name', 20.0),
              Padding(padding: EdgeInsets.only(top: 20)),
            ],
          ),
        ),
      ),
      floatingActionButton:
    );
  }
}