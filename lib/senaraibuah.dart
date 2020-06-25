import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mampufb/fruit.dart';
import 'package:mampufb/moreinfo.dart';

class Senaraibuah extends StatefulWidget {
  //declare firestore instance
  @override
  _SenaraibuahState createState() => _SenaraibuahState();
}

class _SenaraibuahState extends State<Senaraibuah> {
  Firestore firestore = Firestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: firestore.collection('fruits').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if(snapshot.hasError) 
            return Text('error: ${snapshot.error}');  

          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
                //kita tunjuk pusing pusing kalau data lambat datang
                return Center(
                  child: CircularProgressIndicator(),
                );
            default:
                return ListView(
                  children: snapshot.data.documents.map(
                    (DocumentSnapshot document) {
                      return ListTile(
                        title: Text(document['nama'].toString()),
                        subtitle: Text(document['warna'].toString()),
                        trailing: IconButton(
                          icon: Icon(Icons.delete), 
                          onPressed: () async {
                            //delete based on its documentID
                            await firestore.collection('fruits').document(document.documentID).delete();
                          } ),
                          onTap: () async {
                            print('get info');
                            var documentshow = await firestore.collection('fruits').document(document.documentID).get();
                              print(documentshow['nama']);

                            //goto next screen "moreinfo" and pass info in  parameter
                            Navigator.push(context,MaterialPageRoute(builder: (context) => 
                            Morinfo(
                              passobject: Fruit(documentshow['nama'].toString(), 
                                            documentshow['warna'].toString()) )  
                              ));
                          },
                      );
                      }   
                  ).toList(),
                  
                );
          }


        }

        ),
      
    );
  }
}
