import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget itemWidget(BuildContext context,int index) {
  return Padding(
    padding: EdgeInsets.only(left: (index != 0) ? 8.0 : 0),
    child: Container(
      width: MediaQuery
          .of(context)
          .size
          .width / 2 * 0.9,
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
}