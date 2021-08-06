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
              Expanded(
                child: ListView(
                  padding: EdgeInsets.all(10),
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      width: double.infinity,
                      color: lightGrey,
                      child: Column(
                        children: [

                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}