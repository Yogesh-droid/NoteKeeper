import 'package:flutter/material.dart';

class NoteDetails extends StatefulWidget {
  String appBarTitle;

  NoteDetails(this.appBarTitle);

  @override
  _NoteDetailsState createState() => _NoteDetailsState(appBarTitle);
}

class _NoteDetailsState extends State<NoteDetails> {
  String appBarTitle;

  var menuItems = ['high', 'low'];
  var _value = 'low';
  TextEditingController titleController;
  TextEditingController descController;

  _NoteDetailsState(this. appBarTitle);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (){
        popBack();
      },

        child:Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back),onPressed: (){
            popBack();
          },),
          title: Text(appBarTitle),
        ),
        body: Container(
          child: ListView(
            children: [
              ListTile(
                title: DropdownButton<String>(
                    items: menuItems
                        .map((e) => DropdownMenuItem<String>(
                              value: e,
                              child: Text(e),
                            ))
                        .toList(),
                    value: _value,
                    onChanged: (String newValue) {
                      setState(() {
                        this._value = newValue;
                      });
                    }),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'title',
                      hintText: 'enter the title',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(2.0),
                      )),
                  onChanged: (value) {},
                ),
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Description',
                    hintText: 'Description',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(2.0),
                    )),
                onChanged: (value) {},
              ),
              Row(
                children: [
                  Expanded(
                    child: RaisedButton(
                      child: Text('save'),
                      onPressed: () {},
                      color: Colors.blue,
                    ),
                  ),
                  Expanded(
                      child: RaisedButton(
                    child: Text("delete"),
                    onPressed: () {},
                    color: Colors.blue,
                  ))
                ],
              )
            ],
          ),
        ),
      ));
  }

  void popBack() {
    Navigator.pop(context);
  }
}
