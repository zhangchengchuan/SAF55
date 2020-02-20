import 'package:flutter/material.dart';

class CnSColorsHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text('History of Military Colours'),
      ),
      body: SingleChildScrollView(
        child: new Center(
          child: new Column(
            children: <Widget> [
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 10.0),
                child: Text("SAF Day Parade", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)),
              ),
              new Container(
                width: MediaQuery.of(context).size.width * 0.8, 
                height: MediaQuery.of(context).size.height * 0.3,
                margin: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 5.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                  image: AssetImage('assets/CnS_History.jpg'),
                  fit:BoxFit.cover,
                  ),
                ),
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 20.0),
                child: Text("The awarding of Colours to military units is an established practice of many National Armed Forces and the Singapore Armed Forces is no exception. Colours are frequently paraded during auspicious and significant occasions.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("Traditionally, our Colours are paraded on National Day, SAF Day and on Anniversary Day parades, with proper Escort Party and Guard of Honour Contingents. But other than to add to the pomp and pageantry of these events, Colours have a history and tradition dating as far back as the Middle Ages, and a significance which is maintained even till to-date.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("Colours originated as banners of lords and barons at a time when it was a tradition for fighting men to rally around their leader’s banner. The reason for its existence arose from the need to have some rank of distinction between tribes and armies, and a conspicuous rallying point in battle. In war between tribes, for example, the badge of each tribal chief was hoisted onto a pole so that it could be seen at a distance, and not just in close combat.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("Later, these became flags of distinctive Colours in a battlefield for marking positions. And through constant usage, the term “Colours” is often taken to mean all classes of military flags, which are known differently as standards, guidons and banners.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("In the past when Colours were carried on active service, they stood as a rallying point of the regiment, and the scene of its last stand. As long as the soldiers could see their own flag flying high, they knew all was well. It is a powerful factor in maintaining morale. Many would die just to keep the Colours flying high. Similarly, to capture the Colours of the enemy was a sign of great courage.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 10.0),
                child: Text("Colours On Display During SAF Day Parade", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)),
              ),
              new Container(
                width: MediaQuery.of(context).size.width * 0.8, 
                height: MediaQuery.of(context).size.height * 0.3,
                margin: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 5.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                  image: AssetImage('assets/CnS_ColorsInDisplay.jpg'),
                  fit:BoxFit.cover,
                  ),
                ),
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 20.0),
                child: Text("The Colours were carried into battle in the centre front rank where they could easily be seen and recognised and to act as a guide and rallying point. Originally, when Colours were carried in companies, they were borne by the youngest officer of the company, who was known as the “Ensign”. As the importance of a victory was generally gauged by the number of guns and stands of Colours that were captured, the Colours party became obvious targets and the scene of the most bitter hand-to-hand fighting.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("With a view to give the ensigns some local protection, the rank of “Colours Sergeant” was introduced in 1813. The Royal Warrant in respect of this stated, “It is His Royal Highness’ pleasure that the duty of attending the Colours on the field shall be performed by the Sergeants”.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("These Escorts to the Colours were formed by five Colours Sergeants, armed with half pikes, and were chosen from the senior and bravest sergeants, as they had to stand in the most exposed places in the field of battle. The Colours Party was in the past expected to fight till death to defend the Colours. For the same symbolic reason, today, the Colours (carried by a junior Officer with an escort of two Sergeants and a Warrant Officer) are paraded in the centre of the Squad when on the march.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("As warfare progressed Colours became unnecessary as a means of identification and was no more carried into the battlefield.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("Colours have become the symbol of the spirit of a regiment, for they bear the battle honours and badges granted to the regiment in commemoration of the gallant deeds performed by its members from the time it was raised. This association of Colours with heroic deeds has caused them to be regarded with veneration. The fact that Colours are consecrated before being taken into use, it helps to maintain the atmosphere of veneration, with which they are surrounded.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("Although Colours are not carried into battle in the way they used to be, they still retain all the tradition, glory, honour, pride and veneration of the past. They are still paraded and trooped in today’s Armies", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 10.0),
                child: Text("Colours In SAF", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)),
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("In the SAF, Colours are awarded to units in commemoration of their achievements in the field of combat, training, administrative efficiency and service to the community. The Colours also help to promote cohesion, esprit de corps and instil in the men of the unit a sense of pride and loyalty.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("Our short history of Colours in the SAF dates back to 1954. Then, there were only two Colours, the Queen’s Colours and the Singapore Volunteer Corps Colours. The then Governor of Singapore, Sir John Nicoll, presented both Colours to the Singapore Volunteer Corps on 8th July 1954 at the Padang, in celebration of the centenary of the Volunteer Corps. The Colours were donated by the City Council to replace those, which were lost during the fall of Singapore in 1942. The re-structuring of the Singapore Volunteer Corps after our Independence in 1965, saw the Corps undertaking a different role in Singapore, hence both Colours were retired.", textAlign: TextAlign.justify)
              ),
           ]
          ),
        ),
      ),
    );
  }
}