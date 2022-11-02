// ignore_for_file: must_be_immutable, unnecessary_import, implementation_imports, prefer_const_constructors, non_constant_identifier_names, unused_import

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_scroll_app/card_list.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class ListViewUse extends StatelessWidget {
  ListViewUse({super.key});

  List<Student> allStudents = List.generate(
    500,
    (index) => Student(index + 1, "Name ${index + 1}", "Surname ${index + 1}"),
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
                  EasyLoading.instance.fontSize = 24;
                  int newIndex = index + 1;
                  if (newIndex % 2 == 0) {
                    EasyLoading.instance.backgroundColor = Colors.amber;
                  } else {
                    EasyLoading.instance.backgroundColor = Colors.teal;
                  }
                  EasyLoading.showToast(
                    'Student selected!',
                    duration: Duration(seconds: 3),
                    dismissOnTap: true,
                    toastPosition: EasyLoadingToastPosition.bottom,
                  );
                  /* Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CardListUse()),
                  ); */
                },
                onLongPress: () {
                  _alertDialogWindow(context, allStudents[index]);
                },
                title: Text(allStudents[index].name),
                subtitle: Text(allStudents[index].surname),
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

  void _alertDialogWindow(BuildContext myContext, Student selected) {
    showDialog(
        barrierDismissible: false,
        context: myContext,
        builder: (context) {
          return AlertDialog(
            title: Text(selected.toString()),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Text(lorem(paragraphs: 3, words: 200)),
                ],
              ),
            ),
            actions: [
              ButtonBar(
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('KAPAT')),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('TAMAM')),
                ],
              )
            ],
          );
        });
  }
}

class Student {
  final int id;
  final String name;
  final String surname;

  Student(this.id, this.name, this.surname);

  @override
  String toString() {
    return '$name $surname $id';
  }
}
