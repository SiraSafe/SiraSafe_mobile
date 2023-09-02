import 'package:flutter/material.dart';
import 'package:quickalert/models/quickalert_type.dart';

import '../../../utils/utils.dart';




class PageBilan extends StatefulWidget {
  @override
  State<PageBilan> createState() => _PageBilanState();
}

class _PageBilanState extends State<PageBilan> {
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/logo/screen.png'), // Replace with your image path
            fit: BoxFit.cover, // Adjust the fit to your preference
          ),
        ),
        child: ListView(
          children: [
            Container(
              // autogroupcobdaij (B3YoNjBtdG4f17qLQSCobD)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 36*fem),
              width: double.infinity,
              height: 370*fem,
              child: Stack(
                children: [
                  Positioned(
                    // rectangle118jEF (160:6490)
                    left: 11*fem,
                    top: 22*fem,
                    child: Align(
                      child: SizedBox(
                        width: 370*fem,
                        height: 150*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(30*fem),
                            gradient: LinearGradient (
                              begin: Alignment(0, -1),
                              end: Alignment(0, 1),
                              colors: <Color>[Color(0xce219ebc), Color(0x9e6fffe9)],
                              stops: <double>[0, 1],
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x3f000000),
                                offset: Offset(0*fem, 4*fem),
                                blurRadius: 2*fem,
                              ),
                              BoxShadow(
                                color: Color(0x3f000000),
                                offset: Offset(0*fem, 4*fem),
                                blurRadius: 2*fem,
                              ),
                              BoxShadow(
                                color: Color(0x3f000000),
                                offset: Offset(0*fem, 4*fem),
                                blurRadius: 2*fem,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // rectangle119vZd (160:6499)
                    left: 10*fem,
                    top: 214*fem,
                    child: Align(
                      child: SizedBox(
                        width: 370*fem,
                        height: 156*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(30*fem),
                            gradient: LinearGradient (
                              begin: Alignment(0, -1),
                              end: Alignment(0, 1),
                              colors: <Color>[Color(0xce219ebc), Color(0x9e6fffe9)],
                              stops: <double>[0, 1],
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x3f000000),
                                offset: Offset(0*fem, 4*fem),
                                blurRadius: 2*fem,
                              ),
                              BoxShadow(
                                color: Color(0x3f000000),
                                offset: Offset(0*fem, 4*fem),
                                blurRadius: 2*fem,
                              ),
                              BoxShadow(
                                color: Color(0x3f000000),
                                offset: Offset(0*fem, 4*fem),
                                blurRadius: 2*fem,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // chauffeurmohamedtraornotegloba (160:6491)
                    left: 29*fem,
                    top: 31.5*fem,
                    child: Align(
                      child: SizedBox(
                        width: 331*fem,
                        height: 132*fem,
                        child: RichText(
                          text: TextSpan(
                            style: SafeGoogleFont (
                              'League Spartan',
                              fontSize: 13*ffem,
                              fontWeight: FontWeight.w400,
                              height: 0.92*ffem/fem,
                              letterSpacing: -0.3100000024*fem,
                              color: Color(0xff000000),
                            ),
                            children: [
                              TextSpan(
                                text: 'Chauffeur : Mohamed Traoré \nNote Globale : ⭐⭐⭐⭐⭐ (5 étoiles)\n',
                                style: SafeGoogleFont (
                                  'League Spartan',
                                  fontSize: 13*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 0.92*ffem/fem,
                                  letterSpacing: -0.3100000024*fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                              TextSpan(
                                text: '\n\nFélicitations à Mohamed Traoré pour son excellente performance ! Votre conduite sûre et responsable ainsi que votre professionnalisme sont très appréciés. Continuez votre excellent travail pour des trajets agréables et en toute sécurité avec Sirasafe.\n\nL\'équipe Sirasafe',
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // chauffeurmohamedtraornotegloba (160:6491)
                    left: 29*fem,
                    top: 31.5*fem,
                    child: Align(
                      child: SizedBox(
                        width: 331*fem,
                        height: 132*fem,
                        child: RichText(
                          text: TextSpan(
                            style: SafeGoogleFont (
                              'League Spartan',
                              fontSize: 13*ffem,
                              fontWeight: FontWeight.w400,
                              height: 0.92*ffem/fem,
                              letterSpacing: -0.3100000024*fem,
                              color: Color(0xff000000),
                            ),
                            children: [
                              TextSpan(
                                text: 'Chauffeur : Mohamed Traoré \nNote Globale : ⭐⭐⭐⭐⭐ (5 étoiles)\n',
                                style: SafeGoogleFont (
                                  'League Spartan',
                                  fontSize: 13*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 0.92*ffem/fem,
                                  letterSpacing: -0.3100000024*fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                              TextSpan(
                                text: '\n\nFélicitations à Mohamed Traoré pour son excellente performance ! Votre conduite sûre et responsable ainsi que votre professionnalisme sont très appréciés. Continuez votre excellent travail pour des trajets agréables et en toute sécurité avec Sirasafe.\n\nL\'équipe Sirasafe',
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                ],

              ),


            )
          ],

        ),

      ),
    );
  }
}
