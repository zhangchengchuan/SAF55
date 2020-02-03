import 'package:flutter/material.dart';

class History extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('History of SAF Day Parade'),
      ),
      body: SingleChildScrollView(
        child: new Center(
          child: new Column(
            children: <Widget> [
              new Container(
                width: MediaQuery.of(context).size.width * 0.9, 
                height: MediaQuery.of(context).size.height * 0.3,
                margin: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                  image: AssetImage('assets/SAFFirstParade.jpg'),
                  fit:BoxFit.cover,
                ),
              ),
            ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),
                child: Text("The concept for an Armed Forces Day was mooted in early 1969. The objective for this special day was for the armed forces to reaffirm their pledge of loyalty and dedication to the Singapore Armed Forces (SAF) and the nation. It would also allow them to reflect on their role and responsibility in the defence of the nation.",  textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("The first SAF day witnessed a 1,500-strong contingent of servicemen and women in a grand parade finale and march past at Jalan Besar Stadium. In a day filled with muster parades, open houses and pledges of loyalty, the most solemn moment was the presentation of the SAF Flag for the first time to the 3rd Battalion,Singapore Infantry Regiment (3 SIR) by the then Minister for Interior and Defence, Mr Lim Kim San.",  textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("Since its inception in 1967, the Singapore Armed Forces (SAF) have grown from a small volunteer force to a formidable military force with broad multi-spectral capabilities. This transformation is remarkable, and would have seemed improbable in 1965 when Singapore became an independent nation. The fledgling SAF then comprised 1 and 2 SIR, the Singapore Volunteer Corps and two navy ships, the RSS Panglima and the RSS Singapura. There was a lot that needed to be done to build a credible defence force.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("Over the years, the SAF have seen its operational capability and readiness advanced by leaps and bounds as it acquired weapons and equipment that routinely tested the boundaries of leading-edge technology. In the process, the challenge to integrate complex and sophisticated combat system into the SAF to work as a coherent whole fell on the shoulders of the men and women of the SAF. Their unfailing dedicated to duty and tireless commitment ensured that the spectacular re-marking of the SAF into a modern fighting force became a reality. So while the SAF maintains its edge as an advanced fighting force through its impressive array of hardware, its people, or “heartware”, proves to be the real strength behind the force.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("SAF will have to continue to remake itself in order to respond ably to the changing 2 environment. Events like the September 11th incident and the SARS outbreak had demonstrated the realness of unconventional threats to our security. When called upon, the SAF had responded quickly and robustly every time. Now, more than ever, the SAF will need the collective talents of its servicemen, and the commitment of its citizen soldiers, totransform it for the challenges ahead.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("Over the years, the SAF have seen its operational capability and readiness advanced by leaps and bounds as it acquired weapons and equipment that routinely tested the boundaries of leading-edge technology. In the process, the challenge to integrate complex and sophisticated combat system into the SAF to work as a coherent whole fell on the shoulders of the men and women of the SAF. Their unfailing dedicated to duty and tireless commitment ensured that the spectacular re-marking of the SAF into a modern fighting force became a reality. So while the SAF maintains its edge as an advanced fighting force through its impressive array of hardware, its people, or “heartware”, proves to be the real strength behind the force.", textAlign: TextAlign.justify),
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("Over the years, the SAF have seen its operational capability and readiness advanced by leaps and bounds as it acquired weapons and equipment that routinely tested the boundaries of leading-edge technology. In the process, the challenge to integrate complex and sophisticated combat system into the SAF to work as a coherent whole fell on the shoulders of the men and women of the SAF. Their unfailing dedicated to duty and tireless commitment ensured that the spectacular re-marking of the SAF into a modern fighting force became a reality. So while the SAF maintains its edge as an advanced fighting force through its impressive array of hardware, its people, or “heartware”, proves to be the real strength behind the force.",  textAlign: TextAlign.justify)
              ),
              new Container( //Linkage
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 10.0),
                child: Text("https://www.nas.gov.sg/archivesonline/data/pdfdoc/MINDEF_20040701001/MINDEF_20040701003_1.pdf", style: new TextStyle(fontSize: 10,))
              ),
           ]
          ),
        ),
      ),
    );
  }
}