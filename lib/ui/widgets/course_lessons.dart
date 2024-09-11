import 'package:flutter/material.dart';
import 'package:mainn/shared/theme.dart';

class CourseLessons extends StatelessWidget {
  final String number;
  final String subtitle;
  final String duration;
  final VoidCallback? onPressed;


  const CourseLessons({
    Key? key,
    required this.number,
    required this.subtitle,
    required this.duration,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Text(
                    number,
                    style: greyTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: medium,
                    ),
                  ),
                  const SizedBox(
                    width: 32,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        subtitle,
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: regular,
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        '$duration mins',
                        style: blueTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                
              },
              child: Container(
                height: 44,
                width: 44,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: blueColor,
                ),
                child: Icon(
                  Icons.play_arrow_rounded,
                  color: whiteColor,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 18,
        ),
      ],
    );
  }
}