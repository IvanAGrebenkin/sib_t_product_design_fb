import 'package:flutter/material.dart';
import '../Utils/widgets.dart';

class FirebaseScreen extends StatefulWidget {
  const FirebaseScreen({Key? key}) : super(key: key);

  @override
  State<FirebaseScreen> createState() => _FirebaseScreenState();
}


class _FirebaseScreenState extends State<FirebaseScreen> {
  get pageName => 'Firebase';


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
