import 'package:flutter/material.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:intl/intl.dart';

//Left with connections
//final FirebaseApp app = FirebaseApp(
//  name: 'SAFDP',
//  options: FirebaseOptions(
//    googleAppID: '1:460224704472:android:8bd02639c5141007c8ccad',
//    apiKey: 'AIzaSyAUoYgD811Zo4L2qiJ4L_7gls-0o8n6sus',
//    databaseURL: 'https://safdp-3d302.firebaseio.com/',
// ),
//); 

class TrainerMessage extends StatefulWidget{
  @override
  TrainerMessageState createState() => TrainerMessageState();
}

class TrainerMessageState extends State<TrainerMessage> {
  List<Item> trainingMessageList = List(); //Items
  Item trainingMessageItem; //Item
  DatabaseReference trainingMessageRef; //ItemRef

  final GlobalKey<FormState> trainingFormKey = GlobalKey<FormState>();

  @override
  void initState(){
    super.initState();

    //Date
    DateFormat dateFormat = DateFormat("yyyy-MM-dd \n HH:mm");
    var date = dateFormat.format(DateTime.now());

    trainingMessageItem = Item('', '', date);
    trainingMessageRef = FirebaseDatabase.instance.reference().child('Trainer Message'); //The name for the folder.
    trainingMessageRef.onChildAdded.listen(_onEntryAdded);
    trainingMessageRef.onChildChanged.listen(_onEntryChanged);
  }

  _onEntryAdded(Event event){
    setState((){
      trainingMessageList.add(Item.fromSnapshot(event.snapshot));
      });
  }
            
  _onEntryChanged(Event event) {
      var old = trainingMessageList.singleWhere((entry){
        return entry.key == event.snapshot.key;
    });
    setState((){
      trainingMessageList[trainingMessageList.indexOf(old)] = Item.fromSnapshot(event.snapshot);
     });
  }
            
  void handleSubmit() {
    final FormState form = trainingFormKey.currentState;
              
     if (form.validate()) {
       form.save();
       form.reset();
       trainingMessageRef.push().set(trainingMessageItem.toJson());
     }
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
     appBar: AppBar(
       title: Text('Trainer Messages'),
    ),
    resizeToAvoidBottomPadding: false,
    body: Column(
      children: <Widget>[
        Flexible(
           flex:0,
           child: Center(
             child: Form(
             key: trainingFormKey,
              child: Flex(
                direction: Axis.vertical,
                  children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListTile(
                      leading: Icon(Icons.info, size:28, color:Colors.red),
                      title: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Title'
                        ),
                        initialValue: '',
                        onSaved: (val) => trainingMessageItem.title = val,
                        validator: (val) => val == '' ? val : null,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListTile(
                      leading: Icon(Icons.info, size:28, color:Colors.red),
                      title: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Description'
                        ),
                        initialValue: '',
                        onSaved: (val) => trainingMessageItem.body = val,
                        validator: (val) => val == '' ? val : null,
                      ),
                    ),
                  ),
                  RaisedButton(
                    padding: EdgeInsets.all(8.0),
                    textColor: Colors.white,
                    color:Colors.red,
                    child: new Text("Submit Message"),
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
            query: trainingMessageRef,
            itemBuilder: (BuildContext context, DataSnapshot snapshot, Animation<double> animation, int index){
            return new ListTile(
              contentPadding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
              leading: Icon(Icons.message, color:Colors.red),
              title: Text(trainingMessageList[index].title),
              subtitle: Text(trainingMessageList[index].body, textAlign: TextAlign.justify),
              trailing: Text(trainingMessageList[index].date, textAlign: TextAlign.right),
              isThreeLine: true,
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
   String title;
   String body;
   String date;
  
   Item(this.title, this.body, this.date);
      
   Item.fromSnapshot(DataSnapshot snapshot)
       : key = snapshot.key,
         title = snapshot.value["title"],
         body = snapshot.value["body"],
         date = snapshot.value["date"];
    
   toJson() {
     return {
      "title": title,
      "body": body,
      "date": date,
     };
   }
}