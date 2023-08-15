import 'package:flutter/material.dart';

import 'homePage/welcomePage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// ...
//
// await Firebase.initializeApp(
// options: DefaultFirebaseOptions.currentPlatform,
// );


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SiraSafe',
      debugShowCheckedModeBanner: false,
      //scrollBehavior: MyCustomScrollBehavior(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Center(
          child: WelcomePage(),
        ),
      ),
    );
  }
}
