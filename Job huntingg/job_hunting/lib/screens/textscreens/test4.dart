import 'package:flutter/material.dart';

class Test4 extends StatelessWidget {
  const Test4({Key? key}) : super(key: key);

  // signOut() async {
  //   await auth.signOut();
  //   Navigator.pushReplacement(
  //       context, MaterialPageRoute(builder: (context) => SignInScreen()));

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text(
          "Test Screen\nWe are working on it",
          style: TextStyle(color: Theme.of(context).primaryColor),
        ));
  }
}