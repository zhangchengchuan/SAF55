import 'package:flutter/material.dart';

class CnSPaceStick extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text('Cermonial Sword'),
      ),
      body: SingleChildScrollView(
        child: new Center(
          child: new Column(
            children: <Widget> [
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 10.0),
                child: Text("SAF Pace Stick", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)),
              ),
              new Container(
                width: MediaQuery.of(context).size.width * 0.7, 
                height: MediaQuery.of(context).size.height * 0.3,
                margin: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 5.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                  image: AssetImage('assets/CnS_PaceStick.png'),
                  fit:BoxFit.fitWidth,
                  ),
                ),
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 20.0),
                child: Text("The Royal Regiment of Artillery in Britain was the originator of the pace stick. It was used by gunners to ensure correct distances between guns on the battlefield, thus ensuring the appropriate effective fire. The original stick was more like a walking stick, with a silver or ivory knob. It could not be manipulated like the modern pace stick as it only opened like a pair of callipers; the infantry then developed the stick to its present configuration as an aid to drill.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("It is a tool that is used to measure the pace (distance taken in a marching step). It is also used by the Sergeant Major when laying out the marker points on a parade ground so that the troops turn at the correct point and finish up at the correct point on ceremonial parades.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("The pace stick, carried by a Sergeant Major is a symbol of prestige and authority. The beholder is a trained instructor of drill, parade and ceremonies. He holds the responsibility of teaching various drill movements and ceremonial proceedings of the parade to all ranks including Officers, thus illustrating his capability and his acumen in terms of drills and ceremony.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("The pace stick is the epitome of authority and rank. It is a recognition accorded to a Sergeant Major to carry out his primary responsibility of maintaining high standard of drill, parade and ceremonies as well as upholding the highest standard of regimentation and discipline in the unit.", textAlign: TextAlign.justify)
              ),
           ]
          ),
        ),
      ),
    );
  }
}