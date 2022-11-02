// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, no_leading_underscores_for_local_identifiers, avoid_init_to_null, unused_field, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flutter/src/material/dropdown.dart';

class DropDownButton extends StatefulWidget {
  const DropDownButton({super.key});

  @override
  State<DropDownButton> createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButton> {
  String? _selectedCity = null;
  int? _selectedNum = null;
  List<String> _allCities = [
    'Ankara',
    'İstanbul',
    'İzmir',
    'Bursa',
    'Adana',
    'Muğla',
  ];
  List<int> _numbers = [1, 2, 3, 4, 5, 6];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DropdownButton<String>(
            items: _allCities
                .map(
                  (String citySelect) => DropdownMenuItem(
                    value: citySelect,
                    child: Text(citySelect),
                  ),
                )
                .toList(),
            hint: Text('Select city'),
            icon: Icon(Icons.arrow_drop_down_rounded),
            underline: Container(
              height: 2,
              color: Colors.teal,
            ),
            style: TextStyle(color: Colors.teal, fontSize: 24),
            value: _selectedCity,
            onChanged: (String? _new) {
              setState(() {
                _selectedCity = _new;
              });
            },
          ),
          DropdownButton<int>(
            items: _numbers
                .map(
                  (int citySelect) => DropdownMenuItem(
                    value: citySelect,
                    child: Text(citySelect.toString()),
                  ),
                )
                .toList(),
            hint: Text('Select number'),
            icon: Icon(Icons.arrow_drop_down_rounded),
            underline: Container(
              height: 2,
              color: Colors.teal,
            ),
            style: TextStyle(color: Colors.teal, fontSize: 24),
            value: _selectedNum,
            onChanged: (int? _new) {
              setState(() {
                _selectedNum = _new;
              });
            },
          ),
        ],
      ),
    );
  }
}
