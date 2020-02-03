import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class StandardUniformNo4 extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Uniform Standard - No.4'),
      ),
      body: SingleChildScrollView(
        child: new Center(
          child: new Column(
            children: <Widget> [
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),
                child: Text("No.4 Dress Standard (Apply to all)", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20,))
              ),
              new Container(
              height: MediaQuery.of(context).size.height * 0.65,
              margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 5.0),
              child: PhotoView(
                backgroundDecoration: BoxDecoration(color: Colors.white),
                imageProvider: AssetImage("assets/UniformNo4.jpg"),
              )
            ),
           ]
          ),
        ),
      ),
    );
  }
}