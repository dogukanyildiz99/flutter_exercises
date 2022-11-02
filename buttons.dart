// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';

class BasicButtons extends StatelessWidget {
  const BasicButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {},
          onLongPress: () {},
          child: Text('textButton'),
        ),
        TextButton.icon(
          onPressed: () {},
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.amberAccent)),
          icon: Icon(Icons.add),
          label: Text('Text Button with Icon'),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: Colors.amberAccent,
            onPrimary: Colors.teal,
          ),
          child: Text('Elevated Button'),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text('Elevated with Icon'),
        ),
        OutlinedButton(
          onPressed: () {},
          child: Text('Outlined Button'),
        ),
        OutlinedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          style: OutlinedButton.styleFrom(
            shape: StadiumBorder(),
            side: BorderSide(color: Colors.amber, width: 2),
          ),
          label: Text('Outlined with Icon'),
        ),
        OutlinedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            side: BorderSide(color: Colors.amber, width: 2),
          ),
          label: Text('Another Outlined with Icon'),
        ),
      ],
    );
  }
}
