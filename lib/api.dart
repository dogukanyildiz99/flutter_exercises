// ignore_for_file: unused_import

import 'dart:convert';

import 'package:machine_errors/models/machine.dart';
import 'package:http/http.dart' as http;

String baseurl = 'http://10.141.18.152:5010/api/MaintenanceAPI/';

class Api {
  static Future<http.Response> getAllMachine() {
    var url = "${baseurl}getMachine";
    return http.get(Uri.parse(url), headers: {"Accept": "application/json"});
  }
}
