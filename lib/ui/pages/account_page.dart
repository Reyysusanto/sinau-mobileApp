import 'package:flutter/material.dart';
import 'package:mainn/shared/theme.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundHomeColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        children: [
          const SizedBox(
            height: 17,
          ),
          Text(
            'Account',
            style: blackTextStyle.copyWith(
              fontWeight: bold,
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Center(
            child: Container(
              height: 90,
              width: 90,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/profile.png',
                  ),
                ),
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 2, color: whiteColor),
                    color: blueColor,
                  ),
                  child: Icon(
                    Icons.camera_alt, 
                    color: whiteColor,
                    size: 20,
                  ),
                )
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const profileButton(
            buttonName: 'Favourite'
          ),
          const profileButton(
            buttonName: 'Edit Account'
          ),
          const profileButton(
            buttonName: 'Settings and Privacy'
          ),
          const profileButton(
            buttonName: 'Help'
          ),
        ],
      ),
    );
  }
}

class profileButton extends StatelessWidget {
  final String buttonName;

  const profileButton({Key? key,
  required this.buttonName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              onPressed: (){
        
              },
              child: Text(
                buttonName,
                style: blackTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 16,
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                       
              },
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                color: greyColor,
                size: 18,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
      ],
    );
  }
}