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
  List<String> _allCities = [
    'Ankara',
    'İstanbul',
    'İzmir',
    'Bursa',
    'Adana',
    'Muğla',
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
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

        /* items: [
          DropdownMenuItem(
            value: 01,
            child: Text('Adana'),
          ),
          DropdownMenuItem(
            value: 06,
            child: Text('Ankara'),
          ),
          DropdownMenuItem(
            value: 34,
            child: Text('İstanbul'),
          ),
          DropdownMenuItem(
            value: 35,
            child: Text('İzmir'),
          ),
          DropdownMenuItem(
            value: 16,
            child: Text('Bursa'),
          ),
        ], */
      ),
    );
  }
}
