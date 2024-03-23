import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
       body:  Center(
      child: Positioned(
        width: size.width * 0.3,
        child: Image.asset(
          width: size.width * 0.4,
        'assets/logo.jpeg'
      ),)
    ));
  }
}
