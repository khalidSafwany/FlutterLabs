import 'dart:convert';


import 'package:alice/alice.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:network_app/AddEmployeePage.dart';
import 'package:network_app/EmployeesModel.dart';
import 'package:network_app/connectioClass.dart';
import 'package:network_app/emplyee.dart';
import 'package:provider/provider.dart';

class employeesListPage extends StatefulWidget {

  employeesListPage({Key key}) : super(key: key);

  @override
  _employeesPageState createState() => _employeesPageState();
}

class _employeesPageState extends State<employeesListPage> {

  Dio dio;
  Alice alice;

  connection con = connection();
  @override
  void initState() {

    super.initState();
   // myModel.getEmployee();
    dio = Dio();

  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    Provider.of<EmployeesModel>(context,listen: false).getEmployee();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: buildBody(),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {
            //Provider.of<EmployeesModel>(context,listen: false).addEmployeeInList(Employee("employee_name", "2"))
            Navigator.of(context).push(
              PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) =>
                    addemployeePage(),
              ),

            )
          } ,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        )
    );
  }

  Widget buildBody() {

        return Consumer<EmployeesModel>(
                  builder: (context,myModel,child){
                    print(myModel.employeesList.length.toString() + "length");
                    return ListView.builder(
                        padding: const EdgeInsets.all(8),
                        itemCount: myModel.employeesList.length ,
                        itemBuilder:(BuildContext context, int index) {
                          return Container(
                              height: 50,
                              margin: EdgeInsets.all(2),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('${myModel.employeesList[index].employee_name}'),
                                  Text('Age : ${myModel.employeesList[index].employee_age}'),


                                ],
                              )
                          );
                        }

                    );
                  }




        );

  }
}