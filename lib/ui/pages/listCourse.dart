import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mainn/shared/theme.dart';
import 'package:mainn/ui/widgets/button.dart';
import 'package:mainn/ui/widgets/course_lessons.dart';

class Productdesign extends StatefulWidget {
  const Productdesign({super.key});

  @override
  State<Productdesign> createState() => _ProductdesignState();
}

class _ProductdesignState extends State<Productdesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: peachColor,
      appBar: AppBar(
        backgroundColor: peachColor,
      ),
      bottomNavigationBar: Container(
        height: 100,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        decoration: BoxDecoration(
          color: whiteColor,
        ),
        clipBehavior: Clip.antiAlias,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Flexible(
              flex: 1,
              child: GestureDetector(
                onTap: (){

                },
                child: Container(
                  height: 50,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: longTimeColor,
                  ),
                  child: Icon(
                    Icons.star_border,
                    color: orangeColor,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Flexible(
              flex: 2,
              child: GestureDetector(
                child: const CustomFilledButton(
                  title: 'Buy Now',
                  width: 250,
                  height: 50,
                ),
              ),
            ),
          ],
        ),
      ),
      
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 6,
              ),
              height: 225,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        'assets/course_illustration.png',
                        height: 225,
                        width: 395,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 92,
                              height: 26,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(3),
                                color: yellowColor,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'BEST SELLER',
                                    style: blackTextStyle.copyWith(
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 13,
                            ),
                            Text(
                              'Product Design v1.0',
                              style: blackTextStyle.copyWith(
                                fontSize: 20,
                                fontWeight: bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  height: 450,
                  width: double.infinity,
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 35,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(35),
                    ),
                    color: BackgroundHomeColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Product Design v1.0',
                            style: blackTextStyle.copyWith(
                              fontSize: 20,
                              fontWeight: bold,
                            ),
                          ),
                          Text(
                            '\$190.00',
                            style: blueTextStyle.copyWith(
                              fontSize: 20,
                              fontWeight: bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        '6h 14min - 24 Lessons',
                        style: greyTextStyle.copyWith(
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Text(
                        'About this course',
                        style: blackTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: bold,
                        ),
                      ),
                      Text(
                        'Sed ut perspiciatis unde omnis iste natus error sit\nvoluptatem accusantium doloremque laudantium.',
                        style: greyTextStyle.copyWith(
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(
                        height: 28,
                      ),
                      const CourseLessons(
                        number: '01',
                        subtitle: 'Welcome to the Course', 
                        duration: '6:10'
                      ),
                      const CourseLessons(
                        number: '02',
                        subtitle: 'Process overview', 
                        duration: '6:10'
                      ),
                      const CourseLessons(
                        number: '03',
                        subtitle: 'Discovery', 
                        duration: '6:10'
                      ),
                      const CourseLessons(
                        number: '04',
                        subtitle: 'Material 1', 
                        duration: '6:10'
                      ),
                    ],
                  ),

                ),
              ),
            ),
          ],
        ),
    );
  }
}

class javaDevelopment extends StatefulWidget {
  const javaDevelopment({super.key});

  @override
  State<javaDevelopment> createState() => _javaDevelopmentState();
}

