import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

FirebaseAuth auth = FirebaseAuth.instance;
FirebaseStorage firestore = FirebaseStorage.instance;
User? currentUser = auth.currentUser;

const usersColection = 'users';