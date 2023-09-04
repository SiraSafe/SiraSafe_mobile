
import 'package:flutter/material.dart';
import '../../homePage/botom_widget.dart';
import '../../homePage/conducteur/homeConducteur.dart';
import '../../utils/utils.dart';
import '../CustomTextField.dart';
import '../Inscription/inscription.dart';
import '../mdpOblie/mdp_oublie.dart';
import 'googleConnection/googleConnect.dart';
import 'googleConnection/googleSign.dart';

class PageConnection extends StatelessWidget {
  final TextEditingController _telephoneController = TextEditingController();
  final TextEditingController _motdpassController = TextEditingController();

  PageConnection({super.key});

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
                  "Se Connecter",
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
                height: 20,
              ),
              forgetPassword(context),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BottomNavBar()),
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
        const Text("pas encore inscrit?",
            style: TextStyle(color: Color(0xff205375))),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PageInscription()));
          },
          child: const Text(
            " Inscrivez-vous maintenant!",
            style: TextStyle(color: Color(0xfffd9e02), fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
          ),
        )
      ],
    );
  }

  Widget forgetPassword(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 35,
      alignment: Alignment.bottomRight,
      child: TextButton(
        child: const Text(
          "Mot de passe oublié?",
          style: TextStyle(color: Color(0xff205375)),
          textAlign: TextAlign.right,
        ),
        onPressed: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => MotdpassOublie()
        ),

        ),
      ),
    );
  }
}

