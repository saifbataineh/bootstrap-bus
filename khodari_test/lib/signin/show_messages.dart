
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ShowM extends StatefulWidget {
  const ShowM({super.key});

  @override
  State<ShowM> createState() => _ShowMState();
}

class _ShowMState extends State<ShowM> {
  List<DocumentSnapshot> _documents = [];
  @override
  void initState() {
    super.initState();
    _fetchDocuments();
  }

  void _fetchDocuments() async {
    final collection = FirebaseFirestore.instance.collection('messages');
    final snapshot = await collection.get();
    setState(() {
      _documents = snapshot.docs;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount: _documents.length,
          itemBuilder: (context, index) {
          return ListTile(
            subtitle: Text(_documents[index]["message"]),
            title: Text(_documents[index]["email"]),
          );
        }),
      ),
    );
  }
}
