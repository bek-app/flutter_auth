import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: size.height,
        alignment: Alignment.center,
        child: Stack(children: <Widget>[
          Positioned(child: Image.asset("assets/images/main_top.png"))
        ]),
      ),
    );
  }
}
