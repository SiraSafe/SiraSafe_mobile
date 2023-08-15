
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../homePage/passager/passagerForm1.dart';
import '../../../utils/utils.dart';
import '../../CustomTextField.dart';
import 'googlePass.dart';

class ConnectionGoogle extends StatefulWidget {
  const ConnectionGoogle({Key? key}) : super(key: key);

  @override
  State<ConnectionGoogle> createState() => _ConnectionGoogleState();
}

class _ConnectionGoogleState extends State<ConnectionGoogle> {
  TextEditingController _telephoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 30,),
              Container(
                // connexioneym (30:432)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 20*fem),
                child: Text(
                  'Connexion',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont (
                    'League Spartan',
                    fontSize: 36*ffem,
                    fontWeight: FontWeight.w800,
                    height: 0.6666666667*ffem/fem,
                    color: Color(0xff205375),
                  ),
                ),
              ),
              Container(
                // accderlapplicationsirasafeM7V (30:433)
                margin: EdgeInsets.fromLTRB(13*fem, 0*fem, 0*fem, 119.5*fem),
                child: Text(
                  'Accéder à l’application SiraSafe',
                  style: SafeGoogleFont (
                    'League Spartan',
                    fontSize: 24*ffem,
                    fontWeight: FontWeight.w400,
                    height: 1*ffem/fem,
                    color: Color(0xff205375),
                  ),
                ),
              ),


              CustomTextField(

                controller: _telephoneController,
                labelText: 'Telephone ou Email',
                hintText: '(+223)xx xx xx xx',
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.fromLTRB(13*fem, 0*fem, 0*fem, 20*fem),
                child: RichText(
                  text: TextSpan(
                    style: SafeGoogleFont (
                      'League Spartan',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      height: 1.1538461538*ffem/fem,
                      letterSpacing: -0.400000006*fem,
                      color: Color(0xff000000),
                    ),
                    children: [
                      TextSpan(
                        text: 'Pour continuer, Google partagera votre nom, votre adresse e-mail, vos préférences linguistiques et votre photo de profil avec SiraSafe. Avant d\'utiliser l\'appli SiraSafe, vous pouvez consulter ses',
//
                      ),
                      TextSpan(
                        text: 'Règles de confidentialité',
                        style: SafeGoogleFont (
                          'League Spartan',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          height: 1.1538461538*ffem/fem,
                          letterSpacing: -0.400000006*fem,
                          color: Color(0xff02a2fd),
                        ),
                      ),
                      TextSpan(
                        text: ' de SiraSafe et ses ',
                      ),
                      TextSpan(
                        text: 'Conditions d\'utilisation',
                        style: SafeGoogleFont (
                          'League Spartan',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          height: 1.1538461538*ffem/fem,
                          letterSpacing: -0.400000006*fem,
                          color: Color(0xff02a2fd),
                        ),
                      ),
                      TextSpan(
                        text: '.\n',
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                // autogroupodpuFR9 (B3YBfRMsjkpgCNbruQodPu)
                margin: EdgeInsets.fromLTRB(20*fem, 0*fem, 20*fem, 0*fem),
                width: double.infinity,
                height: 21*fem,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PassagerForm()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:  Color(0xff205375), // Change the background color of the button
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),

                        ),
                        minimumSize: Size(150, 50), // Set the minimum size of the button
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 25), // Set the padding of the button
                        elevation: 5, // Change the elevation of the button

                      ),

                      child: Text("Retour",
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'League Spartan',
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          // height: 15,
                          color: Colors.white,
                        ),
                      ),

                    ),
                    SizedBox(height: 20,),
                  Padding(
                     padding: EdgeInsets.symmetric(horizontal: 20),),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PassGoogle()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:  Color(0xff205375), // Change the background color of the button
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),

                        ),
                        minimumSize: Size(150, 50), // Set the minimum size of the button
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 25), // Set the padding of the button
                        elevation: 5, // Change the elevation of the button

                      ),

                      child: Text("Suivant",
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
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

            ],
          ),

      ),
    );
  }

}