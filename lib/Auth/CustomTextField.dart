import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final TextInputType keyboardType; // Nouveau paramètre
  final bool obscureText; // Nouveau paramètre

  CustomTextField({
    required this.controller,
    required this.labelText,
    required this.hintText,
    this.keyboardType = TextInputType.text, // Par défaut, c'est du texte
    this.obscureText = false,
    // cursorColor = Colors.grey,// Par défaut, le texte n'est pas masqué
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        fillColor: Colors.grey.withOpacity(0.2),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: const BorderSide(width: 10, style: BorderStyle.solid)),

      ),
      keyboardType: keyboardType, // Utiliser le type de clavier spécifié
      obscureText: obscureText, // Masquer le texte si nécessaire
    );
  }
}
