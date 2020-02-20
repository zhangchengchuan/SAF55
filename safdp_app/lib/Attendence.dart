import 'package:flutter/material.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:intl/intl.dart';

class Attendence extends StatefulWidget{
  @override
  AttendenceState createState() => AttendenceState();
}

class AttendenceState extends State<Attendence> {
  List<Item> attendenceList = List(); //Items
  Item attendenceItem; //Item
  DatabaseReference attendenceRef; //ItemRef

  //List / Var (Contingent)
  List<FeedbackContingent> _feedbackContingent = FeedbackContingent.getFeedbackContingent();
  List<DropdownMenuItem<FeedbackContingent>> _dropdownContingent; 
  FeedbackContingent _selectedFeedbackContingent; 

  final GlobalKey<FormState> attendenceFormKey = GlobalKey<FormState>();

  @override
  void initState(){
    super.initState();

    //Date
    DateFormat dateFormat = DateFormat("dd-MM");
    var date = dateFormat.format(DateTime.now());

    attendenceItem = Item(date, '', '', '');
    attendenceRef = FirebaseDatabase.instance.reference().child('Attendence'); //The name for the folder.
    attendenceRef.onChildAdded.listen(_onEntryAdded);
    attendenceRef.onChildChanged.listen(_onEntryChanged);

    //Function (Contingent)
    _dropdownContingent = buildDropdownContingent(_feedbackContingent);
    _selectedFeedbackContingent = _dropdownContingent[0].value;
  }

  //Dropdown List (Contingent)
  List <DropdownMenuItem<FeedbackContingent>> buildDropdownContingent(List feedbackContingent) {
    List <DropdownMenuItem<FeedbackContingent>> items = List();
    for (FeedbackContingent feedbackContingent in feedbackContingent) {
      items.add(
        DropdownMenuItem(
          value: feedbackContingent,
          child: Text(feedbackContingent.contingent),
        ),
      );
    }
    return items;
  }

  _onEntryAdded(Event event){
    setState((){
      attendenceList.add(Item.fromSnapshot(event.snapshot));
      });
  }
            
  _onEntryChanged(Event event) {
      var old = attendenceList.singleWhere((entry){
        return entry.key == event.snapshot.key;
    });
    setState((){
      attendenceList[attendenceList.indexOf(old)] = Item.fromSnapshot(event.snapshot);
     });
  }
  
  onChangeFeedbackContingent(FeedbackContingent selectedFeedbackContingent) {
    setState(() {
      _selectedFeedbackContingent = selectedFeedbackContingent;
    });
  }
            
