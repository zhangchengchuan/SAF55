import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class CnSUniformNo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text('Uniform Standard - No.1'),
      ),
      body: SingleChildScrollView(
        child: new Center(
          child: new Column(
            children: <Widget> [
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 0.0),
                child: Text("No.1 Dress Standard (Normal)", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20,))
              ),
            new Container(
              height: MediaQuery.of(context).size.height * 0.55,
              margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 5.0),
              child: PhotoView(
                backgroundDecoration: BoxDecoration(color: Colors.white),
                imageProvider: AssetImage("assets/UniformNo1.jpg"),
              )
            ),
            new Container(
                padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 0.0),
                child: Text("No.1 Dress Standard (Specialist)", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20,))
              ),
              new Container(
              height: MediaQuery.of(context).size.height * 0.55,
              margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 5.0),
              child: PhotoView(
                backgroundDecoration: BoxDecoration(color: Colors.white),
                imageProvider: AssetImage("assets/UniformNo1_Specialist.jpg"),
              )
            ),
           ]
          ),
        ),
      ),
    );
  }
}