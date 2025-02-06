
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class DatabaseService {
  //final String uid;
  //DatabaseService({required this.uid});

  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final currentUser = FirebaseAuth.instance.currentUser!;

  Future addUser(String name) async {
    await firestore.collection('Users').doc(currentUser.email).set({
      'name': name,
    });
  }

  Future addExpenses(String price, String category, String date) async {
    await firestore.collection('Expenses').doc(currentUser.email).set({
      'price': price,
      'category': category,
      'date': date,
    });
  }

  Future getUser() async {
    await firestore
        .collection('Users')
        .doc(currentUser.email)
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        final data = documentSnapshot.data() as Map<String, dynamic>;
        return data['name'];
      }
    });
  }
}