class _javaDevelopmentState extends State<javaDevelopment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: peachColor,
      appBar: AppBar(
        backgroundColor: peachColor,
      ),
      bottomNavigationBar: Container(
        height: 100,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        decoration: BoxDecoration(
          color: whiteColor,
        ),
        clipBehavior: Clip.antiAlias,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Flexible(
              flex: 1,
              child: GestureDetector(
                onTap: (){

                },
                child: Container(
                  height: 50,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: longTimeColor,
                  ),
                  child: Icon(
                    Icons.star_border,
                    color: orangeColor,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Flexible(
              flex: 2,
              child: GestureDetector(
                child: const CustomFilledButton(
                  title: 'Buy Now',
                  width: 250,
                  height: 50,
                ),
              ),
            ),
          ],
        ),
      ),
      
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(
              top: 6,
            ),
            height: 225,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Image.asset(
                      'assets/course_illustration.png',
                      height: 225,
                      width: 395,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 92,
                            height: 26,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(3),
                              color: yellowColor,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'BEST SELLER',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 13,
                          ),
                          Text(
                            'Java Development',
                            style: blackTextStyle.copyWith(
                              fontSize: 20,
                              fontWeight: bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                height: 450,
                width: double.infinity,
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 35,
                ),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(35),
                  ),
                  color: BackgroundHomeColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Java Development',
                          style: blackTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: bold,
                          ),
                        ),
                        Text(
                          '\$190.00',
                          style: blueTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      '6h 14min - 24 Lessons',
                      style: greyTextStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Text(
                      'About this course',
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: bold,
                      ),
                    ),
                    Text(
                      'Sed ut perspiciatis unde omnis iste natus error sit\nvoluptatem accusantium doloremque laudantium.',
                      style: greyTextStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    const CourseLessons(
                      number: '01',
                      subtitle: 'Welcome to the Course', 
                      duration: '6:10'
                    ),
                    const CourseLessons(
                      number: '02',
                      subtitle: 'Process overview', 
                      duration: '6:10'
                    ),
                    const CourseLessons(
                      number: '03',
                      subtitle: 'Discovery', 
                      duration: '6:10'
                    ),
                    const CourseLessons(
                      number: '04',
                      subtitle: 'Material 1', 
                      duration: '6:10'
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class visualDesign extends StatefulWidget {
  const visualDesign({super.key});

  @override
  State<visualDesign> createState() => _visualDesignState();
}

class _visualDesignState extends State<visualDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: peachColor,
      appBar: AppBar(
        backgroundColor: peachColor,
      ),
      bottomNavigationBar: Container(
        height: 100,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        decoration: BoxDecoration(
          color: whiteColor,
        ),
        clipBehavior: Clip.antiAlias,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Flexible(
              flex: 1,
              child: GestureDetector(
                onTap: (){

                },
                child: Container(
                  height: 50,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: longTimeColor,
                  ),
                  child: Icon(
                    Icons.star_border,
                    color: orangeColor,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Flexible(
              flex: 2,
              child: GestureDetector(
                child: const CustomFilledButton(
                  title: 'Buy Now',
                  width: 250,
                  height: 50,
                ),
              ),
            ),
          ],
        ),
      ),
      
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(
              top: 6,
            ),
            height: 225,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Image.asset(
                      'assets/course_illustration.png',
                      height: 225,
                      width: 395,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 92,
                            height: 26,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(3),
                              color: yellowColor,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'BEST SELLER',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 13,
                          ),
                          Text(
                            'Visual Design',
                            style: blackTextStyle.copyWith(
                              fontSize: 20,
                              fontWeight: bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                height: 450,
                width: double.infinity,
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 35,
                ),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(35),
                  ),
                  color: BackgroundHomeColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Visual Design',
                          style: blackTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: bold,
                          ),
                        ),
                        Text(
                          '\$250.00',
                          style: blueTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      '6h 14min - 24 Lessons',
                      style: greyTextStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Text(
                      'About this course',
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: bold,
                      ),
                    ),
                    Text(
                      'Sed ut perspiciatis unde omnis iste natus error sit\nvoluptatem accusantium doloremque laudantium.',
                      style: greyTextStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    const CourseLessons(
                      number: '01',
                      subtitle: 'Welcome to the Course', 
                      duration: '6:10'
                    ),
                    const CourseLessons(
                      number: '02',
                      subtitle: 'Process overview', 
                      duration: '6:10'
                    ),
                    const CourseLessons(
                      number: '03',
                      subtitle: 'Discovery', 
                      duration: '6:10'
                    ),
                    const CourseLessons(
                      number: '04',
                      subtitle: 'Material 1', 
                      duration: '6:10'
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}