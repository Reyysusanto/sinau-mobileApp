import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mainn/shared/theme.dart';


class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>{
  
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 1), (){
      Navigator.pushNamedAndRemoveUntil(
        context, '/onboarding', (route) => false
        );
      },
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: Center(
        child: Container(
          width: 175,
          height: 60,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/Union.png',
              ),
            )
          ),
        ),
      ),
    );
  }
}