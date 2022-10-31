// decoration, border, shadow
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
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 149, 81),
                shape: BoxShape.rectangle,
                border: Border.all(width: 4, color: Colors.purple),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black,
                      offset: Offset(10, 20),
                      blurRadius: 7),
                ],
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                )),
            child: const FlutterLogo(
              size: 128,
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
