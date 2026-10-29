import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar : AppBar(
          backgroundColor: Colors.white,
          title: Text("Test")
        ),
                body: Row(
          children: [
            // First Column
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.red,
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      color: Colors.pink,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),

            // Second Column
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.blue,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.orange,
                    ),
                  ),
                                    Expanded(
                    child: Container(
                      color: Colors.tealAccent,
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

    

  
  
  
