import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Assignments extends StatelessWidget {
  final String courseId;

  Assignments({required this.courseId});

  @override
  Widget build(BuildContext context) {
    CollectionReference classesV2 =
    FirebaseFirestore.instance.collection('classesV2');

    return Scaffold(
      appBar: AppBar(
        title: Text('Assignments'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: StreamBuilder<DocumentSnapshot>(
        stream: classesV2.doc(courseId).snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          }

          var assignments = snapshot.data!['assignments'] ?? [];

          return ListView.builder(
            padding: EdgeInsets.all(8.0),
            itemCount: assignments.length,
            itemBuilder: (context, index) {
              var assignment = assignments[index];
              var title = assignment['name'] ?? '';
              var date = assignment['dueDate'] ?? '';

              return Card(
                margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                child: ListTile(
                  title: Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  subtitle: Text(
                    'Due $date',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                    ),
                  ),
                  tileColor: Colors.white,
                ),
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black, width: 0.1),
                  borderRadius: BorderRadius.circular(4),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
