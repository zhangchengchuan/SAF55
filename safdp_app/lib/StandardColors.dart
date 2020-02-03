import 'package:flutter/material.dart';

class StandardColors extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Colors'),
      ),
      body: SingleChildScrollView(
        child: new Center(
          child: new Column(
            children: <Widget> [
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 10.0),
                child: Text("Casing and uncasing of Colours", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)),
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("Traditionally the drummers have always been associated with the Colours and therefore it normally falls to a drummer to case and uncase the Colours when on parade. Today, a Colours Orderly is used for this purpose.")
              ),
              new Container(
                width: MediaQuery.of(context).size.width * 0.8, 
                height: MediaQuery.of(context).size.height * 0.3,
                margin: EdgeInsets.fromLTRB(5.0, 0.0, 30.0, 5.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                  image: AssetImage('assets/ConsecrationOfColor.jpg'),
                  fit:BoxFit.cover,
                  ),
                ),
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 10.0),
                child: Text("Consecration of the colours", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)),
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("Colours have always been regarded with great reverence. Historians record that Colours have been associated with religion from the earliest times. Israelites carried the social standard of the Maccabees, which bore the initial letter of the Hebrew text. These early associations linking religion with the battle flags and standards have their counterpart in the ceremonial attached to Colours today.")
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("The SAF adopted the British custom for the consecration of the Colours prior the presentation to the Units. The drums are traditionally piled to provide an altar for the consecration. The drums are brought forward and piled in the centre. The pile consists of six side drums in a circle with the emblazoning the right way up, facing outwards. The bass drum is laid on the side drums and a tenor drum on top, both with the centre of the emblazoning facing the person blessing the Colours. The Colours are then draped on the pile for the consecration, the pikes resting on the hoop to retain the Colours pikes in position. There is no drill laid down for piling drums, but the drummers concerned normally turn to their left or right and marches out in single file, form a circle around the designated spot, turn inwards and arrange their instruments as indicated above.")
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("After the Colours have been consecrated, the drums are recovered in the same way. The Colours after being blessed by the various religious leaders, is handed over to the President, who will present the newly consecrated Colours to the CO/Commander of the Unit. The Colours are then trooped.")
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("Today, the consecration ceremony is carried out by the recognized religions in Singapore and they are as follows, in order of precedence: 1.Hinduism; 2.Judaism 3. Zorastrianism; 4. Buddhism; 5. Taoism; 6. Christianity; 7. Islam; 8. Sikhism; 9. Baha’i Faith; 10. Jainism.")
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("The order of precedence for the religions are based on their founding dates and has been endorsed by the Inter-Religious Organisation, Singapore.")
              ),
              new Container(
                width: MediaQuery.of(context).size.width * 0.8, 
                height: MediaQuery.of(context).size.height * 0.3,
                margin: EdgeInsets.fromLTRB(5.0, 0.0, 30.0, 5.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                  image: AssetImage('assets/ComplementAndSalute.jpg'),
                  fit:BoxFit.cover,
                  ),
                ),
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 10.0),
                child: Text("Complements and Salute", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)),
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("Colours are always accorded the highest honours and compliments. When Colours are uncased, the Colours Party are not to pay compliments except to those entitled to the compliment of having the Colours dipped or 'let fly'. Individuals are always to salute the uncased Colours when passing or being passed by it.")
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 10.0),
                child: Text("Lowing Colours - Salutes", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)),
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("The custom of lowering the Colours is of ancient origin and is regarded as saluting in a most respectful manner with the highest honours. As adapted from the Queen’s Regulation, the State Colours will only be lowered (dip) for the Royal Salute and Head of State Salute while the Regimental Colours will be lowered (dip) for General Salutes.")
              ),
           ]
          ),
        ),
      ),
    );
  }
}