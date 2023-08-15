import 'package:flutter/material.dart';

import '../Auth/Connection/home_connection.dart';
import '../utils/utils.dart';

class WelcomePage extends StatelessWidget {
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
            Image.asset(
              "assets/logo/logo.png",
              width: 200,
              height: 200,
            ),
            SizedBox(height: 60),

            // SizedBox(height: 30),
            Center(
              child: Text(
                'Connectez-vous pour commencer!',
                style: SafeGoogleFont(
                  'League Spartan',
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  color: Color(0xff205375),
                  // fontSize: 24,  // Change the font size as per your preference
                  // fontWeight: FontWeight.bold, // You can use other font weights too
                  // color: Colors.blue, // Change the color as per your preference
                  // fontStyle: FontStyle.italic
                ),
              ),
            ),

            SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PageConnection()),
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
          ],
        ),
      ),
    );
  }
}
