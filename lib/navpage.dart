import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:state_handling/common/color.dart';
import 'package:state_handling/util/ItemWidget.dart';

class NavPage extends HookWidget {
  final cardLength = 3;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 20,),
              GestureDetector(
                onTap: () {

                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                  decoration: BoxDecoration(
                      color: white,
                      boxShadow: [
                        BoxShadow(
                            color: lightGrey,
                            offset: Offset(0, 11),
                            spreadRadius: 3,
                            blurRadius: 15
                        )
                      ]
                  ),
                  child: Icon(Icons.search, color: mediumGrey,),
                  alignment: Alignment.centerLeft,
                ),
              ),
              SizedBox(height: 50),
              buildHeadCategory("DESTINATION"),
              SizedBox(height: 20),
              buildCategory(),

              SizedBox(height: 50),
              buildHeadCategory("DESTINATION"),
              SizedBox(height: 20),
              buildCategory(),

              SizedBox(height: 50),
              buildHeadCategory("DESTINATION"),
              SizedBox(height: 20),
              buildCategory(),

              SizedBox(height: 50),
              buildHeadCategory("DESTINATION"),
              SizedBox(height: 20),
              buildCategory(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildHeadCategory(String headerText) {
    return Row(
      children: [
        GestureDetector(
          child: Row(
            children: [
              Text(
                headerText, style: TextStyle(color: lightBlack),),
            ],
          ),
        ),
        Spacer(),
        GestureDetector(
          onTap: () async {},
          child: Icon(Icons.filter, color: lightBlack,),
        )
      ],
    );
  }

  Widget buildCategory() {
    return Container(
        height: 200,
        child: ListView.builder(
          itemCount: cardLength,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return itemWidget(context, index);
          },
        )
    );
  }
}