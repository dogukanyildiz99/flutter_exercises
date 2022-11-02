// ignore_for_file: must_be_immutable, unnecessary_import, implementation_imports, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListViewUse extends StatelessWidget {
  ListViewUse({super.key});

  List<Student> allStudents = List.generate(
    500,
    (index) => Student(index + 1, "Name $index", "Surname $index"),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView use'),
      ),
      body: ListView(
        children: allStudents
            .map(
              (Student stdnt) => ListTile(
                title: Text(stdnt.name),
                subtitle: Text(stdnt.surname),
                leading: CircleAvatar(
                  child: Text(stdnt.id.toString()),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

class Student {
  final int id;
  final String name;
  final String surname;

  Student(this.id, this.name, this.surname);
}
