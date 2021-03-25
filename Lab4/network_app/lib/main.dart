import 'package:alice/alice.dart';
import 'package:flutter/material.dart';
import 'package:network_app/EmployeesModel.dart';
import 'package:network_app/EmployeesPage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}
//Alice alice = Alice(showNotification: true);
class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(create:(context) => EmployeesModel(),
      child: MaterialApp(
     // navigatorKey:alice.getNavigatorKey() ,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: employeesListPage(),

      )
    );

  }


}
