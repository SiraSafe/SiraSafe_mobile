import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sirasafe/Auth/CustomTextField.dart';

import '../../utils/color.dart';

class MotdpassOublie extends StatefulWidget {
  const MotdpassOublie({Key? key}) : super(key: key);

  @override
  State<MotdpassOublie> createState() => _MotdpassOublieState();
}

class _MotdpassOublieState extends State<MotdpassOublie> {
  final TextEditingController _telephoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Réinitialiser le Mot de Passe",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color:  Color(0xff205375)),
        ),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[Color(0xe56fffe9), Color(0xff205375)]
            ),
          ),
          child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 120, 20, 0),
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 20,
                    ),
                    CustomTextField(
                      controller: _telephoneController,
                      labelText: 'Telephone',
                      hintText: '(+223)xx xx xx xx',
                      keyboardType: TextInputType.number,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // firebaseUIButton(context, "Réinitialiser", () {
                    //   FirebaseAuth.instance
                    //       .sendPasswordResetEmail(email: _telephoneController.text)
                    //       .then((value) => Navigator.of(context).pop());
                    // })
                  ],
                ),
              ))),
    );
  }
}

