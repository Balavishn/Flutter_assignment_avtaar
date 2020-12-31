import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Topdesign extends StatelessWidget {
  String title;

  bool is_select=false;
  //final Shader lg=LinearGradient(begin: Alignment.topCenter,colors: [Colors.blue,Colors.red]);

  Topdesign(this.title,this.is_select);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 7,right: 7,bottom: 3,top:20),
            child: is_select?ShaderMask(
              child: Text(title,style: TextStyle(color: Colors.white,fontSize: 18),),
              shaderCallback: (rect){
                return LinearGradient(begin: Alignment.topCenter,colors: [Colors.white,Colors.black]).createShader(Rect.fromLTRB(30, 0, 30, 30));
              },
            ):Text(title,style: TextStyle(color: HexColor("#D7D7D7"),fontSize: 18),),
          ),
          SizedBox(height: 5,),
          is_select?Container(
            width:40,
            height: 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: HexColor("#630BFF"),
            ),
          ):Container()
        ],
      ),
    );
  }
}