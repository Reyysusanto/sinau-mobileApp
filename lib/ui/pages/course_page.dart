import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mainn/shared/theme.dart';
import 'package:mainn/ui/widgets/button.dart';

class CoursePage extends StatefulWidget {
  
  const CoursePage({super.key});

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  String selectedButton = 'All';
  Widget listCourse = const SizedBox();
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    listCourse = allCourse();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: BackgroundHomeColor,
        body: ListView(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 25,
          ),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Course',
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: bold,
                  ),
                ),
                Container(
                  width: 36,
                  height: 50,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/profile.png'),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            findCourse(),
            const SizedBox(
              height: 8,
            ),
            ads(),
            const SizedBox(
              height: 36,
            ),
            course(),
            const SizedBox(
              height: 24,
            ),
            listCourse,
          ],
        ),
      )
    );
  }

  Widget findCourse(){
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: SearchBarColor,
      ),
      height: 48,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.search,
                  color: greyColor,
                  size: 20,
                ),
                const SizedBox(
                  width: 14,
                ),
                
              ],
            ),
          ),
          GestureDetector(
            onTap: (){

            },
            child: Image.asset(
              'assets/filter.png',
              height: 20,
              width: 20,
              color: greyColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget ads(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: 160,
          height: 115,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/language.png',
              ),
            )
          ),
        ),
        Container(
          width: 160,
          height: 115,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/painting.png',
              ),
            )
          ),
        ),
      ],
    );
  }

  Widget course(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Choice your course',
          style: blackTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            choiceCourse('All', 73),
            choiceCourse('Popular', 80),
            choiceCourse('New', 73),
          ],
        ),
      ],
    );
  }

  Widget allCourse(){
    return const Column(
      children: [
        CourseListButton(
          title: 'Product Design v1.0', 
          image: 'assets/Image.png', 
          people: 'Robert Connnie', 
          price: '190',
          hour: '16',
          way: '/product-designV1.0',
        ),
        CourseListButton(
          title: 'Java Development', 
          image: 'assets/Image.png', 
          people: 'Nguyen Shane', 
          price: '190',
          hour: '16',
          way: '/java-development',
        ),
        CourseListButton(
          title: 'Visual Design', 
          image: 'assets/Image.png', 
          people: 'Bert Pullman', 
          price: '250',
          hour: '14',
          way: '/visual-design',
        ),
      ],
    );
  }

  Widget popularCourse(){
    return const Column(
      children: [
        CourseListButton(
          title: 'Product Design v1.0', 
          image: 'assets/Image.png', 
          people: 'Robert Connnie', 
          price: '190',
          hour: '16',
          way: '/product-designV1.0',
        ),
        CourseListButton(
          title: 'Visual Design', 
          image: 'assets/Image.png', 
          people: 'Bert Pullman', 
          price: '250',
          hour: '14',
          way: '/visual-design',
        ),
      ],
    );
  }

  Widget newCourse(){
    return const Column(
      children: [
        CourseListButton(
          title: 'Product Design v1.0', 
          image: 'assets/Image.png', 
          people: 'Robert Connnie', 
          price: '190',
          hour: '16',
          way: '/product-designV1.0',
        ),
      ],
    );
  }

  Widget choiceCourse(String text, double width) {
    bool isSelected = selectedButton == text;
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: width,
      height: 35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        color: isSelected ? blueColor : null,
      ),
      alignment: Alignment.center,
      child: TextButton(
        onPressed: () {
          setState(() {
            selectedButton = text;
            if (text == 'All'){
              listCourse = allCourse();
            } else if (text == 'Popular'){
              listCourse = popularCourse();
            } else if (text == 'New'){
              listCourse = newCourse();
            }
          });
        },
        style: TextButton.styleFrom(
          backgroundColor: null,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(35),
          ),
        ),
        child: Text(
          text,
          style: isSelected
              ? whiteTextStyle.copyWith(fontSize: 14, fontWeight: regular)
              : greyTextStyle.copyWith(fontSize: 14, fontWeight: regular),
        ),
      ),
    );
  }
}