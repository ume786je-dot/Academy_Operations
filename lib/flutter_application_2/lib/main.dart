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
          title: Text("BS IT")
        ),
        body: Container(
          width: double.infinity,   
          height: double.infinity,


decoration: BoxDecoration(
  gradient: LinearGradient(
    colors: [Colors.blue, Colors.white]
  )
),
        
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Welcome back",style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 40,
              )),
              SizedBox(
                height:20,
                  ),
                  TextField(
             decoration: InputDecoration(
             border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.email),
              filled: true,
              fillColor: Colors.white,
                      hintText: "Enter your email",
                      
                      ),
                    ),
                  SizedBox(
                height:20,
                  ), 
                   TextField(
                    obscureText: true,
             decoration: InputDecoration(
             border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.password),
          
              filled: true,
              fillColor: Colors.white,
                      hintText: "Enter your Password",
                      
                      ),
                    ),
                    SizedBox(
                height:20,
                  ),
                  Container(
                    width: double.infinity,
                    height:50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      
                      gradient: LinearGradient(
                        colors: [Colors.transparent, Colors.transparent]
                      
                    ),
                    ),
                    child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                    ),
                    
                      onPressed: () {},
                       child: Text("Login", style: TextStyle(
                        color: Colors.black,
                      ),
                      ),
                      ),
                      ),
                  
            ]   
                ),
        )
              
            ),
          
        ),
      );
  }
}