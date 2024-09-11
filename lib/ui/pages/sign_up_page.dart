import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mainn/shared/theme.dart';
import 'package:mainn/ui/widgets/button.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool? isChecked = false;
    return Scaffold(
      backgroundColor: LoginBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 22,
        ),
        children: [
          Container(
            width: 120,
            height: 40,
            margin: const EdgeInsets.only(
              top: 100,
              bottom: 30,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image : AssetImage(
                  'assets/Union.png'
                ),
              ),
            ),
          ),
          Text(
            'Sign Up',
            style: blackTextStyle.copyWith(
              fontSize: 22,
              fontWeight: bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Input Email
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Your Email',
                      style: greyTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: regular,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        contentPadding: const EdgeInsets.all(16),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 22,
                ),
                // Input Password
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Password',
                      style: greyTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: regular,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    TextFormField(
                      style: blackTextStyle.copyWith(
                        fontWeight: bold,
                      ),
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        contentPadding: const EdgeInsets.all(16),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 18,
                ),
                CustomFilledButton(
                  width: double.infinity,
                  height: 40,
                  title: "Create account",
                  onPressed: (){
                    Timer(const Duration(milliseconds: 600), (){
                      Navigator.pushNamedAndRemoveUntil(
                        context, '/verified-regist', (route) => false
                        );
                      },
                    );
                  },
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    Checkbox(
                      value: isChecked, 
                      onChanged: (newvalue) {
                        isChecked = newvalue;
                      },
                      activeColor: blueColor,
                      checkColor: whiteColor,
                      tristate: true,
                    ),
                    Text(
                      'By creating an account you have to\nagree with our them & condication.',
                      style: greyTextStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: greyTextStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
                    TextButton(
                      onPressed: (){
                        Navigator.pushNamedAndRemoveUntil(
                        context, '/login', (route) => false
                        );
                      },
                      child : Text(
                      'Log In',
                      style: blueTextStyle.copyWith(
                        fontSize: 12,
                        ),   
                      ),
                    ),
                  ]
                ),
              ],
            ),
          ),  
        ],
      ),
    );
  }
}