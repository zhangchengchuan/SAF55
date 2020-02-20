import 'package:flutter/material.dart';

class ComponentTraining extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        title: Text('Training Schedule'),
      ),
      body : SingleChildScrollView(
        child: Column(children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            child: Table(
              border: TableBorder.all(),
              columnWidths: {1:FractionColumnWidth(.7)},
              children: [
                TableRow (children: [
                  Column(children:[Text('Time')]),
                  Column(children:[Text('Event')]),
                ]),
                TableRow (children: [
                  Column(children:[Text('0830')]),
                  Column(children:[Text('BAR (Pre-Rehearsal Brief)')]),
                  ]),
                TableRow( children: [
                  Column(children:[Text('0915')]),
                  Column(children:[Text('Arrival of Participants')]),
                ]),
                TableRow( children: [
                  Column(children:[Text('0915 - 0930')]),
                  Column(children:[Text('Trainers Brief to Contingents')]),
                ]),
                TableRow( children: [
                  Column(children:[Text('0930 - 1000')]),
                  Column(children:[Text('Warm Up and Component Training by Respective Trainers')]),
                ]),
                TableRow( children: [
                  Column(children:[Text('1000 - 1030')]),
                  Column(children:[Text('GOH, Colours, Markers Drill Synchronisation by Parade RSM')]),
                ]),
                TableRow( children: [
                  Column(children:[Text('1030 - 1100')]),
                  Column(children:[Text('Tea Break 1 / MC - Grandstand ')]),
                ]),
                TableRow( children: [
                  Column(children:[Text('1100 - 1200')]),
                  Column(children:[Text('Synchronisaed March In and March Off by Parade RSM')]),
                ]),
                TableRow( children: [
                  Column(children:[Text('1200 - 1215')]),
                  Column(children:[Text('DAR (During Action Review)')]),
                ]),
                TableRow( children: [
                  Column(children:[Text('1215 - 1400')]),
                  Column(children:[Text('Lunch')]),
                ]),
                TableRow( children: [
                  Column(children:[Text('1400 - 1500')]),
                  Column(children:[Text('Synchronisaed March In / Out by Parade RSM')]),
                ]),
                TableRow( children: [
                  Column(children:[Text('1500 - 1530')]),
                  Column(children:[Text('Tea Break 2 / MC - Grandstand')]),
                ]),
                TableRow( children: [
                  Column(children:[Text('1500 - 1630')]),
                  Column(children:[Text('Truncated Sequence Run (Trooping of Colours)')]),
                ]),
                TableRow( children: [
                  Column(children:[Text('1630 - 1700')]),
                  Column(children:[Text('Tea Break 3 / MC - Grandstand')]),
                ]),
                TableRow( children: [
                  Column(children:[Text('1700 - 1800')]),
                  Column(children:[Text('Truncated Sequence Run (Trooping of Colours)')]),
                ]),
                TableRow( children: [
                  Column(children:[Text('1800 - 1900')]),
                  Column(children:[Text('Dinner / Departure of Participants')]),
                ]),
                TableRow( children: [
                  Column(children:[Text('1815 - 1845')]),
                  Column(children:[Text('PAR (Post Action Review')]),
                ]),
              ],
            ),
          ),
        ],
        ),
      ),
    );
  }
}