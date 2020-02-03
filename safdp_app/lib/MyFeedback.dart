import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
//import 'package:firebase_database/ui/firebase_animated_list.dart';
 
class MyFeedback extends StatefulWidget {
  MyFeedback() : super();
 
  @override
  MyFeedbackState createState() => MyFeedbackState();
}
 
class MyFeedbackState extends State<MyFeedback> {
  List<Feedback> _feedbackCategories = Feedback.getFeedbackCategories();
  List<DropdownMenuItem<Feedback>> _dropdownMenuItems;
  Feedback _selectedFeedbackCategory;
  List<Info> feedbackInfoList = List(); //trainingMessageList
  Info feedbackInfo; //trainingMessageItem
  DatabaseReference feedbackRef; //Firebase feedbackRef
  final GlobalKey<FormState> feedbackFormKey = GlobalKey<FormState>(); //Firebase
  
  @override
  void initState() {
    _dropdownMenuItems = buildDropdownMenuItems(_feedbackCategories);
    _selectedFeedbackCategory = _dropdownMenuItems[0].value;
    feedbackInfo = Info('', '');
    feedbackRef = FirebaseDatabase.instance.reference().child('FeedbacksList'); //Firebase
    feedbackRef.onChildAdded.listen(_onEntryAdded);
    feedbackRef.onChildChanged.listen(_onEntryChanged);
    super.initState();
  }

  //Dropdown List
  List <DropdownMenuItem<Feedback>> buildDropdownMenuItems(List feedbackCategories) {
    List <DropdownMenuItem<Feedback>> items = List();
    for (Feedback feedbackCategory in feedbackCategories) {
      items.add(
        DropdownMenuItem(
          value: feedbackCategory,
          child: Text(feedbackCategory.category),
        ),
      );
    }
    return items;
  }

  _onEntryAdded(Event event){
    setState((){
      feedbackInfoList.add(Info.fromSnapshot(event.snapshot));
      });
  }
            
  _onEntryChanged(Event event) {
      var old = feedbackInfoList.singleWhere((entry){
        return entry.key == event.snapshot.key;
    });
    setState((){
      feedbackInfoList[feedbackInfoList.indexOf(old)] = Info.fromSnapshot(event.snapshot);
     });
  }
 
  onChangeDropdownItem(Feedback selectedFeedbackCategory) {
    setState(() {
      _selectedFeedbackCategory = selectedFeedbackCategory;
    });
  }

  void handleSubmit() {
    final FormState form = feedbackFormKey.currentState;
              
     if (form.validate()) {
       form.save();
       form.reset();
       feedbackRef.push().set(feedbackInfo.toJson());
       feedbackRef.push().set(_selectedFeedbackCategory.toJson()); //Sending dropdwon data to database
     }
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback'),
      ),
        body: new Container(
          child: Center(
            child: Form(
              key: feedbackFormKey,
              child: Column(
                children: <Widget>[
                  Container(
                  padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 5.0),
                  child: Text("Please provide your honest feedback", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListTile(
                      leading: Icon(Icons.info, size:28, color:Colors.red),
                      title: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Name & Rank'
                        ),
                        initialValue: '',
                        onSaved: (val) => feedbackInfo.name = val,
                        validator: (val) => val == '' ? val : null,
                      ),
                    ),
                  ),
                  DropdownButton(
                    underline: Container(height: 1,color: Colors.black),
                    value: _selectedFeedbackCategory,
                    items: _dropdownMenuItems,
                    onChanged: onChangeDropdownItem,
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
                        onSaved: (val) => feedbackInfo.description = val,
                        validator: (val) => val == '' ? val : null,
                      ),
                    ),
                  ),
                  RaisedButton(
                    padding: EdgeInsets.all(8.0),
                    textColor: Colors.white,
                    color:Colors.red,
                    child: new Text("Submit Feedback"),
                    onPressed: (){
                    handleSubmit();
                    },
                  ),
                ],
              ),
            )
          ),
        ),
      );
  }
}

class Feedback {
  String key;
  int id;
  String category;
 
  Feedback(this.id, this.category);
 
  static List<Feedback> getFeedbackCategories() {
    return <Feedback>[
      Feedback(1, 'Logistics'),
      Feedback(2, 'Food'),
      Feedback(3, 'Transportation'),
      Feedback(4, 'Training'),
      Feedback(5, 'General'),
    ];
  }

  Feedback.fromSnapshot(DataSnapshot snapshot)
       : key = snapshot.key,
         category = snapshot.value["category"];
    
   toJson() {
     return {
      "category": category,
     };
   }
}

class Info {
   String key;
   String name;
   String description;
  
   Info(this.name, this.description);
      
   Info.fromSnapshot(DataSnapshot snapshot)
       : key = snapshot.key,
         name = snapshot.value["name"],
         description = snapshot.value["description"];
    
   toJson() {
     return {
      "name": name,
      "description": description,
     };
   }
}