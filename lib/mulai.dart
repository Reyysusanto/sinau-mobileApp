import 'package:flutter/material.dart';
import 'package:mainn/ui/pages/account_page.dart';
import 'package:mainn/ui/pages/course_page.dart';
import 'package:mainn/ui/pages/home_page.dart';
import 'package:mainn/ui/pages/listCourse.dart';
import 'package:mainn/ui/pages/login_page.dart';
import 'package:mainn/ui/pages/message_page.dart';
import 'package:mainn/ui/pages/on_boardingPage.dart';
import 'package:mainn/ui/pages/sign_up_page.dart';
import 'package:mainn/ui/pages/splash_page.dart';
import 'package:mainn/ui/pages/verified_registration_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/onboarding': (context) => const OnBoardingpage(),
        '/login': (context) => const LoginPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/verified-regist': (context) => const VerifiedRegistrationPage(),
        '/home': (context) => const HomePage(),
        '/course': (context) => const CoursePage(),
        '/message': (context) => const MessagePage(),
        '/account': (context) => const AccountPage(),
        '/product-designV1.0': (context) => const Productdesign(),
        '/java-development': (context) => const javaDevelopment(),
        '/visual-design': (context) => const visualDesign(),
      },
    );
  }
}