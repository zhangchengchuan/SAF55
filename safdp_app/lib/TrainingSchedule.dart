import 'package:flutter/material.dart';

class TrainingSchedule extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        title: Text('Rehearsal Schedule'),
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
                  Column(children:[Text('21/05')]),
                  Column(children:[Text('Pre-CT 1')]),
                  ]),
                TableRow( children: [
                  Column(children:[Text('22/05')]),
                  Column(children:[Text('Pre-CT2')]),
                ]),
                TableRow( children: [
                  Column(children:[Text('26/05')]),
                  Column(children:[Text('CT 1')]),
                ]),
                TableRow( children: [
                  Column(children:[Text('28/05')]),
                  Column(children:[Text('CT 2')]),
                ]),
                TableRow( children: [
                  Column(children:[Text('02/06')]),
                  Column(children:[Text('CT 3')]),
                ]),
                TableRow( children: [
                  Column(children:[Text('04/06')]),
                  Column(children:[Text('CT 4')]),
                ]),
                TableRow( children: [
                  Column(children:[Text('09/06')]),
                  Column(children:[Text('CR 1')]),
                ]),
                TableRow( children: [
                  Column(children:[Text('16/06')]),
                  Column(children:[Text('CR 2')]),
                ]),
                TableRow( children: [
                  Column(children:[Text('17/06')]),
                  Column(children:[Text('CR 2 (Reserve)')]),
                ]),
                TableRow( children: [
                  Column(children:[Text('18/06')]),
                  Column(children:[Text('CR 3')]),
                ]),
                TableRow( children: [
                  Column(children:[Text('19/06')]),
                  Column(children:[Text('CR 3 (Reserve)')]),
                ]),
                TableRow( children: [
                  Column(children:[Text('23/06')]),
                  Column(children:[Text('CR 4 (EXCO-Vetting)')]),
                ]),
                TableRow( children: [
                  Column(children:[Text('24/06')]),
                  Column(children:[Text('CR4 (Reserve)')]),
                ]),
                TableRow( children: [
                  Column(children:[Text('25/06')]),
                  Column(children:[Text('CR 5 (CDF Vetting)')]),
                ]),
                TableRow( children: [
                  Column(children:[Text('26/06')]),
                  Column(children:[Text('CR 5 (Reserve)')]),
                ]),
                TableRow( children: [
                  Column(children:[Text('29/06')]),
                  Column(children:[Text('CR 6')]),
                ]),
                TableRow( children: [
                  Column(children:[Text('30/06')]),
                  Column(children:[Text('CR 6 (Reserve)')]),
                ]),
                TableRow( children: [
                  Column(children:[Text('01/07')]),
                  Column(children:[Text('SAF DAY 2020')]),
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