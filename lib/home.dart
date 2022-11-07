// ignore_for_file: must_be_immutable, unnecessary_import, implementation_imports, prefer_const_constructors, unused_local_variable, unused_import

import 'api.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:machine_errors/models/machine.dart';

class MachineList extends StatefulWidget {
  const MachineList({super.key});

  @override
  State<MachineList> createState() => _MachineListState();
}

// getting the data from api

class _MachineListState extends State<MachineList> {
  List<Machine> machines = [];
  Api api = Api();
  getMachine() {
    Api.getAllMachine().then((response) {
      Iterable list = json.decode(response.body);
      machines = list.map((model) => Machine.fromJson(model)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fetch Data Example'),
        ),
        body: ListView.builder(
          itemCount: machines.length,
          machines.length>0 ? ListTile(),
        ),
      ),
    );
  }
}

// // Api api = Api();
// //   @override
// //   Widget build(BuildContext context) {
// //     var machine = 'getMachine';
// //     return Scaffold(
//       body: ListView(
//           children: allMachines
//               .map(
//                 (Machine machine) => ListTile(
//                   title: Text(machine.machineId.toString()),
//                   subtitle: Text(machine.machineName.toString()),
//                   leading: Icon(Icons.move_to_inbox_outlined),
//                 ),
//               )
//               .toList(),
//           ),
// //     );
// //   }