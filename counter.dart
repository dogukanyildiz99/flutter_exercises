// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Counter App',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('My Counter App'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(
              'Number of times pressed',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
            Text(
              _counter.toString(),
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.w500),
            ),
          ],
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            addCounter();
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  void addCounter() {
    setState(() {
      _counter++;
    });
  }
}
