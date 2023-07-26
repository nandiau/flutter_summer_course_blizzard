import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            _buildProfileImage(context),
            _buildProfileDetails(context),
            _buildActions(context)
          ],
        ),
      ),
    );
  }

  Widget _buildProfileImage(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      child: ClipOval(
        child: Image.asset('assets/dog.jpg', fit: BoxFit.fitWidth),
      ),
    );
  }

  Widget _buildProfileDetails(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "Wolfram Barkovich",
            style: TextStyle(
              fontSize: 35,
            ),
          ),
        ]));
  }



  Widget _buildActions(BuildContext context) {
    return Container();
  }
}
