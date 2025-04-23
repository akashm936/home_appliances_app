import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class AcScreen extends StatefulWidget{
  @override
  State<AcScreen> createState() => _AcScreenState();
}

class _AcScreenState extends State<AcScreen> {

  double _value1 = 1;
  bool isSwitch4 = false;
  int temp = 22;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AC Controller",style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
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
                        Text("Living Room Fan",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                        Switch(
                            value: isSwitch4,
                            activeColor: Colors.orange,
                            onChanged: (value){
                              setState(() {
                                isSwitch4 = value;
                                isSwitch4!=true ? print("Switch is off"): print("Switch is on");
                              });
                            })
                      ],
                    ),
                  ),
                  // SfSlider(value: value, onChanged: onChanged)
                  Slider(
                    padding: EdgeInsets.only(top: 40, bottom: 30, left: 30, right: 30),
                    min: 0,
                      max: 5,
                      divisions: 5,
                      activeColor: Colors.orange,
                      label: '${_value1.round().toString()}',
                      value: _value1, onChanged: (value){
                    _value1 = value;
                    setState(() {

                    });

                  }),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text("Temparature Controller", style: TextStyle(fontSize: 18),),
                  ),
                  Expanded(
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: (){
                              setState(() {
                                if(temp > 15)
                                  temp--;
                              });
                            },
                              child: Icon(Icons.remove, size: 50, color: Colors.orange,)),
                          Text('$temp\u00B0C',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                          InkWell(
                            onTap: (){
                              setState(() {
                                if(temp < 30)
                                  temp++;
                              });
                            },
                              child: Icon(Icons.add,size: 50,color: Colors.orange,))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}