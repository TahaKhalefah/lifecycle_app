import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'api.dart';
import 'empPOJO.dart';
import 'model.dart';

class AddEmpoyeeScreen extends StatefulWidget {
  AddEmpoyeeScreen() : super();

  @override
  _AddEmpoyeeScreenState createState() => _AddEmpoyeeScreenState();
}

class _AddEmpoyeeScreenState extends State<AddEmpoyeeScreen> {
  var employeeNameController = TextEditingController();
  var employeeAgeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(64.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      decoration: InputDecoration(hintText: "Enter Name"),
                      controller: employeeNameController,
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      decoration: InputDecoration(hintText: "Enter Age"),
                      controller: employeeAgeController,
                    ),
                  ),
                ),
                Consumer<EmpModel>(builder: (context, model, child) {
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: FlatButton(
                        onPressed: () {
                          var emp = Employee(employeeNameController.text,
                              employeeAgeController.text);
                          API().createEmployeeModel(emp);
                          model.addEmployee(emp);
                          Navigator.pop(context);
                        },
                        child: Text(
                          "ADD",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                      ),
                    ),
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
