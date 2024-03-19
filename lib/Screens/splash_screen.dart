import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      setState(() {
        Navigator.of(context).pushReplacementNamed('home');
      });
    });
    return Scaffold(
      backgroundColor: const Color(0xff00b65f),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Spacer(),
            SizedBox(
              height: 300,
              width: 300,
              child: Image.asset('Assets/Img/logo.png'),
            ),
            Spacer(),
            const SizedBox(
              height: 50,
              width: 50,
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            ),
            const Text(
              'Resume Builder',
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 70,
            )
          ],
        ),
      ),
    );
  }
}
