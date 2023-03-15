import 'package:flutter/material.dart';
import 'dart:io';
import './models/question_model.dart';
import './screens/home_screen.dart';
import './models/db_connect.dart';

void main(){
  // var db = DBconnect();
 // db.addQuestion(
  //    Question(id: '12',title: 'Streams can be of __________ types.?',options:{
  //    'Two':true,
  //    'Zero':false,
  //    'One':false,
  //    'Four':false
  //    }));


  runApp(
      const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,

      home: HomeScreen(),
    );
  }
}
