import 'package:flutter/material.dart';
import 'package:mampufb/senaraibuah.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Addbuah extends StatefulWidget {
  //declare
  @override
  _AddbuahState createState() => _AddbuahState();
}

class _AddbuahState extends State<Addbuah> {
  
  final _namaController = TextEditingController();
  final _warnaController = TextEditingController();
  //declare firebase instance
  Firestore firestore = Firestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Add Buah'),
        ),
        body: ListView(
          children: <Widget>[
            SizedBox(height:20),
            Text('Buah Buahan Tempatan'),
            ListTile(
              leading: Text('Nama Buah:'),
              title: TextField(
                controller: _namaController,
                ),
            ),
            ListTile(
              leading: Text('Warna Buah:'),
              title: TextField(
                controller: _warnaController,

              ),
            ),
            ListTile(
              title: RaisedButton(
                child: Text('Add to Database'),
                onPressed: () async {
                  //add to firebase nanti
                  await firestore.collection('fruits').document()
                  .setData(
                    {
                      'nama': _namaController.text,
                      'warna': _warnaController.text,
                    }
                    );

                  //after save then ngoto
                  Navigator.push(context, 
                  MaterialPageRoute(builder:(context) 
                  => Senaraibuah()));
                }),
            )
          ],
        ),
    );
  }
}