
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
              // Handle item 1 tap
            },
          ),
          ListTile(
            title: Text('Avertissements'),
            onTap: () {
              // Handle item 2 tap
            },
          ),
          ListTile(
            title: Text('Notifications'),
            onTap: () {
              // Handle item 2 tap
            },
          ),
          ListTile(
            title: Text('Trajets'),
            onTap: () {
              // Handle item 2 tap
            },
          ),
          ListTile(
            title: Text('A Propos de nous'),
            onTap: () {
              // Handle item 2 tap
            },
          ),
          ListTile(
            title: Text('Politique de confidentialité et Conditions d\'utilisation'),
            onTap: () {

            },
          ),
          ListTile(
            title: Text('Compte'),
            onTap: () {
              // Handle item 2 tap
            },
          ),
        ],
      ),
    );
  }
}
