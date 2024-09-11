import 'package:flutter/material.dart';
import 'package:mainn/shared/theme.dart';
import 'package:mainn/ui/widgets/button.dart';

class VerifiedRegistrationPage extends StatelessWidget {
  const VerifiedRegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: VerifiedBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 36,
              ),
              child: Center(
                child:
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(
                      top: 36,
                      bottom: 24,
                      right: 12,
                      left: 12,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: whiteColor,
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: 64,
                          height: 64,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image : AssetImage(
                                'assets/complete.png'
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        Text(
                          'Success',
                          style: blackTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: medium,
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Congratulations, you have \ncompleted your registration!',
                          style: greyTextStyle.copyWith(
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        CustomFilledButton(
                          width: double.infinity,
                          height: 45,
                          title: "Done",
                          onPressed: (){
                            Navigator.pushNamedAndRemoveUntil(
                              context, '/home', (route) => false
                            );
                          },
                        ),
                      ],
                    ),
                  ),
              ),
            ),
          ],          
        ),
      ),
    );
  }
}