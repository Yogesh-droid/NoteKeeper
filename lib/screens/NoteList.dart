import 'package:flutter/material.dart';
import 'package:note_taking_app/screens/NoteDetails.dart';

class NoteList extends StatefulWidget {

  @override
  _NoteListState createState() => _NoteListState();
}

class _NoteListState extends State<NoteList> {
  int count=1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Notes"),
          ),
          body: makeCard(),
          floatingActionButton: FloatingActionButton(onPressed: (){
              getDetails('Edit Note');
          },
            tooltip: "Add Note",
            child: Icon(Icons.add),
          ),
        ),
    );
  }

  ListView makeCard() {
    return ListView.builder(
        itemCount: count,
      itemBuilder: (BuildContext context,int positiom){
          return Card(
            elevation: 2.0,
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.keyboard_arrow_right),
                backgroundColor: Colors.yellowAccent,
              ),
              title: Text("hello"),
              subtitle: Text("World"),
              trailing: Icon(Icons.delete),
              onTap: (){
                  getDetails("Details");
              },
            ),
          );
      },
    );
  }
  void getDetails(String title){
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return NoteDetails(title);
    }));
  }

}

