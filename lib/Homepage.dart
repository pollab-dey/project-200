import 'package:bloodhub/homepage/home.dart';
import 'package:flutter/material.dart';
import 'package:bloodhub/Login.dart';
import 'package:bloodhub/Signup.dart';
class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('BloodHub',
            style : TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFFCE2034),

            ),

          ),
          centerTitle: true,

          bottom: TabBar(
            unselectedLabelColor: Colors.black,
            indicatorColor: Color(0xFFCE2034),
            labelColor:Color(0xFFCE2034),

            tabs: [

              Tab(icon: Icon(Icons.home),),
              Tab(icon: Icon(Icons.messenger),),
              Tab(icon: Icon(Icons.supervised_user_circle),),


            ],),
        ),
        body: TabBarView(
          children:<Widget> [
            Homescreen(),
            Icon(Icons.messenger),
            Icon(Icons.supervised_user_circle),


          ],
        ),


      ),
    );
  }
}
