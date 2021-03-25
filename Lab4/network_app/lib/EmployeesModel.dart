import 'package:alice/alice.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:network_app/main.dart';

import 'emplyee.dart';


class EmployeesModel extends ChangeNotifier{
  List<Employee> employeesList = [];


 Future<void> getEmployee()  async {
    Response response;

    Dio dio = Dio();
    //dio.interceptors.add(alice.getDioInterceptor());
    response = await dio.get("https://dummy.restapiexample.com/api/v1/employees");
    // print(response.data.runtimeType);
    // print(response.data["data"][1]);
    for(int i = 0 ; i < response.data['data'].length ; i++  ){

      Employee emp = new Employee(response.data["data"][i]["employee_name"], response.data["data"][i]["employee_age"].toString());
      employeesList.add(emp);
    }
    print(employeesList);
    for(int i = 0 ; i < employeesList.length ; i++  ){
      print(employeesList[i].employee_age);
    }
    notifyListeners();
    // print(jsonDecode(response.data.toString()));

  }

  addEmployeeInList(Employee newEmployee){

employeesList.add(newEmployee);
notifyListeners();
}
}