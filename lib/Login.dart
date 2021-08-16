import 'package:flutter/material.dart';

import 'Homepage.dart';



class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xFFCE2034),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Container(
            margin: const EdgeInsets.only(top:50),
            width: 250,
            child: Image.asset("assets/logo.png"),
          ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(32)
              ),
              child: TextField(
                style: TextStyle(
                  color: Color(0xFFCE2034),
                  fontSize: 16,
                  fontWeight: FontWeight.w500
                ),
                decoration: InputDecoration(border: InputBorder.none,fillColor: Color(0xFFCE2034),hintText: "Email/Phone",hintStyle: TextStyle(
                  color:Color(0xFFCE2034),
                ) ),
              ),
            )
          ,
          SizedBox(height: 16,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(32)
            ),
            child: TextField(
              obscureText: true,
              style: TextStyle(
                  color: Color(0xFFCE2034),
                  fontSize: 16,
                  fontWeight: FontWeight.w500
              ),
              decoration: InputDecoration(border: InputBorder.none,fillColor: Color(0xFFCE2034),hintText: "Password",hintStyle: TextStyle(
                  color:Color(0xFFCE2034)
              ) ),
            ),
          ),

          SizedBox(height: 15),
          MaterialButton(
            minWidth: double.infinity,
            height: 60,
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));
            },
            color: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50)
            ),
            child: Text(
                "Login",
                style:TextStyle(
                    color: Color(0xFFCE2034),
                    fontWeight: FontWeight.w600,
                    fontSize: 25
                )
            ),
          )
        ],),
      ),
    );
  }
}

