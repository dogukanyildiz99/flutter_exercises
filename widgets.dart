// Center and container widgets
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // ignore: deprecated_member_use
      theme: ThemeData(accentColor: const Color.fromARGB(255, 111, 237, 214)),
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 185, 255, 248),
        appBar: AppBar(
          title: const Text(
            'HEADER',
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.w500,
                fontSize: 25),
          ),
          backgroundColor: const Color.fromARGB(255, 255, 74, 74),
        ),
        body: Center(
          heightFactor: 3,
          widthFactor: 3,
          child: Container(
            height: 200,
            width: 200,
            color: const Color.fromARGB(255, 255, 74, 74),
            child: Container(
              alignment: Alignment.center,
              color: const Color.fromARGB(255, 111, 237, 214),
              margin: const EdgeInsets.fromLTRB(20, 60, 20, 60),
              child: const Text(
                'HELLO',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint('Clicked');
          },
          foregroundColor: const Color.fromARGB(255, 255, 255, 255),
          child: const Icon(Icons.account_circle_rounded),
        ),
      ),
    );
  }
}
