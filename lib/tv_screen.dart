import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TvScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TV Controller ", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),),
      ),
      body: Text("TV Controller", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),),
    );
  }
  
}