
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Connection/home_connection.dart';
import '../CustomTextField.dart';

class PageInscription extends StatelessWidget {
  final TextEditingController _prenomController = TextEditingController();
  final TextEditingController _nomController = TextEditingController();
  //final TextEditingController _emailController = TextEditingController();
  final TextEditingController _telephoneController = TextEditingController();
  final TextEditingController _motdpassController = TextEditingController();

  PageInscription({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextField(
              controller: _prenomController,
              labelText: 'Prenom',
              hintText: 'Entrez votre Prenom',
              //keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 20),
            CustomTextField(
              controller: _nomController,
              labelText: 'Nom',
              hintText: 'Entrez votre Nom',
              //keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 20),
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
            ElevatedButton(
              onPressed: () {
                // Perform any validation or data processing here
                // For example, you can check if the email is valid
                // and then navigate to the next page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PageConnection()),
                );
              },
              child: Text('S\inscrire'),
            ),
          ],
        ),
      ),
    );
  }
}