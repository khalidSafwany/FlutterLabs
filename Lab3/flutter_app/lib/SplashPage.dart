import 'package:flutter/material.dart';


class SplashPage extends StatefulWidget {
  SplashPage({Key key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blue,

      child: Container(
        child: Stack(
          children: [
        Positioned.fill(
        child: Container(
        color: Colors.blueAccent,
        ),
        ),
            Positioned.fill(
              child: Container(
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Spacer(flex: 30),
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
                    Spacer(flex: 5),
                    Text(
                      "GoKart",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,

                      ),
                    ),
                    Spacer(flex: 60),

                    SizedBox(
                      height: 10, //
                    ),


                Container(
                  padding: EdgeInsets.only(bottom: 100.0),
                  alignment: Alignment.center,
                  child:Column(


                    children: [

                      Container(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Icon(
                          Icons.account_box,
                          color: Colors.yellow,
                          size: 60,
                        ),
                      ),
                   Text(
                      "Flutter E commerce",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),

                  Text(
                      "UI Template",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    ]
                ),
                )
                  ],
                ),
              ),
            ),


              
                
              
            
          ],
        ),

      ),


      ),
    );
  }
}