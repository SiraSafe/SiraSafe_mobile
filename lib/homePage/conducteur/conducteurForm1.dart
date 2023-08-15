
import 'package:flutter/material.dart';
import '../../Auth/Connection/googleConnection/googleConnect.dart';
import '../../Auth/Connection/googleConnection/googleSign.dart';
import '../../Auth/Connection/home_connection.dart';
import '../../Auth/CustomTextField.dart';
import '../../utils/utils.dart';
import 'homeConducteur.dart';


class ConducteurForm extends StatelessWidget {
  final TextEditingController _telephoneController = TextEditingController();
  final TextEditingController _motdpassController = TextEditingController();

  ConducteurForm({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      // appBar: AppBar(title: Text('First Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 40,),
            Container(
              // connexioneym (30:432)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 20*fem),
              child: Text(
                'Se Connecter',
                textAlign: TextAlign.center,
                style: SafeGoogleFont (
                  'League Spartan',
                  fontSize: 30*ffem,
                  fontWeight: FontWeight.w800,
                  height: 0.6666666667*ffem/fem,
                  color: Color(0xff205375),
                ),
              ),
            ),
            SizedBox(height: 20,),
            GoogleSignInButton(
              onPressed: () {
                // Implement Google sign-in logic here
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ConnectionGoogle()),
                );
                // For example, use Firebase Authentication with Google
              },
            ),
            SizedBox(
              height: 20,
            ),
            Text("OU",
              textAlign: TextAlign.center,
              style: SafeGoogleFont (
                'League Spartan',
                fontSize: 20,
                fontWeight: FontWeight.w400,
                // height: 15,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10,
            ),

            CustomTextField(
              controller: _telephoneController,
              labelText: 'Telephone',
              hintText: 'Entrez votre Telephone ou Email',
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            CustomTextField(
              controller: _motdpassController,
              labelText: 'Mot de Passe',
              hintText: 'Entrez votre Mot de passe',
              obscureText: true,
            ),
            SizedBox(
              height: 10,
            ),

            Container(
              child: RichText(
                text: TextSpan(
                  style: SafeGoogleFont (
                    'League Spartan',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    // height: 1.1538461538*ffem/fem,
                    // letterSpacing: -0.400000006*fem,
                    color: Color(0xff000000),
                  ),
                  children: [
                    TextSpan(
                      text: 'En cliquant sur "Continuer avec google”, tu acceptes les ',
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
            SizedBox(
              height: 10,
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeConducteur()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xfffd9e02), // Change the background color of the button
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),

                ),
                minimumSize: Size(150, 50), // Set the minimum size of the button
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 25), // Set the padding of the button
                elevation: 5, // Change the elevation of the button

              ),

              child: Text("Connection",
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
            SizedBox(
              height: 20,
            ),
            signUpOption(context),
          ],

        ),
      ),
    );
  }

  Row signUpOption(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("T'as un compte?",
            style: TextStyle(color: Color(0xff205375))),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PageConnection()));
          },
          child: const Text(
            " Se connecter!",
            style: TextStyle(color: Color(0xfffd9e02), fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
          ),
        )
      ],
    );
  }

}

