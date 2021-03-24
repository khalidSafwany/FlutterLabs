import 'dart:convert';

import 'package:dio/dio.dart';
import 'emplyee.dart';

class connection{
  final _apiKey = "f55fbda0cb73b855629e676e54ab6d8e";
  final Dio dio = Dio();
  List<Employee> employeesList = [];

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
  }





