import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter=0;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("BS IT"),
          backgroundColor: Colors.red,
        ),
        body: Column(
          children: [
            Text("Counter"),
             Text("$counter"),

          ],

            
                ),
                floatingActionButton: FloatingActionButton(onPressed: (){
setState(() {
  counter++;
});
                }, child: Icon(Icons.plus_one)
                ),
              ),
            );
  
  }
}