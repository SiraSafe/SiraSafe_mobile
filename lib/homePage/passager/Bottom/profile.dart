import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/utils.dart';
import '../../welcomePage.dart';



class ProfileUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePage(),
    );

  }
}


const nom = "Alpha Bane";
const email = "alphabane@gmail.com";
const phone = "+223 82001123";


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[Color(0xe56fffe9), Color(0xd6ffc107), Color(0xff205375)]
        ),
      ),
          child: SafeArea(
            minimum: const EdgeInsets.only(top: 100),
            child: Column(
            children: <Widget>[
            CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/logo/k.jpeg'),
            ),
              Text(
                "Aplha Bane",
                style: SafeGoogleFont(
                  'League Spartan',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  // height: 15,
                  color: Colors.white,
                ),
              ),
              Text(
                "Chauffeur",
                style: SafeGoogleFont(
                  'League Spartan',
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  // height: 15,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 20,
                width: 200,
                child: Divider(
                  color: Colors.white,
                ),
              ),


              InfoCard(text: nom, icon: Icons.person, onPressed: () async {}),
              InfoCard(text: phone, icon: Icons.phone, onPressed: () async {}),
              // InfoCard(
              //     text: location,
              //     icon: Icons.location_city,
              //     onPressed: () async {}),
              InfoCard(text: email, icon: Icons.email, onPressed: () async {}),
              SizedBox(height: 20,),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WelcomePage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(
                      0xff205375), // Change the background color of the button
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  minimumSize:
                  Size(150, 50), // Set the minimum size of the button
                  padding: EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 25), // Set the padding of the button
                  elevation: 5, // Change the elevation of the button
                ),
                child: Text(
                  "Deconecter",
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont(
                    'League Spartan',
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    // height: 15,
                    color: Colors.white,
                  ),
                ),
              ),
            ],

          ),

        ),
        ),
    );
  }
}
class InfoCard extends StatelessWidget {
  // the values we need
  final String text;
  final IconData icon;
  final VoidCallback onPressed; // Use VoidCallback type

  InfoCard(
      {required this.text, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        color: Colors.white,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        child: ListTile(
          leading: Icon(
            icon,
            color: Color(0xff205375),
          ),
          title: Text(
            text,
            style: TextStyle(
                color: Color(0xff205375),
                fontSize: 20,
                fontFamily: 'League Spartan'),
          ),
        ),
      ),
    );
  }
}