  void handleSubmit() {
    final FormState form = attendenceFormKey.currentState;
              
     if (form.validate()) {
       form.save();
       form.reset();
       //attendenceRef.push().set(_selectedFeedbackContingent.toJson());
       attendenceRef.push().set(attendenceItem.toJson());
     }
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
       title: Text('Attendence Taking'),
    ),
    resizeToAvoidBottomPadding: false,
    body: Column(
      children: <Widget>[
        Flexible(
           flex:0,
           child: Center(
             child: Form(
             key: attendenceFormKey,
              child: Flex(
                direction: Axis.vertical,
                  children: <Widget>[
                  DropdownButton(
                    underline: Container(height: 1,color: Colors.black),
                    value: _selectedFeedbackContingent,
                    items: _dropdownContingent,
                    onChanged: onChangeFeedbackContingent,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListTile(
                      leading: Icon(Icons.info, size:28, color:Colors.red),
                      title: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'How many pax present?'
                        ),
                        initialValue: '',
                        onSaved: (val) => attendenceItem.present = val,
                        validator: (val) {
                          final isDigitsOnly = int.tryParse(val);
                          return isDigitsOnly == null ? 'Input needs to be digits only' : null;
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListTile(
                      leading: Icon(Icons.info, size:28, color:Colors.red),
                      title: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'How many pax MC?'
                        ),
                        onSaved: (val) => attendenceItem.mc = val,
                        validator: (val) {
                          final isDigitsOnly = int.tryParse(val);
                          return isDigitsOnly == null ? 'Input needs to be digits only' : null;
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListTile(
                      leading: Icon(Icons.info, size:28, color:Colors.red),
                      title: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Others?'
                        ),
                        initialValue: '',
                        onSaved: (val) => attendenceItem.other = val,
                        validator: (val) {
                          final isDigitsOnly = int.tryParse(val);
                          return isDigitsOnly == null ? 'Input needs to be digits only' : null;
                        },
                      ),
                    ),
                  ),
                  RaisedButton(
                    padding: EdgeInsets.all(8.0),
                    textColor: Colors.white,
                    color:Colors.red,
                    child: new Text("Submit Attendence"),
                    onPressed: (){
                    handleSubmit();
                    },
                  ),
                ],
              ),
            ),
          ),
         ),
         Flexible(
           child: FirebaseAnimatedList(
            query: attendenceRef,
            itemBuilder: (BuildContext context, DataSnapshot snapshot, Animation<double> animation, int index){
            return new SingleChildScrollView(
            scrollDirection: Axis.vertical,  
            child: DataTable(
                columns:[
                DataColumn(label: Text('')),
                DataColumn(label: Text('')),
                DataColumn(label: Text('')),
                DataColumn(label: Text('')),
                DataColumn(label: Text('')),
                ], //Columns
                rows: [
                  DataRow(
                    cells: [
                      DataCell(Text(snapshot.value['contingent']!=null?snapshot.value['contingent']:'')),
                      DataCell(Text(attendenceList[index].date!=null?attendenceList[index].date:'')),
                      DataCell(Text(attendenceList[index].present!=null?attendenceList[index].present:'')),
                      DataCell(Text(attendenceList[index].mc!=null?attendenceList[index].mc:'')),
                      DataCell(Text(attendenceList[index].other!=null?attendenceList[index].other:'')),
                    ],
                  ),
                ], //Rows
                ),
              );
              },
          ),
        ),
     ],
    )
  );
 }
}
      
class Item {
   String key;
   String date;
   String present;
   String mc;
   String other;
  
   Item(this.date, this.present, this.mc, this.other);
      
   Item.fromSnapshot(DataSnapshot snapshot)
       : key = snapshot.key,
         date = snapshot.value["date"],
         present = snapshot.value["present"],
         mc = snapshot.value["mc"],
         other = snapshot.value["other"];
         
   toJson() {
     return {
      "date": date,
      "present": present,
      "mc": mc,
      "other": other,
     };
   }
}

class FeedbackContingent {
  String key;
  int id;
  String contingent;
 
  FeedbackContingent(this.id, this.contingent);
 
  static List<FeedbackContingent> getFeedbackContingent() {
    return <FeedbackContingent>[
      FeedbackContingent(1, 'GOH 1'),
      FeedbackContingent(2, 'GOH 2'),
      FeedbackContingent(3, 'GOH 3'),
      FeedbackContingent(4, 'GOH 4'),
      FeedbackContingent(5, 'Contingent 1'),
      FeedbackContingent(6, 'Contingent 2'),
      FeedbackContingent(7, 'Contingent 3'),
      FeedbackContingent(8, 'Contingent 4'),
      FeedbackContingent(9, 'Contingent 5'),
      FeedbackContingent(10, 'Contingent 6'),
      FeedbackContingent(11, 'Contingent 7'),
      FeedbackContingent(12, 'Contingent 8'),
      FeedbackContingent(13, 'Contingent 9'),
      FeedbackContingent(14, 'Contingent 10'),
      FeedbackContingent(15, 'Band'),
      FeedbackContingent(16, 'OSG'),
      FeedbackContingent(17, 'POG'),
      FeedbackContingent(18, 'PASG'),
      FeedbackContingent(19, 'PSG'),
      FeedbackContingent(20, 'Trainers'),
    ];
  }

  FeedbackContingent.fromSnapshot(DataSnapshot snapshot)
       : key = snapshot.key,
         contingent = snapshot.value["contingent"];
    
   toJson() {
     return {
      "contingent": contingent,
     };
   }
}