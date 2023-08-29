import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/utils.dart';


class PrivacyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Container(
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
          padding: EdgeInsets.fromLTRB(0*fem, 6*fem, 0*fem, 52*fem),
          width: 296*fem,
          height: 36*fem,
          decoration: BoxDecoration (
            color: Color(0xffffffff),
            borderRadius: BorderRadius.circular(30*fem),
          ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupnzsmqWo (B3Y5bm8VeMNZBKdPGANZsM)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 95*fem),
                          width: 396*fem,
                          height: 36*fem,
                          child: Image.asset(
                            'assets/logo/1.png',
                            width: 396*fem,
                            height: 36*fem,
                          ),
                        ),
                        Container(
                          // politiquedeconfidentialitbienv (160:3124)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 44*fem),
                          constraints: BoxConstraints (
                            maxWidth: 327*fem,
                          ),
                          child: RichText(
                            text: TextSpan(
                              style: SafeGoogleFont (
                                'League Spartan',
                                fontSize: 13*ffem,
                                fontWeight: FontWeight.w400,
                                height: 0.9200000029*ffem/fem,
                                letterSpacing: -0.195*fem,
                                color: Color(0xff205375),
                              ),
                              children: [
                                TextSpan(
                                  text: 'Politique de Confidentialité\nBienvenue sur l\'application Sirasafe !\nDonnées Collectées Lorsque vous utilisez l\'application Sirasafe, nous collectons des données personnelles telles que votre nom, adresse e-mail et localisation GPS. Ces informations sont nécessaires pour vous fournir nos services de sécurité routière.\nUtilisation des Données Nous utilisons vos données personnelles pour améliorer notre application et vous fournir une expérience de sécurité routière personnalisée. Vos informations sont traitées de manière sécurisée et conformément aux lois applicables sur la protection des données.\nPartage des Données Vos données personnelles ne seront partagées avec des tiers que dans le but de vous fournir nos services de sécurité routière ou pour respecter les obligations légales.\nSécurité des Données Nous prenons des mesures de sécurité appropriées pour protéger vos données personnelles contre tout accès non autorisé ou utilisation abusive.\nVos Droits Vous avez le droit d\'accéder, de rectifier ou de supprimer vos données personnelles. Pour exercer ces droits ou pour toute question concernant notre Politique de Confidentialité, contactez-nous à l\'adresse ',
                                  style: SafeGoogleFont (
                                    'League Spartan',
                                    fontSize: 13*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 0.92*ffem/fem,
                                    letterSpacing: -0.195*fem,
                                    color: Color(0xff205375),
                                  ),
                                ),
                                TextSpan(
                                  text: 'sirasafe@gmail.com',
                                  style: SafeGoogleFont (
                                    'League Spartan',
                                    fontSize: 13*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 0.92*ffem/fem,
                                    letterSpacing: -0.195*fem,
                                    decoration: TextDecoration.underline,
                                    color: Color(0xff205375),
                                    decorationColor: Color(0xff205375),
                                  ),
                                ),
                                TextSpan(
                                  text: '.\nConditions d\'Utilisation\nBienvenue sur l\'application Sirasafe !\nAcceptation des Conditions L\'utilisation de l\'application Sirasafe signifie que vous acceptez nos Conditions d\'Utilisation. Si vous n\'acceptez pas ces conditions, veuillez ne pas utiliser notre application.\nUtilisation de l\'Application Vous vous engagez à utiliser l\'application Sirasafe conformément aux lois en vigueur et à respecter les droits d\'autrui.\nResponsabilité de l\'Utilisateur Vous êtes responsable de l\'utilisation de l\'application Sirasafe sous votre compte.\nPropriété Intellectuelle L\'application Sirasafe et son contenu sont protégés par des droits de propriété intellectuelle. Toute reproduction ou utilisation non autorisée est interdite.\nLimitation de Responsabilité Nous ne serons pas responsables des dommages résultant de l\'utilisation de l\'application Sirasafe.\nModification des Conditions Nous pouvons modifier ces Conditions d\'Utilisation à tout moment. Les modifications seront publiées dans l\'application. En continuant à utiliser notre application après ces modifications, vous acceptez les nouvelles conditions.\nPour toute assistance ou question concernant l\'application Sirasafe, contactez-nous à l\'adresse ',
                                  style: SafeGoogleFont (
                                    'League Spartan',
                                    fontSize: 13*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 0.92*ffem/fem,
                                    letterSpacing: -0.195*fem,
                                    color: Color(0xff205375),
                                  ),
                                ),
                                TextSpan(
                                  text: 'sirasafe@gmail.com',
                                  style: SafeGoogleFont (
                                    'League Spartan',
                                    fontSize: 13*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 0.92*ffem/fem,
                                    letterSpacing: -0.195*fem,
                                    decoration: TextDecoration.underline,
                                    color: Color(0xff205375),
                                    decorationColor: Color(0xff205375),
                                  ),
                                ),
                                TextSpan(
                                  text: '.\nNous vous remercions d\'utiliser Sirasafe pour des trajets plus sûrs et sereins !\n\n',
                                  style: SafeGoogleFont (
                                    'League Spartan',
                                    fontSize: 13*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 0.92*ffem/fem,
                                    letterSpacing: -0.195*fem,
                                    color: Color(0xff205375),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          // autogroupk89mKJ7 (B3Y5fqr2YqX1FYwsVpk89m)
                          margin: EdgeInsets.fromLTRB(29*fem, 0*fem, 35*fem, 0*fem),
                          width: double.infinity,
                          height: 24*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // boutonseconnecter2TR (160:3286)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 132*fem, 0*fem),
                                child: TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom (
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: Container(
                                    width: 97*fem,
                                    height: double.infinity,
                                    decoration: BoxDecoration (
                                      color: Color(0xff205375),
                                      borderRadius: BorderRadius.circular(100*fem),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x3f000000),
                                          offset: Offset(0*fem, 4*fem),
                                          blurRadius: 2*fem,
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Je refuse',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'League Spartan',
                                          fontSize: 20*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2*ffem/fem,
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                // boutonseconnecterDH1 (160:3284)
                                width: 97*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  color: Color(0xff205375),
                                  borderRadius: BorderRadius.circular(100*fem),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x3f000000),
                                      offset: Offset(0*fem, 4*fem),
                                      blurRadius: 2*fem,
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    'J’accepte',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'League Spartan',
                                      fontSize: 20*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2*ffem/fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
        ),
      ),
                  );
  }
}

          // Container(
          //   child: Positioned(
          //     left: 43 * fem,
          //     top: 115 * fem,
          //     child: Align(
          //       child: SizedBox(
          //         width: 320 * fem,
          //         height: 56 * fem,
          //         child: SingleChildScrollView(
          //           child: RichText(
          //             text: TextSpan(
          //               style: SafeGoogleFont (
          //                 'League Spartan',
          //                 fontSize: 13*ffem,
          //                 fontWeight: FontWeight.w400,
          //                 height: 0.9200000029*ffem/fem,
          //                 letterSpacing: -0.195*fem,
          //                 color: Color(0xff205375),
          //               ),
          //               children: [
          //                 TextSpan(
          //                   text: 'Politique de Confidentialité\nBienvenue sur l\'application Sirasafe !\nDonnées Collectées Lorsque vous utilisez l\'application Sirasafe, nous collectons des données personnelles telles que votre nom, adresse e-mail et localisation GPS. Ces informations sont nécessaires pour vous fournir nos services de sécurité routière.\nUtilisation des Données Nous utilisons vos données personnelles pour améliorer notre application et vous fournir une expérience de sécurité routière personnalisée. Vos informations sont traitées de manière sécurisée et conformément aux lois applicables sur la protection des données.\nPartage des Données Vos données personnelles ne seront partagées avec des tiers que dans le but de vous fournir nos services de sécurité routière ou pour respecter les obligations légales.\nSécurité des Données Nous prenons des mesures de sécurité appropriées pour protéger vos données personnelles contre tout accès non autorisé ou utilisation abusive.\nVos Droits Vous avez le droit d\'accéder, de rectifier ou de supprimer vos données personnelles. Pour exercer ces droits ou pour toute question concernant notre Politique de Confidentialité, contactez-nous à l\'adresse ',
          //                   style: SafeGoogleFont (
          //                     'League Spartan',
          //                     fontSize: 13*ffem,
          //                     fontWeight: FontWeight.w400,
          //                     height: 0.92*ffem/fem,
          //                     letterSpacing: -0.195*fem,
          //                     color: Color(0xff205375),
          //                   ),
          //                 ),
          //                 TextSpan(
          //                   text: 'sirasafe@gmail.com',
          //                   style: SafeGoogleFont (
          //                     'League Spartan',
          //                     fontSize: 13*ffem,
          //                     fontWeight: FontWeight.w400,
          //                     height: 0.92*ffem/fem,
          //                     letterSpacing: -0.195*fem,
          //                     decoration: TextDecoration.underline,
          //                     color: Color(0xff205375),
          //                     decorationColor: Color(0xff205375),
          //                   ),
          //                 ),
          //                 TextSpan(
          //                   text: '.\nConditions d\'Utilisation\nBienvenue sur l\'application Sirasafe !\nAcceptation des Conditions L\'utilisation de l\'application Sirasafe signifie que vous acceptez nos Conditions d\'Utilisation. Si vous n\'acceptez pas ces conditions, veuillez ne pas utiliser notre application.\nUtilisation de l\'Application Vous vous engagez à utiliser l\'application Sirasafe conformément aux lois en vigueur et à respecter les droits d\'autrui.\nResponsabilité de l\'Utilisateur Vous êtes responsable de l\'utilisation de l\'application Sirasafe sous votre compte.\nPropriété Intellectuelle L\'application Sirasafe et son contenu sont protégés par des droits de propriété intellectuelle. Toute reproduction ou utilisation non autorisée est interdite.\nLimitation de Responsabilité Nous ne serons pas responsables des dommages résultant de l\'utilisation de l\'application Sirasafe.\nModification des Conditions Nous pouvons modifier ces Conditions d\'Utilisation à tout moment. Les modifications seront publiées dans l\'application. En continuant à utiliser notre application après ces modifications, vous acceptez les nouvelles conditions.\nPour toute assistance ou question concernant l\'application Sirasafe, contactez-nous à l\'adresse ',
          //                   style: SafeGoogleFont (
          //                     'League Spartan',
          //                     fontSize: 13*ffem,
          //                     fontWeight: FontWeight.w400,
          //                     height: 0.92*ffem/fem,
          //                     letterSpacing: -0.195*fem,
          //                     color: Color(0xff205375),
          //                   ),
          //                 ),
          //                 TextSpan(
          //                   text: 'sirasafe@gmail.com',
          //                   style: SafeGoogleFont (
          //                     'League Spartan',
          //                     fontSize: 13*ffem,
          //                     fontWeight: FontWeight.w400,
          //                     height: 0.92*ffem/fem,
          //                     letterSpacing: -0.195*fem,
          //                     decoration: TextDecoration.underline,
          //                     color: Color(0xff205375),
          //                     decorationColor: Color(0xff205375),
          //                   ),
          //                 ),
          //                 TextSpan(
          //                   text: '.\nNous vous remercions d\'utiliser Sirasafe pour des trajets plus sûrs et sereins !\n\n',
          //                   style: SafeGoogleFont (
          //                     'League Spartan',
          //                     fontSize: 13*ffem,
          //                     fontWeight: FontWeight.w400,
          //                     height: 0.92*ffem/fem,
          //                     letterSpacing: -0.195*fem,
          //                     color: Color(0xff205375),
          //                   ),
          //                 ),
          //               ],
          //             ),
          //           ),
          //         ),
          //       ),
          //     ),
          //   ),
          // ),


