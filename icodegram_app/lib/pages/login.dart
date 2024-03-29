import 'package:flutter/material.dart';

import '../component/text_field.dart';
import '../resources/auth_method.dart';
import 'home_screen.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isLoading = false;
  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  void loginUser() async {
    setState(() {
      _isLoading = true;
    });
    String result = await AuthMethods().loginUser(
        email: _emailController.text, password: _passwordController.text);
    if (result == 'success') {
      setState(() {
        _isLoading = false;
      });
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));

      print('Logged in');
    } else {
      print('Not logged in');
    }
    // if{result = 'success';
    //   print('Logged in');} else {
    //   print('Not logged in');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 32,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 2,
                child: Container(),
              ),
              Text(
                'Icodegram',
                style: TextStyle(
                    fontSize: 35.5333366394043, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 64,
              ),
              TextFieldInput(
                  hintText: 'Нэвтрэх нэр',
                  isPassword: false,
                  textEditingController: _emailController,
                  textInputType: TextInputType.emailAddress),
              SizedBox(
                height: 24,
              ),
              TextFieldInput(
                  hintText: 'Нууц үг',
                  isPassword: true,
                  textEditingController: _passwordController,
                  textInputType: TextInputType.text),
              SizedBox(
                height: 64,
              ),
              InkWell(
                  onTap: () {
                    loginUser();
                  },
                  child: _isLoading
                      ? Center(
                          child: CircularProgressIndicator(
                            color: Colors.white,
                          ),
                        )
                      : Text(
                          'Нэвтрэх',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              backgroundColor: Colors.orange),
                        )),
              Text(
                'Эсвэл',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Шинэ хэрэглэгч үү?',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'Бүртгүүлэх ',
                    style: TextStyle(
                      fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.orange),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Flexible(
                flex: 2,
                child: Container(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
