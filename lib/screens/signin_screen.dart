import 'package:firebase_auth/utils/colors_utils.dart';
import 'package:flutter/material.dart';

import '../reusable_widget/reusable_widget.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            hexSringToColor('CB2B93'),
            hexSringToColor('9546c4'),
            hexSringToColor('5e61f4'),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Column(
              children: <Widget>[
                logoWidget('assets/images/logo.png'),
                SizedBox(
                  height: 30,
                ),
                reusableTextField('Enter UserName', Icons.person_outline, false,
                    _emailTextController),
                SizedBox(
                  height: 30,
                ),
                reusableTextField('Enter Password', Icons.lock_outline, false,
                    _passwordTextController),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
