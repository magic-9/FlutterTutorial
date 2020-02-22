import 'package:flutter/material.dart';
import 'package:nettuto/classes/Qutes.dart';

class CardPage extends StatelessWidget{
  final Quotes quote;
  final Function delete;
  CardPage({this.quote,this.delete});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Container(
        width: 300,
        height: 100,
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("${this.quote.text}"),
              Text("${this.quote.author}"),
              RaisedButton(
                onPressed: delete,
                child: Text("delete"),
              )
            ],
          ),
        )
    );

  }

}