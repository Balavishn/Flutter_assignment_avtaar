import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'nextpage.dart';

class design extends StatefulWidget {
  String img,title,disc;
  bool one=false;
  bool two=false;
  bool three=false;

  design(this.img,this.title,this.disc,this.one,this.two,this.three);

  @override
  _designState createState() => _designState();
}

class _designState extends State<design> {

  bool lockclick=false;
  bool book=false;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder:(context)=>Nextpage(widget.title)));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        //color: Colors.red,
        padding: EdgeInsets.only(top: 8,left: 5,right: 1),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
                width: MediaQuery.of(context).size.width*.88,
                height: 110,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow:  [BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                    )]
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 5,),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image(image:AssetImage(widget.img),fit: BoxFit.cover,width: 80,height: 80,)),
                        SizedBox(width: 5,),
                        Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 5,),
                                Text(widget.title,style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                                SizedBox(height: 5,),
                                Text(widget.disc,style: TextStyle(fontSize: 15,color: Colors.grey,fontWeight: FontWeight.bold),)
                              ],
                            )
                        ),
                        GestureDetector(
                            onTap: (){
                              setState(() {
                                book = !(book);
                              });
                            },
                            child: book?Icon(Icons.bookmark,size: 30,):Icon(Icons.bookmark_border,size: 30,)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width:MediaQuery.of(context).size.width*.27,
                          height: 7,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: widget.one?Colors.green:Colors.grey,
                          ),
                        ),
                        Container(
                          width:MediaQuery.of(context).size.width*.27,
                          height: 7,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: widget.two?Colors.green:Colors.grey,
                          ),
                        ),
                        Container(
                          width:MediaQuery.of(context).size.width*.27,
                          height: 7,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: widget.three?Colors.green:Colors.grey,
                          ),
                        ),
                      ],
                    )
                  ],
                )
            ),
            SizedBox(width: 2,),
            GestureDetector(
                onTap: (){
                  setState(() {
                    lockclick = !(lockclick);
                  });
                },
                child: lockclick?Icon(Icons.lock,size: 30,color: HexColor("#D7D7D7"),):Icon(Icons.lock_open,size: 30,color: Colors.grey,))
          ],
        ),
      ),
    );
  }
}