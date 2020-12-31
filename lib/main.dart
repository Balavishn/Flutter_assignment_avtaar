import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'design.dart';
import 'nextpage.dart';
import 'dart:ui';
import 'designtop.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;



  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int select=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.white,
        elevation: 0,
        title:  Text("Lessions",style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold,fontSize: 28),),
        centerTitle: true ,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.yellow,
              radius: 15,
              child: Text("10"),
            ),
          )
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              height: 60,
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  children:[
                    SizedBox(width: 5,),
                    GestureDetector(
                        onTap: (){
                          setState(() {
                            select=0;
                          });
                        },
                        child: Topdesign("Design",select==0)
                    ),
                    Icon(Icons.circle,size: 10,color: HexColor("#D7D7D7"),),
                    GestureDetector(
                        onTap: (){
                          setState(() {
                            select=1;
                          });
                        },
                        child: Topdesign("Entertainment",select==1)
                    ),
                    Icon(Icons.circle,size: 10,color: HexColor("#D7D7D7"),),
                    GestureDetector(
                        onTap: (){
                          setState(() {
                            select=2;
                          });
                        },
                        child: Topdesign("Technology",select==2)
                    ),
                    Icon(Icons.circle,size: 10,color: HexColor("#D7D7D7"),),
                    GestureDetector(
                        onTap: (){
                          setState(() {
                            select=3;
                          });
                        },
                        child: Topdesign("Research",select==3)
                    ),
                    SizedBox(width: 5,),
                  ]
              ),
            ),

            Expanded(
              child: ListView(
                  children:[
                    SizedBox(height: 5,),
                    design("image/1.png","UI Design","visual appearance of app sjd",true,true,false),
                    design("image/2.png","Ux Design","Brain behind the design",true,true,false),
                    design("image/3.png","Interaction Design","Includes animations and eff...",true,false,false),
                    design("image/1.png","Industrial Design","Visual appearance of app and...",false,false,false),
                    SizedBox(height: 5,),
                  ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}







