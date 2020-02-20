import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
//import 'package:firebase_database/ui/firebase_animated_list.dart';
 
class MyFeedback extends StatefulWidget {
  MyFeedback() : super();
 
  @override
  MyFeedbackState createState() => MyFeedbackState();
}
 
class MyFeedbackState extends State<MyFeedback> {
  //List / Var (Category)
  List<FeedbackCategory> _feedbackCategories = FeedbackCategory.getFeedbackCategories();
  List<DropdownMenuItem<FeedbackCategory>> _dropdownCategory; 
  FeedbackCategory _selectedFeedbackCategory; 

  //List / Var (Contingent)
  List<FeedbackContingent> _feedbackContingent = FeedbackContingent.getFeedbackContingent();
  List<DropdownMenuItem<FeedbackContingent>> _dropdownContingent; 
  FeedbackContingent _selectedFeedbackContingent; 

  //Feedback
  List<Info> feedbackInfoList = List(); 
  Info feedbackInfo; 
  DatabaseReference feedbackRef; //Firebase feedbackRef
  final GlobalKey<FormState> feedbackFormKey = GlobalKey<FormState>(); //Firebase
  
  @override
  void initState() {
    //Function (Category)
    _dropdownCategory = buildDropdownCategory(_feedbackCategories);
    _selectedFeedbackCategory = _dropdownCategory[0].value;

    //Function (Contingent)
    _dropdownContingent = buildDropdownContingent(_feedbackContingent);
    _selectedFeedbackContingent = _dropdownContingent[0].value;

    //Function Ifo
    feedbackInfo = Info('', '');
    feedbackRef = FirebaseDatabase.instance.reference().child('FeedbacksList'); //Firebase

    feedbackRef.onChildAdded.listen(_onEntryAdded);
    feedbackRef.onChildChanged.listen(_onEntryChanged);
    super.initState();
  }

  //Dropdown List (Category)
  List <DropdownMenuItem<FeedbackCategory>> buildDropdownCategory(List feedbackCategories) {
    List <DropdownMenuItem<FeedbackCategory>> items = List();
    for (FeedbackCategory feedbackCategory in feedbackCategories) {
      items.add(
        DropdownMenuItem(
          value: feedbackCategory,
          child: Text(feedbackCategory.category),
        ),
      );
    }
    return items;
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
 
  onChangeFeedbackCategory(FeedbackCategory selectedFeedbackCategory) {
    setState(() {
      _selectedFeedbackCategory = selectedFeedbackCategory;
    });
  }

  onChangeFeedbackContingent(FeedbackContingent selectedFeedbackContingent) {
    setState(() {
      _selectedFeedbackContingent = selectedFeedbackContingent;
    });
  }

  void handleSubmit() {
    final FormState form = feedbackFormKey.currentState;

     if (form.validate()) {
       form.save();
       form.reset();
       feedbackRef.push().set(_selectedFeedbackCategory.toJson());
       feedbackRef.push().set(_selectedFeedbackContingent.toJson()); 
       feedbackRef.push().set((feedbackInfo.toJson()));
     }
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback'),
      ),
        body: SingleChildScrollView(
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
                          labelText: 'Rank & Name (Optional)'
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
                    items: _dropdownCategory,
                    onChanged: onChangeFeedbackCategory,
                  ),
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

class FeedbackCategory {
  String key;
  int id;
  String category;
 
  FeedbackCategory(this.id, this.category);
 
  static List<FeedbackCategory> getFeedbackCategories() {
    return <FeedbackCategory>[
      FeedbackCategory(1, 'Food'),
      FeedbackCategory(2, 'Logistic'),
      FeedbackCategory(3, 'Safety'),
      FeedbackCategory(4, 'Training'),
      FeedbackCategory(5, 'Transportation'),
      FeedbackCategory(6, 'General'),
    ];
  }

  FeedbackCategory.fromSnapshot(DataSnapshot snapshot)
       : key = snapshot.key,
         category = snapshot.value["category"];
    
   toJson() {
     return {
      "category": category,
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