// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_app/Widgets/my_text.dart';
import 'package:gym_app/constants/my_colors.dart';
import 'package:gym_app/Widgets/my_container.dart';
import 'package:gym_app/screens/home_page.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  final List<Widget> _onboardingPages = [
    OnboardingPage(
      image: 'assets/images/man2.png',
      title: 'Welcome to FitzApp',
      description:
          'Quis autem vel eum iure reprehenderit qui in ea voluptate\nvelit esse quam nihil molestiae consequatu',
    ),
    OnboardingPage(
      image: 'assets/images/man2.png',
      title: 'Workout Categories',
      description:
          'Quis autem vel eum iure reprehenderit qui in ea voluptate\nvelit esse quam nihil molestiae consequatu',
    ),
    OnboardingPage(
      image: 'assets/images/man2.png',
      title: 'Custom Workouts',
      description:
          'Quis autem vel eum iure reprehenderit qui in ea voluptate\nvelit esse quam nihil molestiae consequatu',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: _onboardingPages.length,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            itemBuilder: (context, index) {
              return _onboardingPages[index];
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _buildPageIndicator(),
            ),
          ),
          if (_currentPage == _onboardingPages.length - 1)
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 30, left: 16, right: 16),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  child: MyContainer(
                    height: 70,
                    white: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        color: MyColors.primarycolor),
                    child: Center(
                      child: MyText(
                        text: 'Get Started',
                        fontSize: 16,
                        color: MyColors.blackcolor,
                      ),
                    ),
                  ),
                ),
              ),
            )
          else
            SizedBox(),
        ],
      ),
    );
  }

  List<Widget> _buildPageIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < _onboardingPages.length; i++) {
      indicators.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return indicators;
  }

  Widget _indicator(bool isActive) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 150),
      child: GestureDetector(
        onTap: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        },
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 8.0),
          height: 8.0,
          width: 8.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isActive ? Colors.blueAccent : Colors.grey,
          ),
        ),
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const OnboardingPage(
      {super.key,
      required this.image,
      required this.title,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              image,
              height: MediaQuery.of(context).size.height / 1,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            Column(
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 28.sp,
                      fontWeight: FontWeight.bold,
                      color: MyColors.whitecolor),
                ),
                SizedBox(height: 10.0),
                Text(
                  description,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0, color: MyColors.Graycolor),
                ),
                SizedBox(height: 30.0),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
