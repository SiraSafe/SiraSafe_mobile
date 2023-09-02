import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/utils.dart';


class PageApropos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Container(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[Color(0xe56fffe9), Color(0xd6ffc107), Color(0xff205375)]
          ),
        ),

        child: Positioned(
          left: 43 * fem,
          top: 10 * fem,
          child: Container(
            padding: EdgeInsets.fromLTRB(19*fem, 21*fem, 17*fem, 19*fem),
            width: 357*fem,
            height: 659*fem,
            decoration: BoxDecoration (
              color: Color(0xffffffff),
              borderRadius: BorderRadius.circular(50*fem),
            ),
            child: Container(

                  margin: EdgeInsets.fromLTRB(20*fem, 0*fem, 5*fem, 44*fem),
                  constraints: BoxConstraints (
                    maxWidth: 200*fem,
                  ),
                  child: RichText(
                    text: TextSpan(
                      style: SafeGoogleFont (
                        'League Spartan',
                        fontSize: 12*ffem,
                        fontWeight: FontWeight.w400,
                        height: 0.92*ffem/fem,
                        letterSpacing: -0.21*fem,
                        color: Color(0xff000000),
                      ),
                      children: [
                        TextSpan(
                          text: 'Bienvenue sur Sirasafe !\n\nNotre mission est de rendre la route plus sûre et les trajets plus agréables pour tous. Grâce à notre système de détection de mauvais comportements des conducteurs de transport en commun, nous évaluons en temps réel la performance des chauffeurs pour minimiser les risques d\'accidents.\n\nNotre dispositif collecte des données via des capteurs avancés tels que des caméras, des GPS et des capteurs de mouvement. Ces données sont ensuite traitées par notre IA, qui évalue le comportement du chauffeur et l\'état du véhicule pour assurer une conduite responsable.\nPour vous, nos passagers, nous avons également mis en place un système d\'alerte en temps réel. \n\nEn cas de détection de comportement dangereux, notre dispositif alertera immédiatement le chauffeur par le biais de LEDs et d\'un buzzer, l\'incitant à corriger son comportement et à garantir votre sécurité.\n\nChez Sirasafe, nous croyons en la transparence et la responsabilité. Vous pourrez consulter vos notes de conduite attribuées par notre système, ainsi que les commentaires pour vous aider à vous améliorer en tant que conducteur.\n\nNous avons également développé une application mobile pour vous permettre de rester informé en tout temps. Consultez les heures de départ des bus, le chauffeur affecté, et votre note en tant que chauffeur, le tout dans un seul endroit convivial.\n\nNous sommes ravis de vous accompagner dans vos trajets et de contribuer à une expérience de conduite plus sûre et plus agréable pour chacun. N\'hésitez pas à nous contacter si vous avez des questions ou des suggestions.\n\nEnsemble, nous pouvons faire de chaque trajet un voyage sécurisé et serein. Bienvenue dans la communauté Sirasafe !\nL\'équipe Sirasafe\n\n',
                        ),
                        TextSpan(
                          text: 'Téléphone: +223 XX XX XX XX\nE-mail: contactsirasafe@gmail.com\n',
                          style: SafeGoogleFont (
                            'League Spartan',
                            fontSize: 12*ffem,
                            fontWeight: FontWeight.w400,
                            height: 0.92*ffem/fem,
                            letterSpacing: -0.21*fem,
                            color: Color(0xff219ebc),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ),
          ),
        ),

    );
  }
}
