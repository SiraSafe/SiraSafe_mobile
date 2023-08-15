import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/utils.dart';

class HomeConducteur extends StatefulWidget {
  const HomeConducteur({Key? key}) : super(key: key);

  @override
  State<HomeConducteur> createState() => _HomeConducteurState();
}

class _HomeConducteurState extends State<HomeConducteur> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // accueilchauffeurpuu (70:504)
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(50*fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogrouprayu89u (B3ahLjdCKmmQGfjVZQrayu)
              width: double.infinity,
              height: 411*fem,
              child: Stack(
                children: [
                  Positioned(
                    // rectangle24eP9 (70:505)
                    left: 0*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 390*fem,
                        height: 372*fem,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only (
                            bottomRight: Radius.circular(50*fem),
                            bottomLeft: Radius.circular(50*fem),
                          ),
                          child: Image.asset(
                            'assets/images/rectangle-24-q1h.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // statusbarWgF (70:506)
                    left: 0*fem,
                    top: 4*fem,
                    child: Align(
                      child: SizedBox(
                        width: 396*fem,
                        height: 36*fem,
                        child: Image.asset(
                          'assets/images/status-bar-v87.png',
                          width: 396*fem,
                          height: 36*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // ellipse1cjH (70:507)
                    left: 43*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 142*fem,
                        height: 147*fem,
                        child: Image.asset(
                          'assets/images/ellipse-1-P7M.png',
                          width: 142*fem,
                          height: 147*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // ellipse27vw (70:508)
                    left: 0*fem,
                    top: 170*fem,
                    child: Align(
                      child: SizedBox(
                        width: 142*fem,
                        height: 147*fem,
                        child: Image.asset(
                          'assets/images/ellipse-2-Grb.png',
                          width: 142*fem,
                          height: 147*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // ellipse3SCX (70:509)
                    left: 298*fem,
                    top: 197*fem,
                    child: Align(
                      child: SizedBox(
                        width: 142*fem,
                        height: 147*fem,
                        child: Image.asset(
                          'assets/images/ellipse-3-YET.png',
                          width: 142*fem,
                          height: 147*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // recherchexRm (70:510)
                    left: 51*fem,
                    top: 51*fem,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(9.62*fem, 7.96*fem, 5.61*fem, 5.57*fem),
                        width: 270*fem,
                        height: 39*fem,
                        decoration: BoxDecoration (
                          image: DecorationImage (
                            fit: BoxFit.cover,
                            image: AssetImage (
                              'assets/images/rectangle-11-dbV.png',
                            ),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x3f000000),
                              offset: Offset(0*fem, 4*fem),
                              blurRadius: 2*fem,
                            ),
                            BoxShadow(
                              color: Color(0x3f000000),
                              offset: Offset(0*fem, 4*fem),
                              blurRadius: 2*fem,
                            ),
                          ],
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // materialsymbolssearchXtB (70:513)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 216.1*fem, 0*fem),
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom (
                                  padding: EdgeInsets.zero,
                                ),
                                child: Container(
                                  width: 22.67*fem,
                                  height: 25.47*fem,
                                  child: Image.asset(
                                    'assets/images/material-symbols-search-Tm9.png',
                                    width: 22.67*fem,
                                    height: 25.47*fem,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              // actionQBH (70:512)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1.51*fem),
                              width: 16*fem,
                              height: 16*fem,
                              child: Image.asset(
                                'assets/images/action-jQ3.png',
                                width: 16*fem,
                                height: 16*fem,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // rechercheWVD (70:515)
                    left: 90*fem,
                    top: 64*fem,
                    child: Align(
                      child: SizedBox(
                        width: 84*fem,
                        height: 15*fem,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Text(
                            'Recherche....',
                            style: SafeGoogleFont (
                              'League Spartan',
                              fontSize: 16*ffem,
                              fontWeight: FontWeight.w400,
                              height: 0.92*ffem/fem,
                              letterSpacing: -0.24*fem,
                              color: Color(0xff205375),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // epmenu4v3 (70:516)
                    left: 8*fem,
                    top: 55*fem,
                    child: Align(
                      child: SizedBox(
                        width: 35*fem,
                        height: 29*fem,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Image.asset(
                            'assets/images/ep-menu-Hu1.png',
                            width: 35*fem,
                            height: 29*fem,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // rectangle25MeF (70:518)
                    left: 53*fem,
                    top: 354*fem,
                    child: Align(
                      child: SizedBox(
                        width: 61*fem,
                        height: 48*fem,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(15*fem),
                              color: Color(0xff219ebc),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // rectangle26pGw (70:519)
                    left: 164*fem,
                    top: 354*fem,
                    child: Align(
                      child: SizedBox(
                        width: 61*fem,
                        height: 48*fem,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(15*fem),
                              color: Color(0xffffc107),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // rectangle27hrX (70:520)
                    left: 267*fem,
                    top: 354*fem,
                    child: Align(
                      child: SizedBox(
                        width: 61*fem,
                        height: 48*fem,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(15*fem),
                              color: Color(0xff6fffe9),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // epinfofilledpgF (70:532)
                    left: 281.1240234375*fem,
                    top: 364*fem,
                    child: Align(
                      child: SizedBox(
                        width: 29.75*fem,
                        height: 28*fem,
                        child: Image.asset(
                          'assets/images/ep-info-filled-TJf.png',
                          width: 29.75*fem,
                          height: 28*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // mdibelloutline8wq (70:535)
                    left: 340*fem,
                    top: 59*fem,
                    child: Align(
                      child: SizedBox(
                        width: 24*fem,
                        height: 24*fem,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Image.asset(
                            'assets/images/mdi-bell-outline-m8s.png',
                            width: 24*fem,
                            height: 24*fem,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // carbonstarreviewe9V (70:626)
                    left: 69*fem,
                    top: 363*fem,
                    child: Align(
                      child: SizedBox(
                        width: 30*fem,
                        height: 29*fem,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Image.asset(
                            'assets/images/carbon-star-review.png',
                            width: 30*fem,
                            height: 29*fem,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // foundationalertYkf (70:631)
                    left: 180*fem,
                    top: 360*fem,
                    child: Align(
                      child: SizedBox(
                        width: 30*fem,
                        height: 30*fem,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Image.asset(
                            'assets/images/foundation-alert.png',
                            width: 30*fem,
                            height: 30*fem,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupvlqf2fq (B3aj3bx8AU2hYinGNGvLQf)
              padding: EdgeInsets.fromLTRB(17*fem, 6*fem, 0*fem, 9*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    // autogrouphwwb9kT (B3ahnoi69QL4ytc7WihWWB)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 27*fem),
                    width: 509*fem,
                    height: 172*fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // rectangle30fD1 (70:525)
                          left: 0*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              width: 327*fem,
                              height: 162*fem,
                              child: Image.asset(
                                'assets/images/rectangle-30-gBZ.png',
                                width: 327*fem,
                                height: 162*fem,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle33xxo (70:526)
                          left: 182*fem,
                          top: 5*fem,
                          child: Align(
                            child: SizedBox(
                              width: 327*fem,
                              height: 162*fem,
                              child: Image.asset(
                                'assets/images/rectangle-33-udq.png',
                                width: 327*fem,
                                height: 162*fem,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle315nX (70:527)
                          left: 3*fem,
                          top: 17*fem,
                          child: Align(
                            child: SizedBox(
                              width: 149*fem,
                              height: 153*fem,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom (
                                  padding: EdgeInsets.zero,
                                ),
                                child: Container(
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(30*fem),
                                    gradient: LinearGradient (
                                      begin: Alignment(0, -1),
                                      end: Alignment(0, 1),
                                      colors: <Color>[Color(0xff219ebc), Color(0x00d9d9d9)],
                                      stops: <double>[0, 1],
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x3f000000),
                                        offset: Offset(0*fem, 4*fem),
                                        blurRadius: 2*fem,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle347DR (70:528)
                          left: 185*fem,
                          top: 14*fem,
                          child: Align(
                            child: SizedBox(
                              width: 149*fem,
                              height: 153*fem,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom (
                                  padding: EdgeInsets.zero,
                                ),
                                child: Container(
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(30*fem),
                                    gradient: LinearGradient (
                                      begin: Alignment(0, -1),
                                      end: Alignment(0, 1),
                                      colors: <Color>[Color(0xffffd233), Color(0x00d9d9d9)],
                                      stops: <double>[0, 1],
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x3f000000),
                                        offset: Offset(0*fem, 4*fem),
                                        blurRadius: 2*fem,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // dcouvrezvotrebilandeconduiteno (70:529)
                          left: 13*fem,
                          top: 39*fem,
                          child: Align(
                            child: SizedBox(
                              width: 132*fem,
                              height: 100*fem,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom (
                                  padding: EdgeInsets.zero,
                                ),
                                child: Text(
                                  'Découvrez votre Bilan de Conduite : Notes et Commentaires du Système de Performance',
                                  style: SafeGoogleFont (
                                    'League Spartan',
                                    fontSize: 18*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 0.92*ffem/fem,
                                    letterSpacing: -0.27*fem,
                                    color: Color(0xff205375),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // alertesdelacompagnieconsultezl (70:530)
                          left: 195*fem,
                          top: 39*fem,
                          child: Align(
                            child: SizedBox(
                              width: 114*fem,
                              height: 67*fem,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom (
                                  padding: EdgeInsets.zero,
                                ),
                                child: Text(
                                  'Alertes de la Compagnie : Consultez les Avertissements',
                                  style: SafeGoogleFont (
                                    'League Spartan',
                                    fontSize: 18*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 0.92*ffem/fem,
                                    letterSpacing: -0.27*fem,
                                    color: Color(0xff205375),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle32cC7 (70:531)
                          left: 182*fem,
                          top: 19*fem,
                          child: Align(
                            child: SizedBox(
                              width: 149*fem,
                              height: 153*fem,
                              child: Image.asset(
                                'assets/images/rectangle-32-a2j.png',
                                width: 149*fem,
                                height: 153*fem,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupsn2bXK5 (B3ai2YpBy7qht1aSqVsN2b)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 26*fem, 0*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // dernierstrajetsfRH (70:546)
                          margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 195*fem, 0*fem),
                          child: Text(
                            'Derniers trajets',
                            style: SafeGoogleFont (
                              'League Spartan',
                              fontSize: 16*ffem,
                              fontWeight: FontWeight.w400,
                              height: 0.92*ffem/fem,
                              letterSpacing: -0.24*fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          // voirplusiuM (70:547)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2*fem),
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Text(
                              'Voir plus',
                              style: SafeGoogleFont (
                                'League Spartan',
                                fontSize: 16*ffem,
                                fontWeight: FontWeight.w400,
                                height: 0.92*ffem/fem,
                                letterSpacing: -0.24*fem,
                                color: Color(0xffff3d00),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupufs5VYj (B3aiCYXY2Bfd5Z1bcnuFs5)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 18*fem, 7*fem),
                    padding: EdgeInsets.fromLTRB(7*fem, 17*fem, 8.25*fem, 5*fem),
                    height: 55*fem,
                    decoration: BoxDecoration (
                      color: Color(0xfff5f5f5),
                      borderRadius: BorderRadius.circular(10*fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupkjnfYG7 (B3aiPhsc3g76asgKKhkjnF)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 174.25*fem, 0*fem),
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // bamakosgousJP (70:548)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                child: Text(
                                  'Bamako - Ségou',
                                  style: SafeGoogleFont (
                                    'League Spartan',
                                    fontSize: 13*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 0.92*ffem/fem,
                                    letterSpacing: -0.195*fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Text(
                                // juil2023AoH (70:552)
                                '30 juil. 2023',
                                style: SafeGoogleFont (
                                  'League Spartan',
                                  fontSize: 11*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 0.92*ffem/fem,
                                  letterSpacing: -0.165*fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // materialsymbolsstar6B9 (70:556)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5.33*fem, 13.21*fem),
                          width: 12.5*fem,
                          height: 15.04*fem,
                          child: Image.asset(
                            'assets/images/material-symbols-star-uY3.png',
                            width: 12.5*fem,
                            height: 15.04*fem,
                          ),
                        ),
                        Container(
                          // materialsymbolsstarb7u (70:560)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5.33*fem, 13.21*fem),
                          width: 10.83*fem,
                          height: 15.04*fem,
                          child: Image.asset(
                            'assets/images/material-symbols-star-t3R.png',
                            width: 10.83*fem,
                            height: 15.04*fem,
                          ),
                        ),
                        Container(
                          // materialsymbolsstar6qM (70:564)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5.33*fem, 13.21*fem),
                          width: 12.5*fem,
                          height: 15.04*fem,
                          child: Image.asset(
                            'assets/images/material-symbols-star-dTM.png',
                            width: 12.5*fem,
                            height: 15.04*fem,
                          ),
                        ),
                        Container(
                          // materialsymbolsstarpFZ (70:568)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5.33*fem, 13.21*fem),
                          width: 10.83*fem,
                          height: 15.04*fem,
                          child: Image.asset(
                            'assets/images/material-symbols-star-ZVH.png',
                            width: 10.83*fem,
                            height: 15.04*fem,
                          ),
                        ),
                        Container(
                          // materialsymbolsstarvpP (70:570)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 13.21*fem),
                          width: 12.5*fem,
                          height: 15.04*fem,
                          child: Image.asset(
                            'assets/images/material-symbols-star-QSK.png',
                            width: 12.5*fem,
                            height: 15.04*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupeeu7SXq (B3aiZckkpHKLC1AeBTEEU7)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 18*fem, 29*fem),
                    padding: EdgeInsets.fromLTRB(7*fem, 15*fem, 8.25*fem, 7*fem),
                    height: 55*fem,
                    decoration: BoxDecoration (
                      color: Color(0xfff5f5f5),
                      borderRadius: BorderRadius.circular(10*fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroup7jfmJa3 (B3aiihKxkJNjs1Chom7jfm)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 214.25*fem, 0*fem),
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // sikassokayesqK5 (70:549)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                child: Text(
                                  'Sikasso - Kayes',
                                  style: SafeGoogleFont (
                                    'League Spartan',
                                    fontSize: 13*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 0.92*ffem/fem,
                                    letterSpacing: -0.195*fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Text(
                                // juil2023YUP (70:553)
                                '12 juil. 2023',
                                style: SafeGoogleFont (
                                  'League Spartan',
                                  fontSize: 11*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 0.92*ffem/fem,
                                  letterSpacing: -0.165*fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // materialsymbolsstar5UK (70:613)
                          margin: EdgeInsets.fromLTRB(0*fem, 0.79*fem, 5.33*fem, 0*fem),
                          width: 12.5*fem,
                          height: 15.04*fem,
                          child: Image.asset(
                            'assets/images/material-symbols-star-2yu.png',
                            width: 12.5*fem,
                            height: 15.04*fem,
                          ),
                        ),
                        Container(
                          // materialsymbolsstarbBm (70:615)
                          margin: EdgeInsets.fromLTRB(0*fem, 0.79*fem, 5.33*fem, 0*fem),
                          width: 10.83*fem,
                          height: 15.04*fem,
                          child: Image.asset(
                            'assets/images/material-symbols-star-54B.png',
                            width: 10.83*fem,
                            height: 15.04*fem,
                          ),
                        ),
                        Container(
                          // materialsymbolsstarJby (70:617)
                          margin: EdgeInsets.fromLTRB(0*fem, 0.79*fem, 0*fem, 0*fem),
                          width: 12.5*fem,
                          height: 15.04*fem,
                          child: Image.asset(
                            'assets/page-1/images/material-symbols-star-1od.png',
                            width: 12.5*fem,
                            height: 15.04*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // materialsymbolsstarpqD (70:574)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 31*fem, 0*fem),
                    width: 5*fem,
                    height: 5*fem,
                  ),
                ],
              ),
            ),
            Container(
              // autogroup6sq5MaF (B3aisC5oh78NP7cyyG6Sq5)
              padding: EdgeInsets.fromLTRB(30*fem, 12*fem, 44.99*fem, 23*fem),
              width: double.infinity,
              height: 75*fem,
              decoration: BoxDecoration (
                border: Border.all(color: Color(0xff000000)),
                color: Color(0xff205375),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // mdimessagedrawe3Z (102:538)
                    margin: EdgeInsets.fromLTRB(0*fem, 4*fem, 103.22*fem, 0*fem),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: 40*fem,
                        height: 36*fem,
                        child: Image.asset(
                          'assets/page-1/images/mdi-message-draw-3Sf.png',
                          width: 40*fem,
                          height: 36*fem,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // ionhomeJto (102:534)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 114.22*fem, 3*fem),
                    width: 36.56*fem,
                    height: 32.38*fem,
                    child: Image.asset(
                      'assets/page-1/images/ion-home-DAf.png',
                      width: 36.56*fem,
                      height: 32.38*fem,
                    ),
                  ),
                  Container(
                    // rectangle41pMM (102:540)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: 36.01*fem,
                        height: 37*fem,
                        decoration: BoxDecoration (
                          borderRadius: BorderRadius.circular(100*fem),
                          color: Color(0x16219ebc),
                          image: DecorationImage (
                            fit: BoxFit.cover,
                            image: AssetImage (
                              'assets/page-1/images/rectangle-41-bg-ody.png',
                            ),
                          ),
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
    );
  }
}
