// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, library_private_types_in_public_api

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.grey,
                            backgroundImage:
                                AssetImage('assets/images/Avatars.png'),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            'Hi, Mycroft',
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            // shape: BoxShape.circle,
                            border: Border.all(color: Colors.grey, width: 2.0),
                          ),
                          child: IconButton.outlined(
                            color: Colors.grey.shade600,
                            onPressed: () {},
                            icon: const Icon(Icons.notifications_outlined),
                          ),
                        ),
                        const SizedBox(width: 10.0), // Spacing between icons
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            // shape: BoxShape.circle,
                            border: Border.all(color: Colors.grey, width: 2.0),
                          ),
                          child: IconButton.outlined(
                            color: Colors.grey.shade600,
                            onPressed: () {},
                            icon: const Icon(Icons.calendar_today_outlined),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ClipRRect(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(10.0)),
                        child: Image.asset(
                          'assets/images/Frame2.png',
                          fit: BoxFit.contain,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 280.0),
                  child: Text(
                    'Today\'s Trip',
                    style:
                        TextStyle(fontSize: 17.0, color: Colors.grey.shade600),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Card(
                  color: Colors.grey.shade200,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('departure time',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.purple.shade900)),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  'LOS',
                                  style: TextStyle(fontSize: 30.0),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.grey.shade300,
                                      child:
                                          Image.asset('assets/icon/icon.png'),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Text('Train No: L1',
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            color: Colors.grey)),
                                  ],
                                )
                              ],
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'arrival time',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.purple.shade900),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    'ABK',
                                    style: TextStyle(fontSize: 30.0),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    '#3,500.00',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ])
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  color: Colors.grey.shade200,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('departure time',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.purple.shade900)),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  'LOS',
                                  style: TextStyle(fontSize: 30.0),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Row(
                                  children: [
                                    CircleAvatar(
                                        backgroundColor: Colors.grey.shade300,
                                        child: Image.asset(
                                            'assets/icon/icon.png')),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Text('Train No: L1',
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            color: Colors.grey)),
                                  ],
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'arrival time',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.purple.shade900),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  'ABK',
                                  style: TextStyle(fontSize: 30.0),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  '#3,500.00',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  color: Colors.grey.shade200,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('departure time',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.purple.shade900)),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  'LOS',
                                  style: TextStyle(fontSize: 30.0),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Row(
                                  children: [
                                    CircleAvatar(
                                        backgroundColor: Colors.grey.shade300,
                                        child: Image.asset(
                                            'assets/icon/icon.png')),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Text('Train No: L1',
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            color: Colors.grey)),
                                  ],
                                )
                              ],
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'arrival time',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.purple.shade900),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    'ABK',
                                    style: TextStyle(fontSize: 30.0),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    '#3,500.00',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ])
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      
    );
  }
}
