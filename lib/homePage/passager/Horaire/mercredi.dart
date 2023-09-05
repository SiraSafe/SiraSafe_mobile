import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/utils.dart';
import '../horaireWidgets.dart';

class MercrediPage extends StatefulWidget {
  const MercrediPage({Key? key}) : super(key: key);

  @override
  State<MercrediPage> createState() => _MercrediPageState();
}

class _MercrediPageState extends State<MercrediPage> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(

      body: Container(
        color:  Color(0xff205375),
        child: Column(
          children: [
            SizedBox(height: 60,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30 * fem),
                gradient: LinearGradient(
                    begin: Alignment(0, -1),
                    end: Alignment(0, 1),
                    colors: <Color>[Color(0xe56fffe9), Color(0xff205375)]
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3f000000),
                    offset: Offset(0 * fem, 4 * fem),
                    blurRadius: 2 * fem,
                  ),
                  BoxShadow(
                    color: Color(0x3f000000),
                    offset: Offset(0 * fem, 4 * fem),
                    blurRadius: 2 * fem,
                  ),
                ],
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MercrediPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent, // Fond du bouton transparent
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  minimumSize: Size(150, 50),
                  padding: EdgeInsets.symmetric(vertical: 35, horizontal: 16),
                  elevation: 0, // Supprimer l'ombre du bouton
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Mercredi",
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
            SizedBox(height: 20,),
            Container(
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    'Avec SiraSafe, visualisez les horaires de la semaine...',
                    textStyle: SafeGoogleFont (
                      'League Spartan',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                    speed: Duration(milliseconds: 100),
                  ),
                ],
                onTap: () {
                },
                repeatForever: true,
              ),
            ),

            SizedBox(height: 30,),
            Row(
              children: [
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Text("Trajet",
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'League Spartan',
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Text("Chauffeur",
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'League Spartan',
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Text("Heure",
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'League Spartan',
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.5,
              child: ListView.builder(
                  itemCount: 15,
                  itemBuilder: (context,index){
                    return HoraireWidget(heure: "14:00",profilImage: "https://bleachweb.com/cdn/shop/articles/itachi-uchiha-10-faits-sur-itachi-uchiha-255446_1024x1024.jpg?v=1682339349",
                      userProfil: "Ibrahim Kone",regions: "Gao-Bamako",);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
