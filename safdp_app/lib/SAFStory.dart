import 'package:flutter/material.dart';

class SAFStory extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        title: Text('History of SAF'),
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
                  image: AssetImage('assets/SAF.jpg'),
                  fit:BoxFit.cover,
                ),
              ),
            ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),
                child: Text("The Singapore Army was established by the Singapore Army Act as a full-time army responsible for the nation’s defence. The Singapore Army Bill was passed in parliament on 23 December 1965.",  textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("Prior to the formation of the army, the responsibility of defending Singapore fell solely on the British forces stationed on the island as well as two battalions of regular soldiers and volunteers from the Singapore Volunteer Corps (SVC). The two regular battalions were the First Singapore Infantry Regiment (1 SIR) and the Second Singapore Infantry Regiment (2 SIR), formed in 1957 and 1963 respectively.",  textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("The basis for the establishment of the Singapore Army was to ensure that Singapore was equipped to conduct its own defence preparations and to reduce its reliance on the British. To build up the nation’s defence force, one of the government’s most urgent tasks was to secure command over the battalions. When Singapore was part of Malaysia, 1 SIR and 2 SIR were placed under the command of the Fourth Federal Infantry Brigade of the Malaysian Army in Singapore. Hence when Singapore separated from Malaysia on 9 August 1965, many of the men, particularly those from 2 SIR, were in the midst of being deployed to different parts of Malaysia, including Sabah, to defend Malaysia  against Indonesia’s Konfrontasi (or Confrontation; 1963–1966) campaign targeted against the formation of the Federation of Malaysia. It was only in January 1966 that Singapore gained complete control of its battalions when 2 SIR returned from its tour of duty in Sabah and was placed under the command of the Singapore government. The Ministry of Interior and Defence (now known as Ministry of Defence) quickly took concrete steps to build up the foundation of the SAF. These include improving facilities at the 1 SIR and 2 SIR training camps in Ulu Pandan; holding recruitment drives to attract new cadets; adopting a structured system for training, salaries and uniforms; and instilling better discipline in the armed forces.",  textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("Besides these initial steps, the Ministry of Interior and Defence also planned for the long-term development of the capabilities of the Singapore Army by establishing the volunteer-based People’s Defence Force in December 1965 to replace the SVC, setting up the Singapore Armed Forces Training Institute (SAFTI) in June 1966 to train new officers and non-commissioned officers (NCOs) and introducing compulsory national service (NS) for all able-bodied young men aged 18 years and above. The NS scheme had a profound effect on the army as Operationally Ready National Servicemen, better known as NSmen, formed the majority of the soldiers serving in the battalions.",  textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("By 1970, the Singapore Army had grown in strength, with the formation of the first artillery battalion (20 SAB) in June 1967, two new battalions (3 SIR and 4 SIR) in August 1967, the first armour battalion (41 SAR) in November 1968 and the first commando battalion (1 Cdo Bn) in December 1969. During this period, the army also gained its air and sea elements with the establishment of the Singapore Naval Volunteer Force in January 1966 and the Singapore Air Defence Command in September 1968, which became the Republic of Singapore Navy and Republic of Singapore Air Force respectively on 1 April 1975.",  textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("The Singapore Armed Forces Act came into force on 15 June 1972 to establish the Singapore Armed Forces, thereby unifying the land, air and sea elements.",  textAlign: TextAlign.justify)
              ),
              new Container( //Linkage
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 10.0),
                child: Text("http://eresources.nlb.gov.sg/history/events/b125c943-1be5-4f98-99e1-68586e83de29", style: new TextStyle(fontSize: 10,))
              ),
           ]
          ),
        ),
      ),
    );
  }
}