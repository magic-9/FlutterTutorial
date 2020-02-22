import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:nettuto/main.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool is_loading = false;
  List<String> quotes = [
    'By yourself',
    "don't do this here",
    "i'm not vagetables"
  ];

  Widget getContent(){
     if(is_loading == false){
       return Container(
         height: MediaQuery.of(context).size.height,
           child: Center(
               child:  SpinKitFadingCircle(
                 color: Colors.deepOrangeAccent,
                 size: 50.0,
               )
           )
       );
     }else{
       return Container(

       );
     }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: Text("App"),
        centerTitle: true,
        elevation: 1.0,
        backgroundColor: Colors.grey[900],
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(30.0, 40, 30, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
               Center(
                 child:  CircleAvatar(
                   backgroundImage: AssetImage(
                       "images/peter.jpg"
                   ),
                   maxRadius: 100,
                 ),
               ),
                Divider(
                   color: Colors.amber,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Name",
                  style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 2.0
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Peter Ramsis Helal",
                  style: TextStyle(
                      fontSize: 45,
                      color: Colors.amber,
                      fontFamily: "Sacramento"
                  ),
                ),
                Text(
                  "Job",
                  style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 2.0
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "full stack web developer",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.amber,
                      fontFamily: "Sacramento",
                      letterSpacing: 2
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Icon(
                        Icons.email,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "peterramsis@ymail.com",
                      style: TextStyle(
                          fontSize: 30,
                          letterSpacing: 2.0,
                          color: Colors.amber,
                          fontFamily: "Sacramento"
                      ),
                    )
                  ],
                ),

              ],
            ),
          )
        ] ,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print("click");
        },
        child: Icon(Icons.add),
      ),
    );
  }
}