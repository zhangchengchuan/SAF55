import 'package:flutter/material.dart';
import 'package:safdp_app/homepage.dart';
import 'SAFStory.dart';
import 'History.dart';
import 'KAH.dart';
import 'Programmes.dart';

class SAFDay2020 extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading:IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context)=>Homepage()));
        }),
        title: Text('SAF Day 2020'),
      ),
      body : SingleChildScrollView(
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.20,
                margin: EdgeInsets.fromLTRB(0, 0, 0, 15.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/HistoryOfSAF_Banner.jpg'),
                    fit:BoxFit.cover,
                  ),
                ),
                child: FlatButton(
                  onPressed:() {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>SAFStory()));
                  }, 
                  child: null,
                ),
              ),
              new Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.20,
                margin: EdgeInsets.fromLTRB(0, 0, 0, 15.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/HistoryOfSAFParade_Banner.jpg'),
                    fit:BoxFit.cover,
                  ),
                ),
                child: FlatButton(
                  onPressed:() {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>History()));
                  }, 
                  child: null,
                ),
              ),
              new Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.20,
                margin: EdgeInsets.fromLTRB(0, 0, 0, 15.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/KAH_Banner.jpg'),
                    fit:BoxFit.cover,
                  ),
                ),
                child: FlatButton(
                  onPressed:() {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>KAH()));
                  },
                  child: null,
                ),
              ),
              new Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.20,
                margin: EdgeInsets.fromLTRB(0, 0, 0, 15.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/Programmes_Banner.jpg'),
                    fit:BoxFit.cover,
                  ),
                ),
                child: FlatButton(
                  onPressed:() {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Programmes()));
                  },
                  child: null,
                ),
              ),
            ]
          ),
        ),
      ),
    );
  }
}