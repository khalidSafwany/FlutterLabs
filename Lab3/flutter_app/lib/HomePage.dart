import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Text("sara poly silk",
               style: TextStyle(
              color: Colors.white
          ),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.favorite, color: Colors.white),
                  Icon(Icons.add_shopping_cart , color: Colors.white)
                ],)
            ],
          )
      )
      ,
      body: SafeArea(
        child: Container(
          child: Container(
            alignment: Alignment.center,
            child: buildBody(),
          ),
        ),
      ),
    );
  }

  Widget buildBody() {
    var _textStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w700,
    );

    return SingleChildScrollView(
      child: Container(
        color: Colors.grey[200],

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              color: Colors.white,
              // alignment: Alignment.
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  SizedBox(height: 20,),
                  Text("saara poly silk embellised , woven salwar suit material (unstiched)"
                    , style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,

                    ),
                    textAlign: TextAlign.left,),
                  SizedBox(height: 10,),
                  Container(

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25)
                      ,border: Border.all(
                        color: Colors.white,
                        width: 1
                    ),
                      color: Colors.grey[200],
                    ),

                    child: Text("Special price"

                      , style: TextStyle(
                        fontSize: 14,
                        color: Colors.red,
                      ),
                      textAlign: TextAlign.left,),
                  ),
                  SizedBox(height: 10,),
                  Row(children: [
                    Text(" ¥548  "),
                    Text(" ¥3333  ",
                      style: TextStyle(decoration: TextDecoration.lineThrough),),
                    Text(" ¥70% off  ",
                      style: TextStyle(color: Colors.red),)
                  ],),
                  SizedBox(height: 20,),
                  Container(
                    width: 120,
                    child: Row(

                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25)
                          ,border: Border.all(
                            color: Colors.white,
                            width: 1
                        ),
                          color: Colors.red[200],
                        ),

                            child: Text("4.3", style: TextStyle(color: Colors.white),)),
                        Text("2814 rating "),
                      ],),
                  ),
                  SizedBox(height: 20,),

                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              color: Colors.white,
              // alignment: Alignment.
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  SizedBox(height: 20,),
                  Text("Size"
                    , style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,

                    ),
                    textAlign: TextAlign.left,),
                  SizedBox(height: 10,),
                  Text("tip : for the best result buy one size larger"
                    , style: TextStyle(
                      fontSize: 14,

                    ),
                    textAlign: TextAlign.left,),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,

                    children: [
                      Container(
                          width: 40,
                          height: 20,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25)
                            ,border: Border.all(
                              color: Colors.white,
                              width: 1
                          ),
                            color: Colors.grey[200],
                          ),

                          child: Text("XS")),
                      Container(
                          width: 40,
                          height: 20,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25)
                            ,border: Border.all(
                              color: Colors.white,
                              width: 1
                          ),
                            color: Colors.grey[200],
                          ),

                          child: Text("S")),
                      Container(
                          width: 40,
                          height: 20,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25)
                            ,border: Border.all(
                              color: Colors.white,
                              width: 1
                          ),
                            color: Colors.grey[200],
                          ),

                          child: Text("M")),
                      Container(
                          width: 40,
                          height: 20,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25)
                            ,border: Border.all(
                              color: Colors.white,
                              width: 1
                          ),
                            color: Colors.grey[200],
                          ),

                          child: Text("L")),

                    ],),
                  SizedBox(height: 20,),

                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              color: Colors.white,
              // alignment: Alignment.
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  SizedBox(height: 20,),
                  Text("Color"
                    , style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,

                    ),
                    textAlign: TextAlign.left,),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,

                    children: [
                      Container(
                        child: SizedBox(height: 50, width: 50,),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25)
                            ,border: Border.all(
                            color: Colors.white,
                            width: 1
                        ),
                            color: Colors.black
                        ),
                      ),
                      Container(
                        child: SizedBox(height: 50, width: 50,),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25)
                            ,border: Border.all(
                            color: Colors.white,
                            width: 1
                        ),
                            color: Colors.red
                        ),
                      ),
                      Container(
                        child: SizedBox(height: 50, width: 50,),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25)
                            ,border: Border.all(
                            color: Colors.white,
                            width: 1
                        ),
                            color: Colors.blue
                        ),
                      ),
                    ],),
                  SizedBox(height: 20,),

                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              color: Colors.white,
              // alignment: Alignment.
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  SizedBox(height: 20,),
                  Text("Product Details"
                    , style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,

                    ),
                    textAlign: TextAlign.left,),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(

                        child: Column(

                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Text("Color" , textAlign: TextAlign.left,),
                            Text("Length" , textAlign: TextAlign.left),
                            Text("Type"),
                            Text("Sleeve"),
                          ],
                        ),
                        width: 150,
                        alignment: Alignment.centerLeft,
                      )
                      ,
                      Container(

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Text("Yellow"),
                            Text("Knee Length"),
                            Text("Bandage"),
                            Text("Cap Sleeve"),
                          ],
                        ),
                        width: 150,
                        alignment: Alignment.centerLeft,
                      ),

                    ],
                  ),
                  SizedBox(height: 20,),

                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              color: Colors.white,
              // alignment: Alignment.
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  SizedBox(height: 20,),
                  Text("Product Descripction"
                    , style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,

                    ),
                    textAlign: TextAlign.left,),
                  SizedBox(height: 10,),
                  Text(
                    "saraa poly silk embellised , woven salwar suit material (unstiched)saraa poly silk embellised , woven salwar suit material (unstiched)saraa poly silk embellised , woven salwar suit material (unstiched)"
                    , style: TextStyle(
                      fontSize: 14,

                    ),
                    textAlign: TextAlign.left,),

                  SizedBox(height: 20,),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}