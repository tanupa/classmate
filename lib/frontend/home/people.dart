import 'package:flutter/material.dart';
import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../firebase_service.dart';

class People extends StatelessWidget {
  final FirebaseService _firebaseService = FirebaseService();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Map<String, dynamic>>>(
      future: _firebaseService.getPeopleData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }

        if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        }
        List<Map<String, dynamic>> peopleData = snapshot.data!;

        return SingleChildScrollView(
          child: Column(
            children: [
              // Header
              Container(
                width: double.infinity,
                height: 155,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 223,
                      height: 26,
                      child: Text(
                        '<Course>',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF010101),
                          fontSize: 26,
                          fontFamily: 'Amethysta',
                          fontWeight: FontWeight.w400,
                          height: 0.03,
                          letterSpacing: -0.41,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 336,
                      height: 35,
                      child: Text(
                        'People',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontFamily: 'Amethysta',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // People list
              Container(
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  children: [
                    for (var person in peopleData)
                      ListTile(
                        title: Text(
                          person['Name'] ?? 'N/A',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Amethysta',
                            fontWeight: FontWeight.w400,
                            height: 0.06,
                            letterSpacing: -0.41,
                          ),
                        ),
                        subtitle: Text(
                          person['Role'] ?? 'N/A',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Amethysta',
                            fontWeight: FontWeight.w400,
                            height: 0.06,
                            letterSpacing: -0.41,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

