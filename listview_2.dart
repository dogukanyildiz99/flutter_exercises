// ignore_for_file: must_be_immutable, unnecessary_import, implementation_imports, prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_scroll_app/card_list.dart';

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
        title: Text('Student list'),
      ),
      body: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color:
                  index % 2 == 0 ? Colors.amber.shade100 : Colors.teal.shade100,
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CardListUse()),
                  );
                },
                title: Text(allStudents[index + 1].name),
                subtitle: Text(allStudents[index + 1].surname),
                leading: CircleAvatar(
                  child: Text(allStudents[index].id.toString()),
                ),
              ),
            );
          },
          itemCount: allStudents.length,
          separatorBuilder: (context, index) {
            int newIndex = index + 1;
            if (newIndex % 4 == 0) {
              return Divider(
                thickness: 2,
                color: Colors.amberAccent,
              );
            }
            return SizedBox();
          }),
    );
  }

  ListView ListViewBuilder() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Card(
          color: index % 2 == 0 ? Colors.amber.shade100 : Colors.teal.shade100,
          child: ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CardListUse()),
              );
            },
            title: Text(allStudents[index + 1].name),
            subtitle: Text(allStudents[index + 1].surname),
            leading: CircleAvatar(
              child: Text(allStudents[index].id.toString()),
            ),
          ),
        );
      },
      itemCount: allStudents.length,
    );
  }

  ListView ClassicListView() {
    return ListView(
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
    );
  }
}

class Student {
  final int id;
  final String name;
  final String surname;

  Student(this.id, this.name, this.surname);
}
