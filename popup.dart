// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PopUpMenu extends StatefulWidget {
  const PopUpMenu({super.key});

  @override
  State<PopUpMenu> createState() => _PopUpMenuState();
}

class _PopUpMenuState extends State<PopUpMenu> {
  String? _selectedName = null;
  List<String> nameList = [
    'Aegon',
    'Aenys',
    'Maegor',
    'Jaehaerys',
    'Viserys',
    'Rhaenyra'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      child: PopupMenuButton<String>(
        onSelected: (String ruler) {
          setState(() {
            _selectedName = ruler;
          });
        },
        itemBuilder: (BuildContext context) {
          return nameList
              .map(
                (String monarch) => PopupMenuItem(
                  value: monarch,
                  child: Text(monarch),
                ),
              )
              .toList();
        },
      ),
    );
  }
}
