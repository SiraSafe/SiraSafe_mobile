
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bottomElements/profile.dart';
import 'homePage/conducteur/drawer_element/apropos.dart';
import 'homePage/conducteur/drawer_element/avertissements.dart';
import 'homePage/conducteur/drawer_element/bilanConduite.dart';
import 'homePage/conducteur/drawer_element/notifications.dart';
import 'homePage/conducteur/drawer_element/privacy.dart';
import 'homePage/conducteur/drawer_element/trajets.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xff205375),
            ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "assets/logo/logo.png", // Replace with your logo asset path
            width: 120,
            height: 120,
          ),

        ],
      ),

          ),
          ListTile(
            title: Text('Bilan de Conduite'),
            onTap: () {
              Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => PageBilan()),
              );
            },
          ),
          ListTile(
            title: Text('Avertissements'),
            onTap: () {
              Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => PageAlerte()),
              );
            },
          ),
          ListTile(
            title: Text('Notifications'),
            onTap: () {
              Navigator.push(context, 
                  MaterialPageRoute(
                      builder: (context) => PageNotification()),
              );
            },
          ),
          ListTile(
            title: Text('Trajets'),
            onTap: () {
              Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => PageTrajet()),
              );
            },
          ),
          ListTile(
            title: Text('A Propos de nous'),
            onTap: () {
              Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => PageApropos()),
              );
            },
          ),
          ListTile(
            title: Text('Politique de confidentialité et Conditions d\'utilisation'),
            onTap: () {
              Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => PrivacyPage()),
              );

            },
          ),
          ListTile(
            title: Text('Compte'),
            onTap: () {
              Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => ProfilePage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
