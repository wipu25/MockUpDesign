import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:state_handling/common/color.dart';

class NavPage extends HookWidget {
  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: white,
                  boxShadow: [
                    BoxShadow(
                      color: lightGrey,
                      offset: Offset(0,11),
                      spreadRadius: 3,
                      blurRadius: 15
                    )
                  ]
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.search,color: mediumGrey,),
                    SizedBox(width: 5,),
                    Expanded(child: TextFormField(
                      style: TextStyle(color: mediumGrey),
                      cursorColor: mediumGrey,
                      decoration: InputDecoration(
                        hintText: "",
                        border: InputBorder.none
                      ),
                    ))
                  ],
                ),
              ),
              SizedBox(height: 50),
              Row(
                children: [
                  GestureDetector(
                    child: Row(
                      children: [
                        Text("DESTINATION",style: TextStyle(color: lightBlack),),
                        SizedBox()
                      ],
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    child: Icon(Icons.filter,color: lightBlack,),
                  )
                ],
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: double.infinity,
                child: ListView.builder(scrollDirection: Axis.horizontal,itemBuilder:(BuildContext _context, int index){
                  return Column(
                    children: [
                      Container(
                        color: Colors.black12,
                      ),
                    ],
                  );//your list elements here.
                },
                    itemCount: 5 //total count of elements on list
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}