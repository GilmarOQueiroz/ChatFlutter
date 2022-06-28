import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  runApp(MyApp());

  QuerySnapshot snapshot = await FirebaseFirestore.instance
    .collection('col')
    .getDocs();
  snapshot.docs.forEach((d) {
    print(d.data);
  });

  /*FirebaseFirestore.instance
      .collection('mensagens')
      .doc('msg2')
      .set({
        'texto': 'Olá',
        'from': 'Gilmar',
        'read': false
  });*/
  }

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(),
    );
  }
}