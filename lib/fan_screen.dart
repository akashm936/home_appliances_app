import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FanScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fan",style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.lightGreen,
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Living Room Fan",)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}