import 'package:flutter/material.dart';
import 'package:mainn/shared/theme.dart';
import 'package:mainn/ui/pages/account_page.dart';
import 'package:mainn/ui/pages/course_page.dart';
import 'package:mainn/ui/pages/message_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: BackgroundHomeColor,
        bottomNavigationBar: BottomAppBar(
          color: whiteColor,
          elevation: 0,
          shape: const CircularNotchedRectangle(),
          clipBehavior: Clip.antiAlias,
          notchMargin: 6,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: whiteColor,
            elevation: 0,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedItemColor: blueColor,
            unselectedItemColor: NavbarColor,
            selectedIconTheme: IconThemeData(color: blueColor),
            unselectedIconTheme: IconThemeData(color: NavbarColor),
            onTap: (index){
              setState(() {
                myIndex = index;
              });
            },
            currentIndex: myIndex,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/home.png',
                  color: myIndex == 0 ? blueColor : NavbarColor,
                  height: 22,
                  width: 22,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/course.png',
                  color: myIndex == 1 ? blueColor : NavbarColor,
                  height: 22,
                  width: 22,
                ),
                label: 'Course',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/message.png',
                  color: myIndex == 2 ? blueColor : NavbarColor,
                  height: 22,
                  width: 22,
                ),
                label: 'Message',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/account.png',
                  color: myIndex == 3 ? blueColor : NavbarColor,
                  height: 22,
                  width: 22,
                ),
                label: 'Account',
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          shape: const CircleBorder(),
          onPressed: () {

          },
          backgroundColor: SearchColor,
          child: Image.asset(
            'assets/search.png',
            width: 20,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,      
        body: IndexedStack(
          index: myIndex,
          children: [
            ListView(
              children: [
                buildProfile(),
                const SizedBox(
                  height: 9,
                ),
                homeContain(),
                const SizedBox(
                  height: 26,
                ),
                learningPlan(),
                const SizedBox(
                  height: 15,
                ),
                meetUp(),
              ],
            ),
            const CoursePage(),
            const MessagePage(),
            const AccountPage(),
          ],
        ),
      ),
    );
  }

  Widget buildProfile() {
    return Container(
      height: 250,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 30,
              right: 20,
              left: 20,
            ),
            height: 205, // Tinggi bagian biru
            color: blueColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hi, Rheinaldy',
                      style: whiteTextStyle.copyWith(
                        fontWeight: bold,
                        fontSize: 24,
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
                Text(
                  'Let\'s start learning',
                  style: whiteTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 26,
                vertical: 12,
              ),
              height: 95,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: whiteColor,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Learned today',
                        style: greyTextStyle.copyWith(
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        'My courses',
                        style: blueTextStyle.copyWith(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        '46min',
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: bold,
                        ),
                      ),
                      Text(
                        '/ 60min',
                        style: greyTextStyle.copyWith(
                          fontSize: 10
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(55),
                    child: LinearProgressIndicator(
                      value: 0.76,
                      minHeight: 6,
                      valueColor: AlwaysStoppedAnimation(orangeColor),
                      backgroundColor: BackgroundHomeColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget homeContain(){
    return Container(
      margin: const EdgeInsets.only(
        left: 20,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 18.5,
                vertical: 18.5,
              ),
              width: 253,
              height: 155,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/home_contain.png'),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'What do you want to\nlearn today?',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: black,
                    ),
                  ),
                  Container(
                    width: 95,
                    height: 32,
                    child: TextButton(
                      onPressed: (){
                        
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: orangeColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        )
                      ),
                      child: Text(
                        'Get Started',
                        style: whiteTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 18.5,
                vertical: 18.5,
              ),
              width: 253,
              height: 155,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/ads.png'),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Let\'s study',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: black,
                    ),
                  ),
                  Container(
                    width: 95,
                    height: 32,
                    child: TextButton(
                      onPressed: (){
                        
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: orangeColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        )
                      ),
                      child: Text(
                        'Get Started',
                        style: whiteTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      )
    );
  }

  Widget learningPlan(){
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Learning Plan',
            style: blackTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 25,
            ),
            height: 120,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: whiteColor
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/progress_1.png',
                          height: 18,
                          width: 18,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Packaging Design',
                          style: blackTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: medium,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '40',
                          style: blackTextStyle.copyWith(
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          '/48',
                          style: greyTextStyle.copyWith(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/progress_2.png',
                          height: 18,
                          width: 18,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Product Design',
                          style: blackTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: medium,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Row(
                      children: [
                        Text(
                          '6',
                          style: blackTextStyle.copyWith(
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          '/24',
                          style: greyTextStyle.copyWith(
                            fontSize: 14,
                          ),
                        ),
                      ],
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

  Widget meetUp(){
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      height: 120,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: purpleColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Meetup',
                style: darkpurpletextStyle.copyWith(
                  fontSize: 25,
                  fontWeight: medium,
                ),
              ),
              Text(
                'Off-line exchange of learning\n experiences',
                style: darkpurpletextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
            ],
          ),
          Image.asset(
            'assets/Meetup.png',
            height: 95,
          ),
        ],
      ),
    );
  }
}