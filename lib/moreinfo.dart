import 'package:flutter/material.dart';
import 'package:mampufb/fruit.dart';

class Morinfo extends StatefulWidget {

  final Fruit passobject;
  Morinfo({Key key, this.passobject}) : super(key: key);

  @override
  _MorinfoState createState() => _MorinfoState();
}

class _MorinfoState extends State<Morinfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('More Info'),
        ),
        body: Center(
          child: Container(
            child: Text('Nama: ${widget.passobject.nama}  warna: ${widget.passobject.warna}'),
          ),
        
      ),
    );
  }
}

