import 'package:flutter/material.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
//import 'package:firebase_messaging/firebase_messaging.dart';
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

class SafetyMessage extends StatefulWidget{
  @override
  SafetyMessageState createState() => SafetyMessageState();


}

class SafetyMessageState extends State<SafetyMessage> {
  //Items
  List<Item> safetyMessageList = List(); //Items
  Item safetyMessageItem; //Item
  DatabaseReference safetyMessageRef; //ItemRef

  final GlobalKey<FormState> safetyFormKey = GlobalKey<FormState>();

  //Notification
  //String notification = 'Just Testing';
  //FirebaseMessaging firebaseMessaging = new FirebaseMessaging();

  @override
  void initState(){
    super.initState();

    //Date
    DateFormat dateFormat = DateFormat("yyyy-MM-dd \n HH:mm");
    var date = dateFormat.format(DateTime.now());
    
    //Message
    safetyMessageItem = Item('', '', date);
    //final FirebaseDatabase database = new FirebaseDatabase(app:app);
    //safetyMessageRef = database.reference().child('safetyMessageList'); 
    safetyMessageRef = FirebaseDatabase.instance.reference().child('Safety Message'); //The name for the folder.
    safetyMessageRef.onChildAdded.listen(_onEntryAdded);
    safetyMessageRef.onChildChanged.listen(_onEntryChanged);

    //Notification
    //firebaseMessaging.configure(
    //  onLaunch: (Map<String, dynamic > msg){
    //    print('onLaunched called');
    //    return;
    //  },
    //  onResume: (Map<String, dynamic > message){
    //    print('onResume called');
    //    return;
    //  },
    //  onMessage: (Map<String, dynamic > message){
    //    print('onMessage called');
    //    return;
    // }
    //);

    //firebaseMessaging.requestNotificationPermissions(
    //  const IosNotificationSettings(
    //    sound: true,alert: true,badge: true
    //  )
    //);

    //firebaseMessaging.onIosSettingsRegistered.listen((IosNotificationSettings setting) {
    //  print('ISO setting Registered');
    //});

    //firebaseMessaging.getToken().then((token){
    //  update(token);
    //  DatabaseReference databaseReference = new FirebaseDatabase().reference();
    //  databaseReference.child('Safety Message/$token').set({'token':token});
    //});
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

  //update (String token) {
  //  print(token);
  //  notification = token;
  //  setState(() {    
  //  });
  //}

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
              contentPadding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
              leading: Icon(Icons.message, color:Colors.red),
              title: Text(safetyMessageList[index].title),
              subtitle: Text(safetyMessageList[index].body, textAlign: TextAlign.justify),
              trailing: Text(safetyMessageList[index].date, textAlign: TextAlign.right),
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