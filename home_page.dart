// ignore_for_file: prefer_const_constructors, unused_field, avoid_unnecessary_containers, sort_child_properties_last

import 'package:flutter/services.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _searchBtn = false;
  List<String> myList = ['', '', ''];
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Color.fromARGB(255, 31, 31, 31),
        title: PopupMenuButton(
          icon: Icon(
            Icons.sort,
            size: 40,
          ),
          itemBuilder: (context) => [
            PopupMenuItem(child: Text('1')),
            PopupMenuItem(child: Text('2')),
            PopupMenuItem(child: Text('3')),
          ],
        ),
        actions: [
          IconButton(
              padding: EdgeInsets.only(right: 30),
              onPressed: () {
                setState(() {
                  _searchBtn = true;
                });
              },
              icon: Icon(
                Icons.search,
                size: 40,
              )),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 25,
            child: Container(
              child: Row(children: [
                Expanded(
                  flex: 65,
                  child: Container(
                    child: Column(
                      children: [
                        Expanded(
                          flex: 75,
                          child: Container(
                            padding: EdgeInsets.only(left: 30, top: 20),
                            alignment: Alignment.centerLeft,
                            color: Colors.white,
                            child: Text(
                              'Your \nCourses',
                              style: TextStyle(
                                  fontSize: 36, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(left: 30, right: 45),
                            child: LinearProgressBar(
                              maxSteps: 12,
                              progressType:
                                  LinearProgressBar.progressTypeLinear,
                              currentStep: 4,
                              progressColor: Colors.red,
                              backgroundColor:
                                  Color.fromARGB(255, 225, 224, 224),
                              valueColor: AlwaysStoppedAnimation<Color>(
                                  Color.fromARGB(255, 255, 127, 45)),
                              minHeight: 10,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 15,
                          child: Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(left: 30),
                            color: Colors.white,
                            child: Text(
                              'Overall progress',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 103, 102, 102)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 35,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    child: Image.asset('assets/images/profile.png'),
                  ),
                )
              ]),
            ),
          ),
          Expanded(
            flex: 75,
            child: Container(
              color: Colors.white,
              child: Row(
                children: [
                  Expanded(
                      flex: 5,
                      child: Container(
                        child: Column(children: [
                          Expanded(
                            flex: 4,
                            child: Container(
                              margin: EdgeInsets.only(left: 20, right: 10),
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      padding: EdgeInsets.only(left: 20),
                                      decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 76, 177, 255),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20),
                                        ),
                                      ),
                                      child: Text(
                                        'CODING',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      padding: EdgeInsets.only(left: 20),
                                      alignment: Alignment.centerLeft,
                                      color: Color.fromARGB(255, 76, 177, 255),
                                      child: Text(
                                        'Introduction \nto JavaScript',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      padding: EdgeInsets.only(left: 20),
                                      alignment: Alignment.centerLeft,
                                      decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 76, 177, 255),
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20),
                                        ),
                                      ),
                                      child: Image.asset(
                                          'assets/images/coding.png'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 6,
                            child: Container(
                              margin: EdgeInsets.only(
                                  left: 20, right: 10, top: 10, bottom: 10),
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      padding: EdgeInsets.only(left: 20),
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade200,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20),
                                        ),
                                      ),
                                      child: Text(
                                        'CODING',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      padding: EdgeInsets.only(left: 20),
                                      alignment: Alignment.topLeft,
                                      color: Colors.grey.shade200,
                                      child: Text(
                                        'Basics of \nHTML and CSS',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      padding: EdgeInsets.only(left: 20),
                                      alignment: Alignment.topLeft,
                                      color: Colors.grey.shade200,
                                      child: Text(
                                        'In this course, we\nwill learn the basic\ntools for coders.',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      padding:
                                          EdgeInsets.only(left: 20, bottom: 10),
                                      alignment: Alignment.centerLeft,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade200,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20),
                                        ),
                                      ),
                                      child: Image.asset(
                                          'assets/images/graphic-designing.png'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ]),
                      )),
                  Expanded(
                    flex: 5,
                    child: Container(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 7,
                                    child: Container(
                                      margin: EdgeInsets.only(
                                          left: 10,
                                          right: 20,
                                          bottom: 40,
                                          top: 30),
                                      color: Colors.white,
                                      child: Column(children: [
                                        Expanded(
                                          flex: 2,
                                          child: Container(
                                            alignment: Alignment.centerLeft,
                                            padding: EdgeInsets.only(
                                                left: 20, right: 20),
                                            decoration: BoxDecoration(
                                              color: Colors.grey.shade200,
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(20),
                                                topRight: Radius.circular(20),
                                              ),
                                            ),
                                            child: Text(
                                              'You haven\'t\tmissed a class\nin three days!',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 3,
                                          child: Container(
                                              padding: EdgeInsets.only(
                                                  right: 10, left: 10),
                                              alignment: Alignment.topLeft,
                                              decoration: BoxDecoration(
                                                color: Colors.grey.shade200,
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(20),
                                                  bottomRight:
                                                      Radius.circular(20),
                                                ),
                                              ),
                                              child: Image.asset(
                                                  'assets/images/boy-and-girl-giving-high-five-to-each-other.png')),
                                        ),
                                      ]),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      margin: EdgeInsets.only(
                                        left: 10,
                                        right: 20,
                                        bottom: 30,
                                      ),
                                      color: Colors.white,
                                      child: Column(children: [
                                        Expanded(
                                          flex: 2,
                                          child: Container(
                                            alignment: Alignment.centerLeft,
                                            padding: EdgeInsets.only(
                                                left: 20, right: 20),
                                            decoration: BoxDecoration(
                                              color: Colors.grey.shade200,
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(20),
                                                topRight: Radius.circular(20),
                                              ),
                                            ),
                                            child: Text(
                                              'ARTICLE',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 3,
                                          child: Container(
                                            padding: EdgeInsets.only(left: 20),
                                            alignment: Alignment.topLeft,
                                            decoration: BoxDecoration(
                                              color: Colors.grey.shade200,
                                              borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(20),
                                                bottomRight:
                                                    Radius.circular(20),
                                              ),
                                            ),
                                            child: Text(
                                              'Tips for Better \nTeamwork',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ]),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      // bottomNavigationBar: ,
    );
  }
}

/*
 Color Scheme

 Color.fromARGB(255, 31, 31, 31)   - black
 Color.fromARGB(255, 29, 37, 110)  - dark blue
 Color.fromARGB(255, 99, 84, 182)   - purple
 Color.fromARGB(255, 255, 127, 45)   - orange
 Color.fromARGB(255, 76, 177, 255)   - light blue

 */
