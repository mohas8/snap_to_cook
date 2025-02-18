import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Basic UI -02",
      home: LabClass05(),
    );
  }
}

class LabClass05 extends StatelessWidget {
  const LabClass05({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Basic Flutter Design -02"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Hi Whats'up?", 
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20), 
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.abc_outlined,  
                size: 40,
                color: Colors.green,
              ),
              Icon(
                Icons.access_alarm,  
                size: 40,
                color: Colors.yellow,
              ),
              Icon(
                Icons.access_alarm_outlined,  
                size: 40,
                color: Colors.red,
              ),
              Icon(
                Icons.access_time_filled_outlined,  
                size: 40,
                color: Colors.black,
              ),
              Icon(
                Icons.star_border, // ok
                size: 40,
                color: Colors.black,
              ),
            ],
          ),
        ],
      ),
    );
  }
}