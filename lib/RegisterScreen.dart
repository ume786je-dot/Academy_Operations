import 'package:flutter_application_2/login.dart';
import'package:flutter/material.dart';
import 'package:get/get.dart';

import 'dashboard.dart';
 class RegisterScreen extends StatelessWidget {
     const RegisterScreen({
    super.key,
    required this.name,
    required this.email,
    required this.password,
    required this.confirmedPassword,
  });

  final TextEditingController name;
  final TextEditingController email;
  final TextEditingController password;
  final TextEditingController confirmedPassword;



  @override
  Widget build(BuildContext context) {
    return Container(
       height: double.infinity,
       width: double.infinity,
       decoration: BoxDecoration(
       gradient: LinearGradient(
        colors: [Colors.lightBlue, Colors.lightGreenAccent
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
       )// linearGradient
     ),// BoxDecoration
      child:Center(
    child:Padding(
    padding: const EdgeInsets.all(24.0),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children:[
        Text(
          "Create Account",
          style: TextStyle(
            fontSize:30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        TextField(
              controller: name,       
              decoration: InputDecoration(
              hintText: "Full Name",
              prefixIcon: Icon(Icons.person),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ), 
          SizedBox(height:10,),
          TextField(
             controller: email,
             decoration: InputDecoration(
              hintText: "Email",
              prefixIcon: Icon(Icons.person),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ), 
    
          SizedBox(height:10,),
          TextField(
             controller: password,
             decoration: InputDecoration(
              hintText: "Password",
              prefixIcon: Icon(Icons.password ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ), 
          SizedBox(height:10,),
          TextField(
             controller: confirmedPassword,
             decoration: InputDecoration(
              hintText: "Confirm Password",
              prefixIcon: Icon(Icons.password_outlined),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ), 
          SizedBox(height:10,),
           Container(
             height: 50,
             width: double.infinity,
             decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(12),
             gradient: LinearGradient(
           colors: [Colors.red, Colors.yellow,
            ]
           )
          ),
          child: ElevatedButton(
            onPressed: (){
              Get.to(Dashboard(
                name:name.text,
                email:email.text,
              ));
    
             // print('Button');
             // print(name.text);
             // print(email.text);
             // print(password.text);
             // print(confirmedPassword.text);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor:Colors.transparent
            ),
            child: Text("Register"),
           ),
          ),
          GestureDetector(
            onTap:(){
              Get.to(LoginScreen());
            },
            child: Text("Already Has Account? Login",
            style: TextStyle(
              fontSize:20,
              fontWeight: FontWeight.bold,
            ),),
          ),
        ],
       ),
      )
     ),
    );
  }
}