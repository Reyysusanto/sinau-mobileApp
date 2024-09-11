import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mainn/shared/theme.dart';
import 'package:mainn/ui/widgets/button.dart';


class OnBoardingpage extends StatefulWidget {
  const OnBoardingpage({Key? key}) : super(key: key);
  @override
  State<OnBoardingpage> createState() => _OnboardingPageState();
  }

class _OnboardingPageState extends State<OnBoardingpage>{
  int curentIndex = 0; 
  CarouselSliderController carouselController = CarouselSliderController();

  List<String> titles = [
    'Numerous free\ntrial courses',
    'Quick and easy\nlearning',
    'Create your own\nstudy plan',
  ];

  List<String>  subtitles = [
    'Free courses for you to\nfind your way to learning',
    'Easy and fast learning at\nany time to help you\nimprove various skills',
    'Study according to the\nstudy plan, make study\nmore motivated',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider(
              items: [
                Image.asset(
                  'assets/onBoarding_1.png',
                  height: 260,
                ),
                Image.asset(
                  'assets/onBoarding_2.png',
                  height: 260,
                ),
                Image.asset(
                  'assets/onBoarding_3.png',
                  height: 260,
                ),
              ], options: CarouselOptions(
                height: 260,
                viewportFraction: 1,
                enableInfiniteScroll: false,
                onPageChanged: (index, reason){
                  setState(() {
                    curentIndex = index;
                  });
                }
              ),
              carouselController: CarouselSliderController(),
            ),
            const SizedBox(
              height: 14,
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 88,
                vertical: 45,
              ),
              child: Column(
                children: [
                  Text(
                    titles[curentIndex],
                    style: blackTextStyle.copyWith(
                      fontSize: 22,
                      fontWeight: bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    subtitles[curentIndex],
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: regular,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: curentIndex == 0 ? 28 : 10,
                        height: 6,
                        margin: const EdgeInsets.only(
                          right : 10
                        ),
                        decoration: BoxDecoration(
                          shape: curentIndex == 0 ? BoxShape.rectangle : BoxShape.circle,
                          borderRadius: curentIndex == 0 ? BorderRadius.circular(3) : null,
                          color: curentIndex == 0 ? blueColor : nextColor,
                        ),
                      ),
                      Container(
                        width: curentIndex == 1 ? 28 : 10,
                        height: 6,
                        margin: const EdgeInsets.only(
                          right : 10
                        ),
                        decoration: BoxDecoration(
                          shape: curentIndex == 1 ? BoxShape.rectangle : BoxShape.circle,
                          borderRadius: curentIndex == 1 ? BorderRadius.circular(3) : null,
                          color: curentIndex == 1 ? blueColor : nextColor,
                        ),
                      ),
                      Container(
                        width: curentIndex == 2 ? 28 : 10,
                        height: 6,
                        margin: const EdgeInsets.only(
                          right : 10
                        ),
                        decoration: BoxDecoration(
                          shape: curentIndex == 2 ? BoxShape.rectangle : BoxShape.circle,
                          borderRadius: curentIndex == 2 ? BorderRadius.circular(3) : null,
                          color: curentIndex == 2 ? blueColor : nextColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            curentIndex == 2? 
            Column(
              children: [
                const SizedBox(
                  height: 14,
                ),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        left: 30,
                        right: 7.5,
                      ),
                      child: 
                        CustomFilledButton(
                          width: 155,
                          height: 50,
                          title: 'Sign up',
                          onPressed: (){
                            Navigator.pushNamedAndRemoveUntil(
                            context, '/sign-up', (route) => false
                            );
                          },
                      ),
                    ),
                    Container(
                      width: 155,
                      height: 50,
                      margin: const EdgeInsets.only(
                        right: 30,
                        left: 7.5,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: blueColor),
                        borderRadius: BorderRadius.circular(12),            
                      ),
                      child: TextButton(
                        onPressed: (){
                          Navigator.pushNamedAndRemoveUntil(
                          context, '/login', (route) => false
                          );
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: whiteColor,
                        ),
                        child: Text(
                          'Log in',
                          style: blueTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: medium,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ) :
            Column(
              children: [
                const SizedBox(
                  height: 14,
                ),
                CustomFilledButton(
                  width: 275,
                  height: 40,
                  title: 'Continue',
                  onPressed: (){
                    carouselController.nextPage();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}