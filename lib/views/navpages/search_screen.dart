// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  int _currentIndex = 0;
  List<Map<String, dynamic>> searchOptions = [
    {
      "body" : "One Way",
      "action": "Next"
    },
    {
      "body" : "Round Trip",
      "action": "Next"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Search",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        border: Border.all(color: Colors.grey, width: 2.0)),
                    child: IconButton.outlined(
                      color: Colors.grey.shade600,
                      onPressed: () {},
                      icon: const Icon(Icons.calendar_today_outlined),
                    ),
                  ),
                ],
              ),
              PageView.builder(
                controller: PageController(initialPage: _currentIndex),
                itemBuilder: (context, index) {
                  return Container();
                },
              //   child: Row(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: List.generate(
              //           searchOptions.length,
              //           (i) => Container(
              //             width: (index == i) ? 40 : 16,
              //             height: 16,
              //             margin: EdgeInsets.only(left: 10),
              //             decoration: BoxDecoration(
              //                 color: (index == i)
              //                     ? Color.fromRGBO(64, 1, 168, 100)
              //                     : Colors.grey,
              //                 borderRadius: BorderRadius.circular(12)),
              //           ),
              //         ),
              //       ),
              ),
            ],

            
          ),
        ),
      ),
    );
  }
}
