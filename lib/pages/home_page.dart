import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool is_loading = false;

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
      appBar: AppBar(
        title: Text("App"),
        centerTitle: true,
        elevation: 1.0,
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body:ListView(
        children: <Widget>[
          getContent(),
          RaisedButton(
            onPressed: (){
              setState(() {
                is_loading =! is_loading;
              });
            },
          )
        ],
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