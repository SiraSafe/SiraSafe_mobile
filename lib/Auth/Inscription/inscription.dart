import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../homePage/conducteur/conducteurForm1.dart';
import '../../homePage/passager/passagerForm1.dart';
import '../../utils/utils.dart';
import '../Connection/home_connection.dart';

class PageInscription extends StatefulWidget {
  const PageInscription({Key? key}) : super(key: key);

  @override
  State<PageInscription> createState() => _PageInscriptionState();
}

class _PageInscriptionState extends State<PageInscription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Welcome to SiraSafe"),
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Add your logo here
            Image.asset('assets/logo/logo.png',
          width: 100, // Adjust the width as needed
          height: 100,
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                'Etes-Vous?',
                style: SafeGoogleFont(
                  'League Spartan',
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  color: Color(0xff205375),
                ),
              ),
            ),
            SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ConducteurForm()),
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

              child: Text("Chauffeur",
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


            SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PassagerForm()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF219EBC), // Change the background color of the button
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),

                ),
                minimumSize: Size(150, 50), // Set the minimum size of the button
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 25), // Set the padding of the button
                elevation: 5, // Change the elevation of the button

              ),

              child: Text("Passager",
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
            const SizedBox(
              height: 30,
            ),
            signUpOption()

          ],
        ),

      ),
    );
  }
  Row signUpOption() {
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

