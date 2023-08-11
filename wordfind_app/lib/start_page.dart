import 'package:flutter/material.dart';
import 'package:wordfind_app/task_page.dart';
import 'package:wordfind_app/gradient_text.dart';
import 'package:wordfind_app/input_field.dart';
import 'dart:ui';
import 'models/user_model.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

User newUser = User("Guest", 0);

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    void _createUser(String userName) {
      setState(() {
        newUser.userName = userName;
      });
    }

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
          image: AssetImage('assets/back2.png'),
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
              Padding(padding: EdgeInsets.only(top: 20)),
              GradientText('Player Name', 20.0),
              Padding(
                padding: EdgeInsets.only(top: 50),
              ),
              InputField(
                onSubmitted: (String value) {
                  _createUser(value);
                },
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: StartButton(
        text: 'Start',
        newUser: newUser,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class StartButton extends StatelessWidget {
  User newUser;
  final String text;
  StartButton({super.key, required this.newUser, required this.text});

  @override
  Widget build(BuildContext context) {
    return newUser.userName == 'Guest'
        ? Container()
        : Container(
            width: 310,
            height: 60,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Color(0xFFE86B02), Color(0xFFFA9541)],
                ),
                borderRadius: BorderRadius.circular(25)),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TaskPage(newUser)));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: Text(
                text,
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          );
  }
}
