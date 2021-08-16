import 'package:flutter/material.dart';
class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(

                height: 60.0,

                child:(Row(
                  children:  <Widget>[
                    Column(
                      children:  <Widget>[
                        IconButton(
                          icon: const Icon(Icons.person_pin,size: 50.0,), onPressed: () {  },)
                      ],
                    ),
                    Column(
                      children:  <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 40.0,top: 8.0),
                          // ignore: deprecated_member_use
                          child: OutlineButton(
                            borderSide: BorderSide(
                                width: 1.0,
                                color: Colors.black
                            ), onPressed: () {  },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(60.0),
                            ),
                            child: Text("Post For Blood.............."),

                          ),


                        ),

                      ],

                    ),
                    Column(

                      children: <Widget>[
                        Container(

                          height: 30.0,

                          child: Column(
                            children:  <Widget>[
                              Column(

                                children: <Widget>[
                                  Icon(Icons.send,
                                    size: 30.0,)
                                ],
                              )
                            ],
                          ),

                        )
                      ],
                    ),


                  ],
                )

                ),
              ),
            ],
          ),
          Divider(color: Colors.black,),
          Row(
            children:<Widget> [
              Container(
                width: 360.0,
                height: 5.0,
                child: Row(
                  children:<Widget>[




                  ],
                ),
              )
            ],
          ),

          Row(
            children: <Widget>[
              Container(
               width: 410.0,
                height: 10.0,
                color: Color(0xFFCE2034),
              )
            ],
          ),

          FriendPost(),
          FriendPost(),
        ],
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Widget FriendPost(){
  return Padding(
    padding: const EdgeInsets.only(top:5.0,bottom: 5.0),
    child: Column(
      children:<Widget> [
        Container(
          width: 411.0,
          height: 450.0,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 411.0,
                height: 60.0,
              //color:Color(0xFFCE2034),
                child: Row(
                  children:<Widget> [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:<Widget> [
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0,right: 5.0),
                          child: Container(
                            width: 60.0,
                            height: 60.0,
                            child: Container(
                              width: 40,
                              height: 40,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  border: Border.all(
                                    color: Colors.brown,
                                    style: BorderStyle.solid,
                                  ),
                                  image: DecorationImage(
                                    image: AssetImage('images/logo.png')
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start ,
                      children:<Widget> [
                        Row(
                          children:<Widget> [
                            Container(
                              width: 240.0,
                              height: 30.0,

                              child: Text("Pollab Dey",
                                style: TextStyle(fontSize: 24.0,
                                    fontWeight: FontWeight.bold),),
                            )
                          ],
                        ),

                        Row(
                          children:<Widget> [
                            Container(
                              width: 240.0,
                              height: 30.0,

                              child: Text('Today at 11.30,Sylhet,Bangladesh '),
                            )
                          ],
                        ),




                      ],
                    ),


                  ],
                ),
              ),

          Container(
            width: 410.0,
            height: 370.0,
            color: Colors.black26,
            child: Center(child: Text('Need A+ Blood', style: TextStyle(fontSize: 24.0,
                fontWeight: FontWeight.bold
            ),),

          ),
          ),],
          ),
        ),

        Container(
          width: 410.0,
          height: 10.0,
          color: Color(0xFFCE2034),
        )
      ],
    ),
  );
}
