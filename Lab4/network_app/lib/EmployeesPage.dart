import 'dart:convert';


import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:network_app/AddEmployeePage.dart';
import 'package:network_app/connectioClass.dart';
import 'package:network_app/emplyee.dart';

class employeesListPage extends StatefulWidget {
  employeesListPage({Key key}) : super(key: key);

  @override
  _employeesPageState createState() => _employeesPageState();
}

class _employeesPageState extends State<employeesListPage> {

  Dio dio = new Dio();
  List<Employee> employeesList = [];
  connection con = connection();
  @override
  void initState() {

    super.initState();
   getEmployee();
  }

  Future<List<Employee>> getEmployee()  async {
    Response response;
    response = await dio.get("https://dummy.restapiexample.com/api/v1/employees");
    // print(response.data.runtimeType);
    // print(response.data["data"][1]);
    for(int i = 0 ; i < response.data['data'].length ; i++  ){

      Employee emp = new Employee(response.data["data"][i]["employee_name"], response.data["data"][i]["employee_age"].toString());
      employeesList.add(emp);
    }

    for(int i = 0 ; i < employeesList.length ; i++  ){
      print(employeesList[i].id);
    }
    return employeesList;
    // print(jsonDecode(response.data.toString()));

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
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => addemployeePage()),
            )

          } ,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        )
    );
  }

  Widget buildBody() {
    var _textStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w700,
    );

    return FutureBuilder(
      future: getEmployee(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting)
          return Center(child: CircularProgressIndicator());
        else if (snapshot.hasError)
          return Text("ERROR: ${snapshot.error}");
        else
        return Column(
          children: [
            Expanded(child:ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: snapshot.data.length ,
                itemBuilder:(BuildContext context, int index) {
                  return Container(
                      height: 50,
                      margin: EdgeInsets.all(2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('${snapshot.data[index].employee_name }'),
                          Text('Age : ${snapshot.data[index].employee_age}'),


                        ],
                      )
                  );
                }

            )
            )
          ],
        );
      },
    );
  }
}