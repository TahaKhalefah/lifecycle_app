import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'empPOJO.dart';
import 'addEmployee.dart';

class Home extends StatefulWidget {
  Home() : super();

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Consumer<EmpModel>(builder: (context, model, child) {
            return ListView.builder(
                itemCount: model.employeeList.length,
                itemBuilder: (context, position) {
                  return Center(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${(model.employeeList[position]).employeeName}",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                });
          })),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (_) => AddEmpoyeeScreen(),
          ));
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
