import 'package:flutter/material.dart';

class CnSColors extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text('Colours'),
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
                child: Text("Traditionally the drummers have always been associated with the Colours and therefore it normally falls to a drummer to case and uncase the Colours when on parade. Today, a Colours Orderly is used for this purpose.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 10.0),
                child: Text("Consecration of the colours", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)),
              ),
              new Container(
                width: MediaQuery.of(context).size.width * 0.8, 
                height: MediaQuery.of(context).size.height * 0.3,
                margin: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 5.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                  image: AssetImage('assets/Colors_ConsecrationOfColor.jpg'),
                  fit:BoxFit.cover,
                  ),
                ),
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 20.0),
                child: Text("Colours have always been regarded with great reverence. Historians record that Colours have been associated with religion from the earliest times. Israelites carried the social standard of the Maccabees, which bore the initial letter of the Hebrew text. These early associations linking religion with the battle flags and standards have their counterpart in the ceremonial attached to Colours today.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("The SAF adopted the British custom for the consecration of the Colours prior the presentation to the Units. The drums are traditionally piled to provide an altar for the consecration. The drums are brought forward and piled in the centre. The pile consists of six side drums in a circle with the emblazoning the right way up, facing outwards. The bass drum is laid on the side drums and a tenor drum on top, both with the centre of the emblazoning facing the person blessing the Colours. The Colours are then draped on the pile for the consecration, the pikes resting on the hoop to retain the Colours pikes in position. There is no drill laid down for piling drums, but the drummers concerned normally turn to their left or right and marches out in single file, form a circle around the designated spot, turn inwards and arrange their instruments as indicated above.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("After the Colours have been consecrated, the drums are recovered in the same way. The Colours after being blessed by the various religious leaders, is handed over to the President, who will present the newly consecrated Colours to the CO/Commander of the Unit. The Colours are then trooped.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("Today, the consecration ceremony is carried out by the recognized religions in Singapore and they are as follows, in order of precedence: 1.Hinduism; 2.Judaism 3. Zorastrianism; 4. Buddhism; 5. Taoism; 6. Christianity; 7. Islam; 8. Sikhism; 9. Baha’i Faith; 10. Jainism.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("The order of precedence for the religions are based on their founding dates and has been endorsed by the Inter-Religious Organisation, Singapore.", textAlign: TextAlign.justify)
              ),
              new Container(
                width: MediaQuery.of(context).size.width * 0.8, 
                height: MediaQuery.of(context).size.height * 0.3,
                margin: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 5.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                  image: AssetImage('assets/Colors_ComplementAndSalute.jpg'),
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
                child: Text("Colours are always accorded the highest honours and compliments. When Colours are uncased, the Colours Party are not to pay compliments except to those entitled to the compliment of having the Colours dipped or 'let fly'. Individuals are always to salute the uncased Colours when passing or being passed by it.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 10.0),
                child: Text("Lowing Colours - Salutes", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)),
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("The custom of lowering the Colours is of ancient origin and is regarded as saluting in a most respectful manner with the highest honours. As adapted from the Queen’s Regulation, the State Colours will only be lowered (dip) for the Royal Salute and Head of State Salute while the Regimental Colours will be lowered (dip) for General Salutes.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 10.0),
                child: Text("Lowing of Colours", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)),
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("The Colours being allowed to fly free is known as “Let Fly” and is also a form of compliments. The Ensign of the Colours will “Let Fly” the Colours for the followings occasions:", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("1. During the inspection of the Guard of Honour or troops on parade.", textAlign: TextAlign.left)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("2. When Colours march past the Reviewing Officer.            ", textAlign: TextAlign.left)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("3. When Colours are trooping during the Trooping of Colours.", textAlign: TextAlign.left)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("4. When Colours are marching on or marching off the parade, while the troops are in the “Present Arms” position.", textAlign: TextAlign.left)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("5. When Guard of Honour or troops paying compliments to an Officer who is not entitled the dipping of Colours, the Ensign will “let fly” the Colours.", textAlign: TextAlign.left)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 10.0),
                child: Text("Point Of War", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)),
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("The name “Point of War” appears to date back at least to the mid seventeenth century when the “Points of Warre” referred to the various beats used to signal commands to the troops. In the book, Complete Body of the Art Military, published in 1650, these are given as “The Call”: “The Troop”, “The Preparative”, “The Battle or Charge”, “The Retreat”, “The March”, “The Reveille” and “The Tattoo”.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("When Colours were taken into battle, they were usually positioned in the centre of the battle line, which was normally the place from which the battle was controlled. Every unit took into battle its drummers, buglers, fifers and other musicians who might make up a band (they also doubled as stretcher bearers). Upon an attack developing, the Commanding Officer would order the various instruments to be beaten or blown as hard as their players could manage. The attention of the unit was drawn to the fact that the centre was being threatened and the Colours were in danger. This action became the centre point of the way and the music became a rallying tune.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("Presently the Band will play the stirring tune of “Point of War” as a form of salute for all Colours being marched on and off the parade ground.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 10.0),
                child: Text("Transporting of Colours", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)),
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("Whenever Colours are transported, they are to be accompanied by an Officer, Warrant Officer or a senior Specialist. Colours are to be cased until they reach the place where they are to be paraded and the units are to ensure that the Colours is handled with dignity and is safeguarded at all times from being damaged. Individual stand of appropriate size and strength for the safeguarding and protecting the Colours from damaged when transporting them between locations is encouraged.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 10.0),
                child: Text("Care and custody of Colours", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)),
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("Colours are fashioned by hand from the highest quality silks, gold and coloured braid and threads. It is therefore a costly and delicate article, requiring careful treatment at all times. It is estimated that with care, Colours should have an useful life span of about 15 to 20 years. The life span of the Colours also depends upon its condition and may remain in use as long as the materials have not deteriorated. The natural moisture and oil of the human hand stains delicate fabrics and causes rapid deterioration. For these reasons, personnel who have to handle the Colours must wear clean white gloves.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("When not in use on ceremonial occasions, Colours are retained or kept in the CO/ Commander’s Office, secured in a suitable display cabinet. Colours are always to be displayed, uncased and attached to their own pike/ staff. The custodian of the Colours is usually the Unit RSM who is responsible for the care and maintenance of the Colours.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 10.0),
                child: Text("Withdrawn of Service", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)),
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("A Colours is to be withdrawn from service when the Unit is deactivated but remains on the order of battle. The withdrawn Colours will be allocated to a unit, namely the Formation HQ, for safekeeping and it will remain cased.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("Once the unit is reactivated, the Colours will be re-allocated to its Unit by the Service HQ. While there is no ceremony associated with withdrawing a Colours from service, or placing the Colours back into service, a Colours parade should be held as soon as possible after the Unit has reformed. It is during this parade that the Colours are “Trooped”.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 10.0),
                child: Text("Trooping of Colours", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)),
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("Trooping of Colours has been traced to the days of the early mercenaries when men were taught to use their flag as a rallying point in battle. Trooping the Colours before a battle assured that soldiers would recognize them.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("Trooping of Colours is often performed during unit’s anniversary parade and SAF Day Parade, especially so when a Colours is newly presented after consecration.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 10.0),
                child: Text("Replacement of Colours", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)),
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("Colours should be serviceable for at least 15 to 20 years. However, regardless of their age where through normal wear and tear, they become unserviceable or condition of the Colours may cause embarrassment to the Unit or there is a change in the design / name of the Colours, then the Colours should be replaced.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 10.0),
                child: Text("Retirement of Colours", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)),
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("Colours are retired when a Formation or Unit has become defunct as a result of organization or structural changes. It may also be no longer presentable due to fair wear and tear which requires a replacement.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("Colours of Formation / Unit which are defunct will be kept in the military museum or be kept in the Formation Commander’s office.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("Colours are retired ceremoniously during the SAF Day Parade when the entire parade will give a final compliment to the Colours. This can be an “emotional” moment as the Colours retired will never be on parade again and it will be slow marched out of the parade square to the tune of “Auld Lang Syne”.", textAlign: TextAlign.justify)
              ),
           ]
          ),
        ),
      ),
    );
  }
}