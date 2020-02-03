import 'package:flutter/material.dart';

class ChairmanMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Chairman Message'),
      ),
      body: SingleChildScrollView(
        child: new Center(
          child: new Column(
            children: <Widget> [
              new Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.3, 
                margin: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 10.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                  image: AssetImage('assets/spore.jpg'), //
                  fit:BoxFit.cover,
                ),
              ),
            ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0), //30, 20, 30, 20
                child: Text("Awaiting Text"),
              ),
           ]
          ),
        ),
      ),
    );
  }
}