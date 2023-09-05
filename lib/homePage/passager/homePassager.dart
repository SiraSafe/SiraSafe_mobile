import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sirasafe/homePage/passager/Drawer/horaire.dart';

import '../../utils/utils.dart';
import 'Bottom/profile.dart';
import 'Drawer/top_widget.dart';

class HomePassager extends StatefulWidget {
  const HomePassager({Key? key}) : super(key: key);

  @override
  State<HomePassager> createState() => _HomePassagerState();
}

class _HomePassagerState extends State<HomePassager> {
  final TextEditingController _searchText = TextEditingController();

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
              backgroundImage: AssetImage('assets/logo/10.png'),
              radius: 20,
            ), onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileUser()),
            );

          },
          ),
        ],
      ),

      drawer: MyDrawer(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/logo/back.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HoraireBus()),
              );
            },
            style: TextButton.styleFrom (
              padding: EdgeInsets.zero,
            ),
            child: Text(
              'Consultez les horaires de bus et les chauffeurs affectés',
              textAlign: TextAlign.center,
              style: SafeGoogleFont (
                'League Spartan',
                fontSize: 30,
                fontWeight: FontWeight.w600,
                height: 0.92*ffem/fem,
                letterSpacing: -0.27*fem,
                color: Colors.white,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ),
      ),


    );
  }
}
