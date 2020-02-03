import 'package:flutter/material.dart';
import 'package:safdp_app/homepage.dart';
import 'StandardColors.dart';
import 'StandardUniformNo1.dart';
import 'StandardUniformNo4.dart';

class Parades extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading:IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context)=>Homepage()));
        }),
        title: Text('All About Parade'),
      ),
      body : new Container(
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.20,
                margin: EdgeInsets.fromLTRB(0, 0, 0, 15.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/Color_Banner.jpg'),
                    fit:BoxFit.cover,
                  ),
                ),
                child: FlatButton(
                  onPressed:() {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>StandardColors()));
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
                    image: AssetImage('assets/UniformNo1_Banner.jpg'),
                    fit:BoxFit.cover,
                  ),
                ),
                child: FlatButton(
                  onPressed:() {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>StandardUniformNo1()));
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
                    image: AssetImage('assets/UniformNo4_Banner.jpg'),
                    fit:BoxFit.cover,
                  ),
                ),
                child: FlatButton(
                  onPressed:() {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>StandardUniformNo4()));
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