//   Widget build(BuildContext context) {
//     double baseWidth = 390;
//     double fem = MediaQuery.of(context).size.width / baseWidth;
//     double ffem = fem * 0.97;
//
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment.topCenter,
//           end: Alignment.bottomCenter,
//           colors: [Color(0xff205375), Color(0xff219ebc)],
//         ),
//       ),
//       child: Stack(
//         children: [
//           Positioned(
//             // rectangle127w5q (183:2404)
//             left: 331*fem,
//             top: 676*fem,
//             child: Align(
//               child: SizedBox(
//                 width: 36.01*fem,
//                 height: 37*fem,
//                 child: Container(
//                   decoration: BoxDecoration (
//                     borderRadius: BorderRadius.circular(100*fem),
//                     color: Color(0x16219ebc),
//                     image: DecorationImage (
//                       fit: BoxFit.cover,
//                       image: AssetImage (
//                         'assets/images/rectangle-127-bg.png',
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
//             // mohamedtraore8f (183:1984)
//             left: 101*fem,
//             top: 30*fem,
//             child: Align(
//               child: SizedBox(
//                 width: 237*fem,
//                 height: 30*fem,
//                 child: Text(
//                   'Mohamed Traoré',
//                   style: SafeGoogleFont (
//                     'League Spartan',
//                     fontSize: 32*ffem,
//                     fontWeight: FontWeight.w800,
//                     height: 0.92*ffem/fem,
//                     letterSpacing: -0.48*fem,
//                     color: Color(0xffffffff),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
//             // boutonseconnecterJDD (183:2017)
//             left: 126*fem,
//             top: 426*fem,
//             child: Container(
//               width: 150*fem,
//               height: 50*fem,
//               decoration: BoxDecoration (
//                 borderRadius: BorderRadius.circular(100*fem),
//                 gradient: LinearGradient (
//                   begin: Alignment(0, -1),
//                   end: Alignment(0, 1),
//                   colors: <Color>[Color(0xff219ebc), Color(0xff6fffe9)],
//                   stops: <double>[0, 1],
//                 ),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Color(0x3f000000),
//                     offset: Offset(0*fem, 4*fem),
//                     blurRadius: 2*fem,
//                   ),
//                 ],
//               ),
//               child: Center(
//                 child: Text(
//                   'Se déconnecter',
//                   textAlign: TextAlign.center,
//                   style: SafeGoogleFont (
//                     'League Spartan',
//                     fontSize: 20*ffem,
//                     fontWeight: FontWeight.w600,
//                     height: 1.2*ffem/fem,
//                     color: Color(0xffffffff),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
//             // group60rtw (183:1986)
//             left: 13*fem,
//             top: 120.0512695312*fem,
//             child: Container(
//               width: 370*fem,
//               height: 172.14*fem,
//               child: Stack(
//                 children: [
//                   Positioned(
//                     // rectangle1179NF (183:1987)
//                     left: 0*fem,
//                     top: 0*fem,
//                     child: Align(
//                       child: SizedBox(
//                         width: 370*fem,
//                         height: 156*fem,
//                         child: Container(
//                           decoration: BoxDecoration (
//                             borderRadius: BorderRadius.circular(30*fem),
//                             gradient: LinearGradient (
//                               begin: Alignment(0, -1),
//                               end: Alignment(0, 1),
//                               colors: <Color>[Color(0xff6fffe9), Color(0x99ffd233), Color(0x4f205375)],
//                               stops: <double>[0, 0.453, 1],
//                             ),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Color(0x3f000000),
//                                 offset: Offset(0*fem, 4*fem),
//                                 blurRadius: 2*fem,
//                               ),
//                               BoxShadow(
//                                 color: Color(0x3f000000),
//                                 offset: Offset(0*fem, 4*fem),
//                                 blurRadius: 2*fem,
//                               ),
//                               BoxShadow(
//                                 color: Color(0x3f000000),
//                                 offset: Offset(0*fem, 4*fem),
//                                 blurRadius: 2*fem,
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     // contactJuM (183:1988)
//                     left: 12.703125*fem,
//                     top: 12.5194702148*fem,
//                     child: Container(
//                       padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 36.77*fem),
//                       width: 339.11*fem,
//                       height: 159.62*fem,
//                       decoration: BoxDecoration (
//                         boxShadow: [
//                           BoxShadow(
//                             color: Color(0x3f000000),
//                             offset: Offset(0*fem, 4*fem),
//                             blurRadius: 2*fem,
//                           ),
//                         ],
//                       ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Container(
//                             // autogroupfg15xyu (B3Z9NQNacHk6sDyNm8fg15)
//                             margin: EdgeInsets.fromLTRB(1.36*fem, 0*fem, 0*fem, 15.99*fem),
//                             width: double.infinity,
//                             child: Row(
//                               crossAxisAlignment: CrossAxisAlignment.end,
//                               children: [
//                                 Container(
//                                   // autogroupwbnwHWP (B3Z9VuA69b7YGP3jr6wbNw)
//                                   margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 236.44*fem, 4.31*fem),
//                                   height: 21.17*fem,
//                                   child: Text(
//                                     'Éditer le profil',
//                                     style: SafeGoogleFont (
//                                       'League Spartan',
//                                       fontSize: 13*ffem,
//                                       fontWeight: FontWeight.w700,
//                                       height: 0.92*ffem/fem,
//                                       color: Color(0xffffffff),
//                                     ),
//                                   ),
//                                 ),
//                                 TextButton(
//                                   // writingLzT (183:2001)
//                                   onPressed: () {},
//                                   style: TextButton.styleFrom (
//                                     padding: EdgeInsets.zero,
//                                   ),
//                                   child: Container(
//                                     width: 20.3*fem,
//                                     height: 20*fem,
//                                     child: Image.asset(
//                                       'assets/images/writing-x47.png',
//                                       width: 20.3*fem,
//                                       height: 20*fem,
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Container(
//                             // info1CFy (183:1998)
//                             margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15.91*fem, 22.95*fem),
//                             width: double.infinity,
//                             child: Row(
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Container(
//                                   // appnameiVD (183:1999)
//                                   margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 200.2*fem, 0*fem),
//                                   child: Text(
//                                     'Email',
//                                     style: SafeGoogleFont (
//                                       'League Spartan',
//                                       fontSize: 13*ffem,
//                                       fontWeight: FontWeight.w600,
//                                       height: 0.92*ffem/fem,
//                                       letterSpacing: -0.3100000024*fem,
//                                       color: Color(0xffffffff),
//                                     ),
//                                   ),
//                                 ),
//                                 Text(
//                                   // appnameB7u (183:2000)
//                                   'amitr@gmail.com',
//                                   textAlign: TextAlign.right,
//                                   style: SafeGoogleFont (
//                                     'League Spartan',
//                                     fontSize: 13*ffem,
//                                     fontWeight: FontWeight.w600,
//                                     height: 0.92*ffem/fem,
//                                     letterSpacing: -0.3100000024*fem,
//                                     color: Color(0xffffffff),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Container(
//                             // info1sFd (183:1995)
//                             margin: EdgeInsets.fromLTRB(1.36*fem, 0*fem, 14.55*fem, 22.43*fem),
//                             width: double.infinity,
//                             child: Row(
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Container(
//                                   // appnameL9D (183:1996)
//                                   margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 178.2*fem, 0*fem),
//                                   child: Text(
//                                     'Téléphone',
//                                     style: SafeGoogleFont (
//                                       'League Spartan',
//                                       fontSize: 13*ffem,
//                                       fontWeight: FontWeight.w600,
//                                       height: 0.92*ffem/fem,
//                                       letterSpacing: -0.3100000024*fem,
//                                       color: Color(0xffffffff),
//                                     ),
//                                   ),
//                                 ),
//                                 Text(
//                                   // appnameBQj (183:1997)
//                                   '+223 76 38 74 53',
//                                   textAlign: TextAlign.right,
//                                   style: SafeGoogleFont (
//                                     'League Spartan',
//                                     fontSize: 13*ffem,
//                                     fontWeight: FontWeight.w600,
//                                     height: 0.92*ffem/fem,
//                                     letterSpacing: -0.3100000024*fem,
//                                     color: Color(0xffffffff),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//
//       ),
//
//
//     );
//   }
// }
//
