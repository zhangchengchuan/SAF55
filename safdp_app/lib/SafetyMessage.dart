import 'package:flutter/material.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';

//Left with connections
//final FirebaseApp app = FirebaseApp(
//  name: 'SAFDP',
//  options: FirebaseOptions(
//    googleAppID: '1:460224704472:android:8bd02639c5141007c8ccad',
//    apiKey: 'AIzaSyAUoYgD811Zo4L2qiJ4L_7gls-0o8n6sus',
//    databaseURL: 'https://safdp-3d302.firebaseio.com/',
// ),
//); 

class SafetyMessage extends StatefulWidget{
  @override
  SafetyMessageState createState() => SafetyMessageState();
}

class SafetyMessageState extends State<SafetyMessage> {
  List<Item> safetyMessageList = List(); //Items
  Item safetyMessageItem; //Item
  DatabaseReference safetyMessageRef; //ItemRef

  final GlobalKey<FormState> safetyFormKey = GlobalKey<FormState>();

  @override
  void initState(){
    super.initState();
    safetyMessageItem = Item('', '');
    //final FirebaseDatabase database = new FirebaseDatabase(app:app);
    //safetyMessageRef = database.reference().child('safetyMessageList'); 
    safetyMessageRef = FirebaseDatabase.instance.reference().child('safetyMessageList'); //The name for the folder.
    safetyMessageRef.onChildAdded.listen(_onEntryAdded);
    safetyMessageRef.onChildChanged.listen(_onEntryChanged);
  }

  _onEntryAdded(Event event){
    setState((){
      safetyMessageList.add(Item.fromSnapshot(event.snapshot));
      });
  }
            
  _onEntryChanged(Event event) {
      var old = safetyMessageList.singleWhere((entry){
        return entry.key == event.snapshot.key;
    });
    setState((){
      safetyMessageList[safetyMessageList.indexOf(old)] = Item.fromSnapshot(event.snapshot);
     });
  }
            
  void handleSubmit() {
    final FormState form = safetyFormKey.currentState;
              
     if (form.validate()) {
       form.save();
       form.reset();
       safetyMessageRef.push().set(safetyMessageItem.toJson());
     }
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
     appBar: AppBar(
       title: Text('Safety Messages'),
    ),
    resizeToAvoidBottomPadding: false,
    body: Column(
      children: <Widget>[
        Flexible(
           flex:0,
           child: Center(
             child: Form(
             key: safetyFormKey,
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
                        onSaved: (val) => safetyMessageItem.title = val,
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
                        onSaved: (val) => safetyMessageItem.body = val,
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
            query: safetyMessageRef,
            itemBuilder: (BuildContext context, DataSnapshot snapshot, Animation<double> animation, int index){
            return new ListTile(
              leading: Icon(Icons.message, color:Colors.red),
              title: Text(safetyMessageList[index].title),
              subtitle: Text(safetyMessageList[index].body),
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
  
   Item(this.title, this.body);
      
   Item.fromSnapshot(DataSnapshot snapshot)
       : key = snapshot.key,
         title = snapshot.value["title"],
        body = snapshot.value["body"];
    
   toJson() {
     return {
      "title": title,
      "body": body,
     };
   }
}