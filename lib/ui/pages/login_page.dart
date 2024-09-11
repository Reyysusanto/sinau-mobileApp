import 'package:flutter/material.dart';
import 'package:mainn/shared/theme.dart';
import 'package:mainn/ui/widgets/button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
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
            'Log In',
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
                    const SizedBox(
                      height: 12,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Forgot Password',
                        style: greyTextStyle,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                CustomFilledButton(
                  width: double.infinity,
                  height: 40,
                  title: "Log in",
                  onPressed: (){
                    Navigator.pushNamedAndRemoveUntil(
                      context, '/home', (route) => false
                    );
                  },
                ),
                const SizedBox(
                  height: 26,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: greyTextStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
                    TextButton(
                      onPressed: (){
                        Navigator.pushNamedAndRemoveUntil(
                        context, '/sign-up', (route) => false
                        );
                      },
                      child : Text(
                      'Sign up',
                      style: blueTextStyle.copyWith(
                        fontSize: 12,
                        ),   
                      ),
                    ),
                  ]
                ),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  'Or login with',
                  style: greyTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  height: 26,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 36,
                      height: 36,
                      margin: const EdgeInsets.only(
                        right: 30,
                      ),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image : AssetImage(
                            'assets/google.png'
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 36,
                      height: 36,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image : AssetImage(
                            'assets/facebook.png'
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),  
        ],
      ),
    );
  }
}