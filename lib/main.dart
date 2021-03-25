
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'empPOJO.dart';
import 'home.dart';

void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  EmpModel model = new EmpModel();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
      ChangeNotifierProvider.value(
        value:model,
        child:MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home:  Home(),
        ),
      );
  }
}