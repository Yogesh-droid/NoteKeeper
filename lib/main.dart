import 'package:flutter/material.dart';
import 'package:note_taking_app/screens/NoteDetails.dart';
import 'package:note_taking_app/screens/NoteList.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyApp",
      home: NoteList(),
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
    );
  }
}
