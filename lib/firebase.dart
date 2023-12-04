import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  // Initialize Firebase (replace these values with your own)
  final firebaseConfig = {
    'apiKey': 'AIzaSyCdie8OMJZPmCXf_qjWv1Q-KxkR-MTuij8',
    'authDomain': 'classmate-174aa.firebaseapp.com',
    'projectId': 'classmate-174aa',
    'storageBucket': 'classmate-174aa.appspot.com',
    'messagingSenderId': '851045010561',
    'appId': '1:851045010561:android:099682dd51b3e748439180'
  };

  // Initialize Firebase
  FirebaseOptions options = FirebaseOptions(
    appId: firebaseConfig['appId'] ?? '',
    apiKey: firebaseConfig['apiKey'] ?? '',
    messagingSenderId: firebaseConfig['messagingSenderId'] ?? '',
    projectId: firebaseConfig['projectId'] ?? '',
    storageBucket: firebaseConfig['storageBucket'] ?? '',
    authDomain: firebaseConfig['authDomain'] ?? '',
  );

  FirebaseFirestore.instance.settings = Settings(persistenceEnabled: false);

  // Assuming you have Firebase initialized in your project
  final db = FirebaseFirestore.instance;

  addRandomUsersAndClasses(db);
}

Future<void> addRandomUsersAndClasses(FirebaseFirestore db) async {
  Future<List<DocumentReference>> getRandomStudents(int count) async {
    // Get random student documents from the "users" collection
    final querySnapshot = await db
        .collection('users')
        .where('role', isEqualTo: 'student')
        .limit(count)
        .get();

    return querySnapshot.docs.map((doc) => doc.reference).toList();
  }

  bool isSectionAvailable(String section, List<String> existingSections) {
    // Check if the section is available
    return !existingSections.contains(section);
  }

  List<Map<String, dynamic>> getRandomAssignments(
      String className, int homeworks, int quizzes, int tests) {
    // Generate random assignments for a given class
    var types = ['homework', 'quiz', 'test'];

    // Get random point values in these ranges for each assignment.
    Random rnd = new Random();
    int hw_min = 10;
    int hw_max = 25;
    int quiz_min = 15;
    int quiz_max = 30;
    int test_min = 50;
    int test_max = 150;

    return List.generate(homeworks, (index) => {
      'assignment': 'Homework $index for $className',
      'description': 'Description for homework $index goes here.',
      'points': hw_min + rnd.nextInt(hw_max - hw_min),
      'type': 'homework',
    }) + List.generate(quizzes, (index) => {
      'assignment': 'Quiz $index for $className',
      'description': 'Description for quiz $index goes here.',
      'points': quiz_min + rnd.nextInt(quiz_max - quiz_min),
      'type': 'quiz',
    }) + List.generate(tests, (index) => {
      'assignment': 'Test $index for $className',
      'description': 'Description for test $index goes here.',
      'points': test_min + rnd.nextInt(test_max - test_min),
      'type': 'test',
    });
  }

  // Map to keep track of existing sections
  final existingSections = <String>[];

  // Add 100 user entries to the "users" collection
  for (var i = 1; i <= 100; i++) {
    final user = {
      'name': getRandomName(predefinedNames),
      'id': i,
      'email': 'user$i@example.com',
      'role': getRandomRole(),
    };

    try {
      // Check if the email is unique
      final querySnapshot = await db
          .collection('users')
          .where('email', isEqualTo: user['email'])
          .get();

      if (querySnapshot.docs.isNotEmpty) {
        // Email is not unique, skip adding the user
        print('User with email ${user['email']} already exists. Skipping.');
        continue;
      }

      final userDocRef = await db.collection('users').add(user);
      print('User Document $i written with ID: ${userDocRef.id}');

      // Check if the user is a professor
      if (user['role'] == 'professor') {
        final section = 'Section $i';

        // Check if the section is available
        if (!isSectionAvailable(section, existingSections)) {
          print('Section $section is not available. Skipping class creation.');
          continue;
        }

        existingSections.add(section);

        final students = await getRandomStudents(40); // Adjust the count as needed

        final classData = {
          'students': students,
          'professor': userDocRef,
          'title': 'Class $i',
          'section': section,
          'room': 'Room $i',
          'assignments': getRandomAssignments('Class $i', 5, 3, 1),
        };

        try {
          final classDocRef =
          await db.collection('classes').add(classData);
          print('Class Document $i written with ID: ${classDocRef.id}');
        } catch (error) {
          print('Error adding class document $i: $error');
        }
      }
    } catch (error) {
      print('Error adding user document $i: $error');
    }
  }
}

