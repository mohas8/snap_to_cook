import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Basic Flutter UI - 02"),
          backgroundColor: Colors.blue[400],
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                Icons.abc_sharp,
                size: 50,
                color: Color.fromARGB(255, 255, 0, 0),
              ),
              const Icon(
                Iconsax.activity,
                size: 50,
                color: Color.fromARGB(255, 0, 255, 0),
              ),
              Row(
                children: const [
                  Icon(
                    Icons.access_alarm,
                    size: 50,
                    color: Color.fromARGB(255, 0, 0, 255),
                  ),
                  SizedBox(width: 20),
                  Icon(
                    Icons.account_circle,
                    size: 50,
                    color: Color.fromARGB(255, 255, 165, 0),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
