import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LightScreen extends StatefulWidget {
  @override
  State<LightScreen> createState() => _LightScreenState();
}

class _LightScreenState extends State<LightScreen> {
  bool isSwitch6 = false;
  double _value4 = 5;

  List arrColors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.purpleAccent,
    Colors.orange,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Light Controller",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 420,
              decoration: BoxDecoration(
                // color: Colors.lightGreenAccent,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.orange, width: 2),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Living Room Fan",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Switch(
                          value: isSwitch6,
                          activeColor: Colors.orange,
                          onChanged: (value) {
                            setState(() {
                              isSwitch6 = value;
                              isSwitch6 != true
                                  ? print("Switch is off")
                                  : print("Switch is on");
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      "Speed Controller",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Slider(
                      min: 0,
                      max: 5,
                      divisions: 5,
                      activeColor: Colors.orange,
                      label: _value4.round().toString(),
                      value: _value4,
                      onChanged: (value) {
                        _value4 = value;
                        setState(() {});
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      "Color Picker",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: GridView.builder(
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          return CircleAvatar(
                            radius: 20,
                            backgroundColor: arrColors[index],
                          );
                        },
                        itemCount: arrColors.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 5,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10

                        ),
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
