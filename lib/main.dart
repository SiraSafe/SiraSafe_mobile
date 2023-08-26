import 'package:flutter/material.dart';
import 'bottomElements/message.dart';
import 'bottomElements/profile.dart';
import 'homePage/conducteur/homeConducteur.dart';
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
          cardColor: Color(0xff205375),
      ),
      routes: {
        '/HomeConducteur': (context) => HomeConducteur(),
        '/MessagePage': (context) => MessagePage(),
        '/ProfilePage': (context) => ProfilePage(),
      },
      home: Scaffold(
        body: Center(
          child: WelcomePage(),
        ),
      ),
    );
  }
}
