import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) => Container(
                padding: const EdgeInsets.all(8.0),
                child: const Text('this works'),
              )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          FirebaseFirestore.instance
              .collection('chat/P04GRznqQi7rRLsocb6Y/messages')
              .snapshots()
              .listen((data) {
            data.docs.forEach((docs) {
              print(docs['text']);
            });
          });
        },
      ),
    );
  }
}
