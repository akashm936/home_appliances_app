import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FanScreen extends StatefulWidget{

  @override
  State<FanScreen> createState() => _FanScreenState();

}

class _FanScreenState extends State<FanScreen> {
  double _value = 1;
  bool isSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fan",style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
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
                          value: isSwitch,
                            activeColor: Colors.orange,
                            onChanged: (value){
                          setState(() {
                            isSwitch = value;
                            isSwitch!=true ? print("Switch is off"): print("Switch is on");
                            });
                        })
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text("Speed Controller", style: TextStyle(fontSize: 18),),
                  ),
                  Expanded(
                    child: Slider(
                      min: 0,
                      max: 5,
                      divisions: 5,
                      activeColor: Colors.orange,
                      label: _value.round().toString(),
                      value: _value, onChanged: (value){
                      _value = value;
                      setState(() {

                      });

                    }),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}