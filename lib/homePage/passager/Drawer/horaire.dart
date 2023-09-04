import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/utils.dart';
import '../Horaire/lundi.dart';

class HoraireBus extends StatefulWidget {
  const HoraireBus({Key? key}) : super(key: key);

  @override
  State<HoraireBus> createState() => _HoraireBusState();
}

class _HoraireBusState extends State<HoraireBus> {
  @override
  Widget build(BuildContext context) {

    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Container(
        width: double.infinity,
        child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular(30*fem),
                gradient: LinearGradient (
                  begin: Alignment(0, -1),
                  end: Alignment(0, 1),
                  colors: <Color>[Color(0xff219ebc), Color(0x00d9d9d9)],
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
                ],
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LundiPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent, // Fond du bouton transparent
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  minimumSize: Size(150, 50),
                  padding: EdgeInsets.symmetric(vertical: 25, horizontal: 16),
                  elevation: 0, // Supprimer l'ombre du bouton
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Lundi",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white, // Couleur du texte
                      ),
                    ),
                  ],
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