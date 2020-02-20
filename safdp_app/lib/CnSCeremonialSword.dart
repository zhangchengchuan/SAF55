import 'package:flutter/material.dart';

class CnSCeremonialSword extends StatelessWidget {
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
                child: Text("SAF Cermonial Sword", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)),
              ),
              new Container(
                width: MediaQuery.of(context).size.width * 0.7, 
                height: MediaQuery.of(context).size.height * 0.3,
                margin: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 5.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                  image: AssetImage('assets/CnS_CeremonialSword.png'),
                  fit:BoxFit.fitWidth,
                  ),
                ),
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 20.0),
                child: Text("The word Sword is derived from a prehistoric Germanic word Swerthem from which the more familiar sounding Sward (Swedish), Zwaard (Dutch) and Svoerd (Danish) arose. It was suggested that the word was linked to the meaning ‘Pain’, the sword thus being the cause of pain.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("To counter this, personal armour was used that was designed to withstand sword blows and protect more vulnerable body areas. This armour was constructed of stout leather and reinforced with metal plates or links.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("The sword user thus had to turn from his weeping slashes to more accurate strikes at exposed areas and the joints of the armour pieces. In doing so, sword design moved away from the curved and heavy slashing blade to a straight one with a sharpened tip that was good at thrusting at the enemy.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("It is perhaps prudent to start by giving an answer to one very simple question: Why wear a sword in a supposedly ‘modern’ war dominated by firepower? Although there are undoubtedly undertones of a distant chivalric age connected with such a potentially brutal implement, it is not primarily a weapon, rather it is above all else, an insignia of rank – a sign of authority bestowed upon the officer by the State. As such, it is important to remember that the sword is part of an officer’s uniform and should be treated as an object of respect by the rank and file, but more importantly, by the individual wearing it.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("The sword is carried by an SAF Commissioned Officer as a mark of his status and his symbol authority. The practice of officers carrying swords probably stemmed from the Middle Ages where only men of a certain stature (e.g. Knights) were allowed to keep swords. It is often said that the officers of today are largely fashioned in the image of the knights of yesteryear as they largely performed the same function of leading a group of men.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("The swords come in two lengths i.e. 819 mm and 919 mm. The 819 mm swords were issued from 1981 to 1988 and the 919 mm swords were issued since 1982. The latter sword is used for parades. For military officers attending the parade, both lengths of sword may be used.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("Swords are worn at a parade or ceremony where the No 1 dress is prescribed, for the following officers:", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("1. Reviewing Officer (if they are commissioned SAF Officer)               ", textAlign: TextAlign.left)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("2. Officers escorting the Reviewing Officer                               ", textAlign: TextAlign.left)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("3. Commander of the Formation/ Unit organising the parade or ceremony            ", textAlign: TextAlign.left)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("4. Parade Commander                                                                                ", textAlign: TextAlign.left)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("5. Contingent Commanders                                                       ", textAlign: TextAlign.left)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("6. Supernumerary Officers                                                       ", textAlign: TextAlign.left)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("7. Parade RSM                                                                                ", textAlign: TextAlign.left)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("All Officers of the rank of Major and above will don the ceremonial sword for functions/ ceremonies when instructed. As a general rule, swords need not be worn during indoor ceremonies.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("Looking closer, you would see a sword knot, which is a strap with a tassel wound around the hilt of the sword. This knot was originally used to prevent the sword being lost in action, for the strap was twisted around the wrist of the bearer.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 10.0),
                child: Text("Why RSM & Command Chiefs Don The Ceremonial Swords?", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)),
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("Whilst it is commonly known that only Commissioned Officers are allowed the privilege to don the ceremonial sword, the exception to the rule applies to the Parade RSM. Going by his title “King of the Parade Square”, the Parade RSM is authorised to wear the sword as a mark of his authority in controlling the parade. Wearing the sword also emphasises his specialised skills in drilling the men and the sword being a symbol of authority, will accord him the respect he deserves from Officers and all Ranks on parade.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("The only time a Parade RSM is given the privilege to draw his sword is when he pays the highest form of compliment to the Colours prior to it being trooped. In this instance, his Pace Stick is taken out of the parade ground by an orderly.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 10.0),
                child: Text("Sword Salute", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)),
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("The first movement in saluting with the sword, known as the “Recovery”, is said to have religious significance dating from the Crusades. The sword in earlier forms was in the shape of a cross, and the position of recovery closely resembles the Crusader’s act of kissing the cross of his sword before going into battle. It may also have some connection with the oriental custom of shielding the eyes from a superior. The position of the salute itself is a modification of the former practice of thrusting the point of the sword into the ground from which position it would be more than difficult to strike suddenly at one’s opponent.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("The same principle is true of either the butt salute with a rifle or the present arms. In the latter case even the name implies the offering of the arms to a superior.", textAlign: TextAlign.justify)
              ),
           ]
          ),
        ),
      ),
    );
  }
}