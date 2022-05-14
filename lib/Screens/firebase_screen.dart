import 'package:flutter/material.dart';
import '../Utils/widgets.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_core/firebase_core.dart';

final storage = FirebaseStorage.instance;

// Create a storage reference from our app
// StorageReference storageRef = storage.getReference();


class FirebaseScreen extends StatefulWidget {
  const FirebaseScreen({Key? key}) : super(key: key);

  @override
  State<FirebaseScreen> createState() => _FirebaseScreenState();
}


class _FirebaseScreenState extends State<FirebaseScreen> {
  get pageName => 'Firebase';

  void initFirebase() async{
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  }

  @override
  void initState (){
    super.initState();
    initFirebase();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: homePageAppBar(context, pageName),
        body: const Text('FireBase'),
      ),
    );
  }
}
