import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LightScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Light Controller",style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),),
      ),
      body: Text("Light",style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),),
    );
  }
  
}