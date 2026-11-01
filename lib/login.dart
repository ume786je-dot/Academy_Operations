import'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dashboard.dart';

 class LoginScreen extends StatelessWidget {
     final email= TextEditingController();
     final passward= TextEditingController();

   String correctEmail = "ume786@gmail.com";
   String correctPassward = "12345678";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
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
              "Login Here",
              style: TextStyle(
                fontSize:30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
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
                 controller: passward,
                 obscureText:true,
                 decoration: InputDecoration(
                  hintText: "Password",
                  prefixIcon: Icon(Icons.password ),
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
                  if(email.text==correctEmail && passward.text==correctPassward){
                  Get.to(Dashboard(name: "ume786", email: email.text));
                  }else{
                    Get.snackbar("Login Failed", "Wrong Login Details");
                  }

                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:Colors.transparent
                ),
                child: Text("Login"),
               ),
              ),
              
            ],
           ),
          ),
          ),),
          );
  }
}
