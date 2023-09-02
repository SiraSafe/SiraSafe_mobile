import 'package:flutter/material.dart';
import 'package:sirasafe/homePage/conducteur/drawer_element/trajets.dart';
import 'package:sirasafe/top_widget.dart';
import '../../bottomElements/profile.dart';
import '../../utils/utils.dart';
import '../botom_widget.dart';
import 'drawer_element/bilanConduite.dart';


class HomeConducteur extends StatefulWidget {
  HomeConducteur({Key? key}) : super(key: key);

  @override
  _HomeConducteurState createState() => _HomeConducteurState();
}

class _HomeConducteurState extends State<HomeConducteur> {
  final TextEditingController _searchText = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _currentIndex = 1; // Set initial index to the home icon

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xff205375),
        title: TextFormField(
          textAlign: TextAlign.start,
          controller: _searchText,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            prefixIcon: const Icon(Icons.search),
            suffixIcon: InkWell(
              child: const Icon(Icons.close),
              onTap: () {
                _searchText.clear();
              },
            ),
            hintText: 'Rechercher...',
            contentPadding: const EdgeInsets.all(0),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: CircleAvatar(
              backgroundImage: AssetImage('assets/logo/k.jpeg'),
              radius: 20,
            ), onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
            );

          },
          ),
        ],
      ),

      drawer: AppDrawer(),
      body: Container(
        width: double.infinity,
        height: 200 * fem,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo/1.png',
              height: 150,
              width: 150,
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => PageBilan()),
                );
              },
              child: Text(
                'Découvrez votre Bilan de Conduite : \nConsultez les Alertes',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationColor: Color(0xff205375),
                  decorationThickness: 1,
                  fontSize: 13 * ffem,
                  fontWeight: FontWeight.w400,
                  height: 0.92 * ffem / fem,
                  letterSpacing: -0.27 * fem,
                  color: Color(0xff205375),
                ),
              ),

            ),
            SizedBox(height: 10),
            Text(
              'Derniers trajets',
              style: SafeGoogleFont (
                'League Spartan',
                fontSize: 13*ffem,
                fontWeight: FontWeight.w400,
                height: 0.92*ffem/fem,
                letterSpacing: -0.24*fem,
                color: Color(0xff000000),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              color: Colors.grey[200],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bamako - Ségou',
                    style: SafeGoogleFont (
                      'League Spartan',
                      fontSize: 13*ffem,
                      fontWeight: FontWeight.w400,
                      height: 0.92*ffem/fem,
                      letterSpacing: -0.195*fem,
                      color: Color(0xff000000),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '30 juil. 2023',
                    style: SafeGoogleFont (
                      'League Spartan',
                      fontSize: 10*ffem,
                      fontWeight: FontWeight.w400,
                      height: 0.92*ffem/fem,
                      letterSpacing: -0.165*fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              color: Colors.grey[200],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bamako - Mopti',
                    style: SafeGoogleFont (
                      'League Spartan',
                      fontSize: 13*ffem,
                      fontWeight: FontWeight.w400,
                      height: 0.92*ffem/fem,
                      letterSpacing: -0.195*fem,
                      color: Color(0xff000000),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '20 Jan. 2023',
                    style: SafeGoogleFont (
                      'League Spartan',
                      fontSize: 10*ffem,
                      fontWeight: FontWeight.w400,
                      height: 0.92*ffem/fem,
                      letterSpacing: -0.165*fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              color: Colors.grey[200],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bamako - Ségou',
                    style: SafeGoogleFont (
                      'League Spartan',
                      fontSize: 13*ffem,
                      fontWeight: FontWeight.w400,
                      height: 0.92*ffem/fem,
                      letterSpacing: -0.195*fem,
                      color: Color(0xff000000),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '30 juil. 2023',
                    style: SafeGoogleFont (
                      'League Spartan',
                      fontSize: 10*ffem,
                      fontWeight: FontWeight.w400,
                      height: 0.92*ffem/fem,
                      letterSpacing: -0.165*fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              color: Colors.grey[200],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bamako - Kayes',
                    style: SafeGoogleFont (
                      'League Spartan',
                      fontSize: 13*ffem,
                      fontWeight: FontWeight.w400,
                      height: 0.92*ffem/fem,
                      letterSpacing: -0.195*fem,
                      color: Color(0xff000000),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '10 juil. 2023',
                    style: SafeGoogleFont (
                      'League Spartan',
                      fontSize: 10*ffem,
                      fontWeight: FontWeight.w400,
                      height: 0.92*ffem/fem,
                      letterSpacing: -0.165*fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 35,
              alignment: Alignment.bottomRight,
              child: TextButton(
                child: Text(
                  "Voir plus",
                  style: TextStyle(color: Color(0xff205375)),
                  textAlign: TextAlign.right,
                ),
                onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PageTrajet()
                ),

                ),
              ),
            ),

          ],
        ),
      ),




    );
  }
}