String getRandomRole() {
  final roles = ['professor', 'student'];
  Random r = new Random();
  bool result = r.nextDouble() <= 0.3;
  if (result) return roles[0];
  else return roles[1];
}

String getRandomName(List<String> predefinedNames) {
  final random = Random();
  return predefinedNames[random.nextInt(predefinedNames.length)];
}

// Additional names for the predefined list
final predefinedNames = [
  'Kassidy Herring',
  'Henrik Morales',
  'Skylar Arellano',
  'Kellan Russo',
  'Tinsley O’Connor',
  'Princeton Rangel',
  'Gloria West',
  'Diego Hines',
  'Poppy Sheppard',
  'Trent Levy',
  'Flora Higgins',
  'Sterling Travis',
  'Mazikee Ross',
  'Wesley Tate',
  'Skye Singleton',
  'Landyn Delarosa',
  'Iyla Small',
  'Rudy Wolfe',
  'Hallie Rice',
  'Graham Wagner',
  'Maeve Randolph',
  'Eugene Crosby',
  'Keily Gordon',
  'Karter Gill',
  'Jordan Rojas',
  'Colin Austin',
  'Alivia Delarosa',
  'Osiris Gross',
  'Angel Gallegos',
  'Jonas Rogers',
  'Madelyn Gillespie',
  'Forest Brewer',
  'Thea Hogan',
  'Sonny Atkinson',
  'Jazmin Reid',
  'Josue Pearson',
  'Kiara Lara',
  'Caiden Glover',
  'Alessia Cline',
  'Cullen Galvan',
  'Dallas Dodson',
  'Seven Rush',
  'Maleah Kirk',
  'Alessandro Pineda',
  'Nola Davis',
  'Lucas Alexander',
  'Lyla Monroe',
  'Colby Meadows',
  'Pearl Fitzpatrick',
  'Blaze Hendrix',
  'Zhuri Atkinson',
  'Duke McGee',
  'Kayleigh Roth',
  'Roy Sanchez',
  'Aria Wagner',
  'Enzo Frank',
  'Dior Nunez',
  'Caden Booker',
  'Nataly Yu',
  'Bryant Potter',
  'Rory Hale',
  'Ezequiel Morton',
  'Mallory Davis',
  'Lucas Hendrix',
  'Zhuri Tate',
  'Dalton Garrett',
  'Tessa Alvarado',
  'Andres Rubio',
  'Hadassah Wells',
  'Max Buck',
  'Livia Johnston',
  'Felix Conner',
  'Alondra Norman',
  'Aziel Kramer',
  'Hanna Bond',
  'Roger O’Connell',
  'Jillian Strickland',
  'Keegan Watson',
  'Hailey Strong',
  'Axl Buckley',
  'Theodora Huff',
  'Finnley Carey',
  'Alora Adams',
  'Hudson Skinner',
  'Mara Jacobs',
  'Bryan Morrison',
  'Rebecca Baxter',
  'Tomas Barton',
  'Danna Rhodes',
  'Titus Green',
  'Zoe Moore',
  'Levi Lambert',
  'Nina McDowell',
  'Lachlan Lester',
  'Averi Barron',
  'Dustin Richmond',
  'Whitney Mejia',
  'Atticus Dodson',
  'Etta Spence',
  'Cillian Curry',
  'Alison Palmer',
  'Theo Anderson',
  'Ella Bailey',
  'Axel Henson',
  'Kinslee Franklin',
  'Simon Friedman',
  'Aspyn Snyder',
  'Thiago Blackwel',
];
