import 'package:flutter/material.dart';
import 'package:bloodhub/Login.dart';
import 'package:bloodhub/Signup.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,

    home: Homepage(),
  ));
}
class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCE2034),
      body: SafeArea(


        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal:120, vertical:130),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:<Widget> [
              Container(
                height: MediaQuery.of(context).size.height/3,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/logo.png")
                    )
                ),
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 20),
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                    },
                    color:  Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: Text(
                        "Login",
                        style: TextStyle(
                            color:  Color(0xFFCE2034),
                            fontWeight: FontWeight.w600,
                            fontSize: 25
                        )
                    ),
                  ),
                  SizedBox(height: 20),
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupPage()));
                    },
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: Text(
                        "Signup",
                        style:TextStyle(
                            color:  Color(0xFFCE2034),
                            fontWeight: FontWeight.w600,
                            fontSize: 25
                        )
                    ),
                  )
                ],
              )
            ],
          ) ,
        ),
      ),
    );
  }
}

