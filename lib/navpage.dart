import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:state_handling/common/color.dart';

class NavPage extends HookWidget {
  final cardLength = 3;

  @override
  Widget build(BuildContext context) {
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
                          offset: Offset(0, 11),
                          spreadRadius: 3,
                          blurRadius: 15
                      )
                    ]
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.search, color: mediumGrey,),
                    SizedBox(width: 5,),
                    Expanded(
                        child: TextFormField(
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
                        Text(
                          "DESTINATION", style: TextStyle(color: lightBlack),),
                        SizedBox()
                      ],
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () async {
                      try {
                        final inas = await GoogleSignIn(scopes: ['email'])
                            .signIn();
                        print(inas.email);
                      } catch (error) {
                        print(error);
                      }
                    },
                    child: Icon(Icons.filter, color: lightBlack,),
                  )
                ],
              ),
              SizedBox(height: 20),
              Expanded(
                child: Container(
                    child: ListView.builder(
                      itemCount: cardLength,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: EdgeInsets.only(left: (index != 0) ? 8.0 : 0),
                          child: Container(
                            width: MediaQuery
                                .of(context)
                                .size
                                .width * 0.9,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Flexible(
                                  flex: 2,
                                  child: Container(
                                    color: Colors.blue,
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                          width: double.infinity,
                                          child: Text("header",textAlign: TextAlign.start,)
                                      ),
                                      SizedBox(
                                          width: double.infinity,
                                          child: Text("header",textAlign: TextAlign.start,)
                                      ),
                                      SizedBox(
                                          width: double.infinity,
                                          child: Text("header",textAlign: TextAlign.start,)
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}