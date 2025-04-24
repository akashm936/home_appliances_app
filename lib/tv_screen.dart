import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TvScreen extends StatefulWidget{
  @override
  State<TvScreen> createState() => _TvScreenState();
}

class _TvScreenState extends State<TvScreen> {

  bool isSwitch5 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ThemeData().appBarTheme.backgroundColor,
        title: Text("TV Controller ", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                // color: Colors.lightGreenAccent,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.orange,
                    width: 2,
                  )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("My TV ",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                        Switch(
                            value: isSwitch5,
                            activeColor: Colors.orange,
                            onChanged: (value){
                              setState(() {
                                isSwitch5 = value;
                                isSwitch5!=true ? print("TV Switch is off"): print("TV Switch is on");
                              });
                            })
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 70,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              width: 2,
                              color: Colors.orange
                            )
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.add,size: 30,color: Colors.orange,),
                                Text('Vol',style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                Icon(Icons.remove,size: 30,color: Colors.orange,)
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 70,
                          height: 150,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                  width: 2,
                                  color: Colors.orange
                              )
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.add,size: 30,color: Colors.orange,),
                                Text('Chl',style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                Icon(Icons.remove,size: 30,color: Colors.orange,)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}