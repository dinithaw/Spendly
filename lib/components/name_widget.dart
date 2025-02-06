import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class NameWidget extends StatelessWidget {
  NameWidget({super.key});

  final currentUser = FirebaseAuth.instance.currentUser!;
    final FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: firestore
        .collection('Users')
        .doc(currentUser.email)
        .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final user = snapshot.data!.data() as Map<String, dynamic>;
            return Text(
              user['name'],
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onBackground),
            );
          } else {
            return const CircularProgressIndicator();
          }
        });
  }
}
