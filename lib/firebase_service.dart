import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<List<Map<String, dynamic>>> getPeopleData(String title) async {
    try {
      // Fetch people data from Firebase
      QuerySnapshot<Map<String, dynamic>> querySnapshot =
      await _firestore.collection('classesV2').where('name', isEqualTo: title).get();

      // Convert QuerySnapshot to a List<Map<String, dynamic>>
      List<Map<String, dynamic>> peopleData =
      querySnapshot.docs.map((doc) => doc.data()).toList();

      print('People data fetched here.');
      print(peopleData);
      return peopleData;
    } catch (error) {
      throw Exception('Failed to fetch people data: $error');
    }
  }
}
