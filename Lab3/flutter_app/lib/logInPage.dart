import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/HomePage.dart';
import 'package:flutter_app/SignupPage.dart';


class logInPage extends StatefulWidget {
  logInPage({Key key}) : super(key: key);

  @override
  _logInState createState() => _logInState();
}

class _logInState extends State<logInPage>{
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
            color: Colors.black,
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
                      color: Colors.black12,
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

                            hintText: 'Username or Email Address'
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
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forget Password?",
                      style: TextStyle(
                        color: Colors.black38,
                        fontWeight: FontWeight.w700,
                      )
                    ),
                  ),
                  SizedBox(height: 50),

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
                              MaterialPageRoute(builder: (context) => SignupPage()),
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
                              " LOG IN",
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

                  new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't Have an Account?",
                          style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        "Register",
                        style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),

                      )
                    ],
                    
                  ),
                  SizedBox(height: 10),
                  new Text(
                    "continue with",
                  style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),

                  ),

                  new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(

                        style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            primary: Colors.blue
                        ),
                        child: Container(
                          width: 40,
                          height: 40,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(shape: BoxShape.circle,
                            color: Colors.black,
                            image: DecorationImage(
                            image:AssetImage("assets/facebook.png"),
                            fit:BoxFit.cover),


                              ),

                        ),
                      ),

                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            primary: Colors.blue
                        ),
                        child: Container(
                          width: 38,
                          height: 38,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(shape: BoxShape.circle,
                            color: Colors.black,
                            image: DecorationImage(
                                image:AssetImage("assets/google-plus.png"),
                                fit:BoxFit.cover),


                          ),

                        ),
                      )
                    ],
                  )



]
    )

        )

);

  }
}