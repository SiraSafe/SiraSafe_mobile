import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../homePage/conducteur/Apropos/messagePage.dart';
import '../utils/utils.dart';

class MessagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xff205375), Color(0xff219ebc)],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              // rectangle124WpP (180:1746)
              left: 28*fem,
              top: 89*fem,
              child: Align(
                child: SizedBox(
                  width: 334*fem,
                  height: 361*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(30*fem),
                      gradient: LinearGradient (
                        begin: Alignment(0, -1),
                        end: Alignment(0, 1),
                        colors: <Color>[Color(0xe56fffe9), Color(0xd6ffc107), Color(0xff205375)],
                        stops: <double>[0, 0.484, 1],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // noussommesvotrecoutenhsitezpas (180:1666)
              left: 43*fem,
              top: 115*fem,
              child: Align(
                child: SizedBox(
                  width: 320*fem,
                  height: 56*fem,
                  child: Text(
                    'Nous sommes à votre écoute : N\'hésitez pas à nous écrire pour toute question, suggestion ou demande d\'assistance.',
                    style: SafeGoogleFont (
                      'League Spartan',
                      fontSize: 20*ffem,
                      fontWeight: FontWeight.w400,
                      height: 0.92*ffem/fem,
                      letterSpacing: -0.3*fem,
                      color: Color(0xff205375),
                    ),
                  ),
                ),
              ),
            ),
          ],

        ),


    );
  }
}