import 'package:flutter/material.dart';
import 'package:home_appliances_app/tv_screen.dart';

import 'ac_screen.dart';
import 'fan_screen.dart';
import 'light_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  print("User Clicked on Fan");
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FanScreen()),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(11),
                  width: 150,
                  height: 150,

                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(20),

                    // border: Border.all(width: 1,color: Colors.blue,)
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/ceiling.png',
                        width: 90,
                        height: 90,
                      ),
                      Text(
                        'Fan',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  print('User Clicked on Air Conditioner');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AcScreen()),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(11),
                  width: 150,
                  height: 150,

                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/air-conditioner.png',
                        width: 90,
                        height: 90,
                      ),
                      Text(
                        'AC',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  print('User Clicked On Monitor');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TvScreen()),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(11),
                  width: 150,
                  height: 150,

                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/monitor.png',
                        width: 90,
                        height: 90,
                      ),
                      Text(
                        'TV',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  print('User Clicked on Light');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LightScreen()),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(11),
                  width: 150,
                  height: 150,

                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/lightbulb.png',
                        width: 90,
                        height: 90,
                      ),
                      Text(
                        'Light',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
