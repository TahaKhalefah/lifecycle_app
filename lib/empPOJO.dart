import 'package:flutter/material.dart';

import 'api.dart';
import 'model.dart';

class EmpModel with ChangeNotifier {
  List<Employee> employeeList;

  EmpModel() {
    employeeList = List();
    API().getEmployee().then((addedEmployeeList) {
      employeeList.addAll(addedEmployeeList);
      notifyListeners();
    });
  }

  addEmployee(Employee employee) {
    employeeList.add(employee);
    notifyListeners();
  }

  addEmployeeList(List<Employee> addedEmployeeList) {
    employeeList.addAll(addedEmployeeList);
    notifyListeners();
  }
}
