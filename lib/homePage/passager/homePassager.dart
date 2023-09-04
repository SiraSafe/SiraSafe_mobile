import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
            image: AssetImage('assets/logo/back.jpeg'), // Remplacez 'votre_image.jpg' par le chemin de votre image de fond
            fit: BoxFit.cover, // Vous pouvez ajuster ceci en fonction de vos besoins
          ),
        ),
        child: Center(
          // Placez ici le contenu de votre page
          // Par exemple, un ListView, Column, etc.
        ),
      ),


    );
  }
}
