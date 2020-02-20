import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';

class GeneralAnnoucement extends StatefulWidget{
  @override
  GeneralAnnoucementState createState() => GeneralAnnoucementState();
}

class GeneralAnnoucementState extends State<GeneralAnnoucement> {
  List<Item> generalAnnoucementList = List(); //Items
  Item generalAnnoucementItem; //Item
  DatabaseReference generalAnnoucementRef; //ItemRef

  final GlobalKey<FormState> safetyFormKey = GlobalKey<FormState>();

  @override
  void initState(){
    super.initState();
    generalAnnoucementItem = Item('', '');
    //final FirebaseDatabase database = new FirebaseDatabase(app:app);
    //safetyMessageRef = database.reference().child('safetyMessageList'); 
    generalAnnoucementRef = FirebaseDatabase.instance.reference().child('General Annoucement'); //The name for the folder.
    generalAnnoucementRef.onChildAdded.listen(_onEntryAdded);
    generalAnnoucementRef.onChildChanged.listen(_onEntryChanged);
  }

  _onEntryAdded(Event event){
    setState((){
      generalAnnoucementList.add(Item.fromSnapshot(event.snapshot));
      });
  }
            
  _onEntryChanged(Event event) {
      var old = generalAnnoucementList.singleWhere((entry){
        return entry.key == event.snapshot.key;
    });
    setState((){
      generalAnnoucementList[generalAnnoucementList.indexOf(old)] = Item.fromSnapshot(event.snapshot);
     });
  }
            
  void handleSubmit() {
    final FormState form = safetyFormKey.currentState;
              
     if (form.validate()) {
       form.save();
       form.reset();
       generalAnnoucementRef.push().set(generalAnnoucementItem.toJson());
     }
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
     appBar: AppBar(
       title: Text('General Annoucements'),
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
                        onSaved: (val) => generalAnnoucementItem.title = val,
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
                        onSaved: (val) => generalAnnoucementItem.body = val,
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
            query: generalAnnoucementRef,
            itemBuilder: (BuildContext context, DataSnapshot snapshot, Animation<double> animation, int index){
            return new ListTile(
              leading: Icon(Icons.message, color:Colors.red),
              title: Text(generalAnnoucementList[index].title),
              subtitle: Text(generalAnnoucementList[index].body),
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