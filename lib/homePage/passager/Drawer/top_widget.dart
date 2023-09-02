
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../conducteur/drawer_element/apropos.dart';
import '../../conducteur/drawer_element/privacy.dart';
import '../Bottom/profile.dart';
import 'horaire.dart';




class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xff205375),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.white
            ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/logo/1.png", // Replace with your logo asset path
            width: 130,
            height: 130,
          ),

        ],
      ),

          ),
          ListTile(
            textColor: Colors.white,
            title: Text('Horaire des Bus',),
            onTap: () {
              Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => HoraireBus()),
              );
            },
          ),

          ListTile(
            textColor: Colors.white,
            title: Text('A Propos de nous'),
            onTap: () {
              Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => PageApropos()),
              );
            },
          ),
          ListTile(
            textColor: Colors.white,
            title: Text('Politique de confidentialité et Conditions d\'utilisation'),
            onTap: () {
              Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => PrivacyPage()),
              );

            },
          ),
          ListTile(
            textColor: Colors.white,
            title: Text('Compte'),
            onTap: () {
              Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => ProfileUser()),
              );
            },
          ),
        ],
      ),
    );
  }
}
