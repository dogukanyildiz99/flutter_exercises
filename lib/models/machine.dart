// ignore_for_file: unnecessary_this, unnecessary_new, prefer_collection_literals

class Machine {
  int? machineId;
  String? machineName;
  String? machineNumber;
  int? createdById;
  DateTime? createdAt;
  int? departmentId;
  int? machineTypeId;

  Machine(
      {this.machineId,
      this.machineName,
      this.machineNumber,
      this.createdById,
      this.createdAt,
      this.departmentId,
      this.machineTypeId});

  Machine.fromJson(Map<String, dynamic> json) {
    machineId = json['machineId'];
    machineName = json['machineName'];
    machineNumber = json['machineNumber'];
    createdById = json['createdById'];
    createdAt = json['createdAt'];
    departmentId = json['departmentId'];
    machineTypeId = json['machineTypeId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['machineId'] = this.machineId;
    data['machineName'] = this.machineName;
    data['machineNumber'] = this.machineNumber;
    data['createdById'] = this.createdById;
    data['createdAt'] = this.createdAt;
    data['departmentId'] = this.departmentId;
    data['machineTypeId'] = this.machineTypeId;
    return data;
  }
}
