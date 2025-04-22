import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AcScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AC Controller",style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
      ),
      body: Text("AC", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),),
    );
  }

}