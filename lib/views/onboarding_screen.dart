// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:swyft_rails/views/login.dart';

class OnboardingScreen extends StatefulWidget {
  OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _currentIndex = 0;

  List<Map<String, dynamic>> onboardInfo = [
    {
      'image': 'assets/images/Train.png',
      'heading': 'Book a train in the simplest way',
      "body":
          'Discover a world of possibilities as you navigate through a user-friendly platform designed to simplify your travel planning.',
      "action": "Next"
    },
    {
      'image': 'assets/images/Frame.png',
      'heading': 'Welcome Aboard! Your Journey Begins Here.',
      "body":
          'Embark on a seamless and convenient travel experience with our train ticket purchase and reservation application',
      "action": "Signup"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: PageController(initialPage: _currentIndex),
        itemBuilder: (context, index) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(vertical: 30),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 100.0),
                    child: Image.asset(
                      onboardInfo[index]['image'],
                      fit: BoxFit.contain,
                      width: double.maxFinite,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40.0, vertical: 30),
                    child: Column(
                      children: [
                        Text(
                          onboardInfo[index]['heading'],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          onboardInfo[index]['body'],
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      onboardInfo.length,
                      (i) => Container(
                        width: (index == i) ? 40 : 16,
                        height: 16,
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                            color: (index == i)
                                ? Color.fromRGBO(64, 1, 168, 100)
                                : Colors.grey,
                            borderRadius: BorderRadius.circular(12)),
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.only(right: 20),
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Login();
                          },
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: StadiumBorder(),
                        minimumSize: Size(100, 50),
                      ),
                      child: Text(onboardInfo[index]["action"],
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: onboardInfo.length,
        onPageChanged: (page) {
          setState(() {
            _currentIndex = page;
          });
        },
      ),
    );
  }
}
