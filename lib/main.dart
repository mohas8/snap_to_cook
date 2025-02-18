import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Layout Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                  child: Center(child: Text('Row 1')),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                  child: Center(child: Text('Row 2')),
                ),
              ],
            ),
            SizedBox(height: 20),
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.blue,
                  child: Center(child: Text('Column 1')),
                ),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.orange,
                  child: Center(child: Text('Column 2')),
                ),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: List.generate(4, (index) {
                  return Container(
                    color: Colors.purple,
                    child: Center(child: Text('Grid $index')),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
