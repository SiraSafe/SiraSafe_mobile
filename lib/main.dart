import 'package:flutter/material.dart';
import 'homePage/welcomePage.dart';



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
      // routes: {
      //   '/HomeConducteur': (context) => HomeConducteur(),
      //   '/MessagePage': (context) => MessagePage(),
      //   '/PageNotification': (context) => PageNotification(),
      // },
      home: Scaffold(
        body: Center(
          child: WelcomePage(),
        ),
      ),
    );
  }
}
