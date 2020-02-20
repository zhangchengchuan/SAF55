import 'package:flutter/material.dart';

class CnSColorsIntroduction extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text('Introduction'),
      ),
      body: SingleChildScrollView(
        child: new Center(
          child: new Column(
            children: <Widget> [
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 10.0),
                child: Text("Introduction to Colours, Standard & Pennants", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)),
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("At about the beginning of the seventeenth century when armies were adopting the regimental system, it was decided to assign colours (using the word in its conventional sense) to each regiment. It was logical, then, for the “Red Regiment,” for example, to carry a red flag for identification in battle. Hence military flags became known as “Colours.” Another explanation of the term is that early heraldic flags bore the Colours of a commander in precisely the same sense as used in horse racing today.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("On the other side of the world, in about 1650, the first of the Manchus was experimenting with a new concept of military organization. He divided his troops into four groups – the Yellows, Reds, Whites and Blues. Each were identified by a coloured banner. Later he doubled the number of units, having each new unit take one of the original four colours and adding a border.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("So the Colours originated as a means of battlefield identification and continued to perform this function for many years. Modern armies now carry Colours only in ceremonies.", textAlign: TextAlign.justify)
              ),
           ]
          ),
        ),
      ),
    );
  }
}