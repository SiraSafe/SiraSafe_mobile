
import 'package:flutter/material.dart';
import 'package:sirasafe/Auth/Connection/home_connection.dart';

import '../../../Auth/CustomTextField.dart';
import '../../../utils/utils.dart';
import '../Bottom/bottom.dart';



class PassagerFormFinal extends StatelessWidget {
  final TextEditingController _telephoneController = TextEditingController();
  final TextEditingController _motdpassController = TextEditingController();

  PassagerFormFinal({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Add your logo here
              Image.asset('assets/logo/1.png',
                width: 150, // Adjust the width as needed
                height: 150,
              ),
              SizedBox(height: 30),
              Center(
                child: Text(
                  "S'inscrire",
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
              SizedBox(height: 40,),

              CustomTextField(
                controller: _telephoneController,
                labelText: 'Telephone',
                hintText: '(+223)xx xx xx xx',
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 20),
              CustomTextField(
                controller: _motdpassController,
                labelText: 'Mot de Passe',
                hintText: '********',
                obscureText: true,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: RichText(
                  text: TextSpan(
                    style: SafeGoogleFont (
                      'League Spartan',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000),
                    ),
                    children: [
                      TextSpan(
                        text: 'En cliquant sur "S\'inscrire”, tu acceptes les ',
                      ),
                      TextSpan(
                        text: 'Règles de confidentialité',
                        style: SafeGoogleFont (
                          'League Spartan',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
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
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BottomPassager()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF219EBC), // Change the background color of the button
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
                  "Se connecter",
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
              SizedBox(
                height: 20,
              ),
              signUpOption(context),
            ],

          ),
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
            style: TextStyle(color: Color(0xFF219EBC), fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
          ),
        )
      ],
    );
  }

}
