import 'dart:convert';

import 'package:dio/dio.dart';

import 'model.dart';

class API {
  API();

  final Dio dio = Dio();

  Future<List<Employee>> getEmployee()  async{
    return  dio
        .get(
      'http://dummy.restapiexample.com/api/v1/employees',
    )
        .then((response) {
      List<Employee> list = (response.data['data'] as List)
          .map((employee) => Employee.fromJson(employee))
          .toList();
      return list;
    });
  }

  Future<void> createEmployeeModel(Employee employeeModel) async{
    dio.options.headers.putIfAbsent("Accept", () {
      return "application/json";
    });
    return await dio
        .post("http://dummy.restapiexample.com/api/v1/create", data: jsonEncode(employeeModel))
        .then((d) {
      print(d.data);
    });
  }
}
