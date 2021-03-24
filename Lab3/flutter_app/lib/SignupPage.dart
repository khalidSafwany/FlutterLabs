import 'package:flutter/material.dart';
import 'package:flutter_app/HomePage.dart';
import 'package:flutter_app/logInPage.dart';


class SignupPage extends StatefulWidget {
  SignupPage({Key key}) : super(key: key);

  @override
  _SignupPage createState() => _SignupPage();
}

class _SignupPage extends State<SignupPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey.shade100,
        child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
        Row(
        children: [
        Container(
        padding: EdgeInsets.only(left: 30,top: 40),
        child:Align(
          alignment: Alignment.topLeft,
          child: Text(
            "Login",
            style: TextStyle(
              color: Colors.black12,
              fontSize: 30,

            ),
          ),
        ),
      ),
      SizedBox(width:130),
      Container(
        padding: EdgeInsets.only(top: 40),
        child:Align(
          alignment: Alignment.topRight,
          child: Text(
            "SignUp",
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,

            ),
          ),
        ),
      )
      ],
    ),

    SizedBox(height:20),
    Container(
    width: 50,
    height: 50,
    decoration: BoxDecoration(
    shape: BoxShape.circle,
    image: DecorationImage(
    image:new ExactAssetImage("assets/logo.png"),
    fit: BoxFit.fill
    ),
    ),
    ),

    Text(
    "GoKart",
    style: TextStyle(
    color: Colors.deepPurpleAccent,
    fontSize: 20,

    ),
    ),

    Container(
    padding: EdgeInsets.only(left: 20,right: 20),
    child: Align(
    alignment: Alignment.centerLeft,
    child:TextField(

    decoration: InputDecoration(

    hintText: 'Email Address'
    ),
    ),

    ),
    ),

    SizedBox(height: 10),
              Container(
                padding: EdgeInsets.only(left: 20,right: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child:TextField(

                    decoration: InputDecoration(

                        hintText: 'Username'
                    ),
                  ),

                ),
              ),

              SizedBox(height: 10),
    Container(
    padding: EdgeInsets.only(left: 20,right: 20),
    child: Align(
    alignment: Alignment.centerLeft,
    child:TextField(

    obscureText: true,

    decoration: InputDecoration(
    hintText: 'password',
    suffixIcon: IconButton(
    icon: Icon(
    Icons.remove_red_eye,
    color: Colors.grey,

    ),

    ),
    ),



    ),

    ),
    ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.only(left: 20,right: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child:TextField(

                    obscureText: true,

                    decoration: InputDecoration(
                      hintText: 'Repeat password',
                        suffixIcon: IconButton(
                        icon: Icon(
                         Icons.remove_red_eye,
                        color: Colors.grey,

                     ),

                    ),
                  ),

                ),
              ),
              ),
              SizedBox(height: 10),
              Container(

                padding: EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      blurRadius: 30,
                      spreadRadius: 0.2,
                      offset: Offset(20, 20),
                    ),
                  ],
                ),
                child:  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(

                          child: Icon(
                            Icons.check,
                            color: Colors.blue,
                            size: 20,
                          ),
                        ),

                        Text(
                          " SIGN UP",
                          style: TextStyle(color: Colors.blue),

                        )
                      ],
                    ),

                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed))
                              return Colors.white;
                            return Colors.white; // Use the component's default.
                          },
                        ),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(

                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.white),

                            )
                        )
                    )
                ),
              ),
              SizedBox(height: 10),
           new Row(
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text(
                "Already Have an Account? ",
                   style: TextStyle(color: Colors.grey),
               ),
             Text(
              "Login",
    style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),

    )
   ]
    ),
    ]
    ),
      )
    );
  }
}