import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class addemployeePage extends StatefulWidget {
  addemployeePage({Key key}) : super(key: key);

  @override
  _addemployeePageState createState() => _addemployeePageState();
}

class _addemployeePageState extends State<addemployeePage> {

  Dio dio = new Dio();

  final nameController = TextEditingController();
  final ageController = TextEditingController();


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nameController.dispose();
    ageController.dispose();
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
    );
  }

  void addEmployee () async {
    if(nameController.text != null && ageController.text != null){
      Response apiResponse;
      apiResponse = await dio.post("https://dummy.restapiexample.com/api/v1/create", data: 	{"name":'${nameController.text}',"age":'${ageController.text}'});
      print(apiResponse);
      Navigator.pop(context,true);
    }

  }

  Widget buildBody() {
    var _textStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w700,
    );

    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
        Text("add new Employee",
        style: TextStyle(
        color: Colors.white
    ),
        ),
    ],
    )
    )
    ,
    body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          TextField(
            controller: nameController,
            decoration: InputDecoration(
                hintText: 'Employee Name'
            ),
          ),
          TextField(
            controller: ageController,
            decoration: InputDecoration(
                hintText: 'Employee Age'
            ),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: ElevatedButton(
              onPressed: addEmployee,
              child: Container(
                alignment: Alignment.center,
                height: 50,
                child: Text(
                  "ADD",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    )),
                backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.blue,

                ),
              ),
            ),

          ),
        ],

      ),

    );
  }
}