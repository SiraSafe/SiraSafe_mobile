// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import '../../../utils/utils.dart';
//
//
//
// class TopSection extends StatelessWidget {
//   final double fem;
//   final double ffem;
//
//   TopSection(this.fem, this.ffem);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.fromLTRB(0 * fem, 18 * fem, 0 * fem, 37 * fem),
//       width: double.infinity,
//       height: 135 * fem,
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           fit: BoxFit.cover,
//           image: AssetImage('assets/images/rectangle-42-CmV.png'),
//         ),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 14 * fem),
//             width: 396 * fem,
//             height: 36 * fem,
//             child: Image.asset(
//               'assets/images/status-bar-DXd.png',
//               width: 396 * fem,
//               height: 36 * fem,
//             ),
//           ),
//           Container(
//             margin: EdgeInsets.fromLTRB(27 * fem, 0 * fem, 0 * fem, 0 * fem),
//             child: Text(
//               'Écrivez-nous',
//               style: SafeGoogleFont(
//                 'League Spartan',
//                 fontSize: 32 * ffem,
//                 fontWeight: FontWeight.w800,
//                 height: 0.92 * ffem / fem,
//                 letterSpacing: -0.48 * fem,
//                 color: Color(0xffffffff),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
// class PositionedElement extends StatelessWidget {
//   final double fem;
//   final double ffem;
//   final double left;
//   final double top;
//   final String imagePath;
//
//   PositionedElement({required this.fem, required this.ffem, required this.left, required this.top, required this.imagePath});
//
//   @override
//   Widget build(BuildContext context) {
//     return Positioned(
//       left: left * fem,
//       top: top * fem,
//       child: Align(
//         child: SizedBox(
//           width: 142 * fem,
//           height: 147 * fem,
//           child: Image.asset(
//             imagePath,
//             width: 142 * fem,
//             height: 147 * fem,
//           ),
//         ),
//       ),
//     );
//   }
// }
// class MainContent extends StatelessWidget {
//   final double fem;
//   final double ffem;
//
//   MainContent(this.fem, this.ffem);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       height: 740 * fem,
//       child: Stack(
//         children: [
//           PositionedElement(fem: fem, ffem: ffem, left: 303, top: 0, imagePath: 'assets/images/ellipse-4-VvX.png'),
//           PositionedElement(fem: fem, ffem: ffem, left: 296, top: 409, imagePath: 'assets/images/ellipse-7-aZV.png'),
//           PositionedElement(fem: fem, ffem: ffem, left: 0, top: 73, imagePath: 'assets/images/ellipse-6-BFu.png'),
//           PositionedElement(fem: fem, ffem: ffem, left: 0, top: 549, imagePath: 'assets/images/ellipse-5-DtB.png'),
//           Positioned(
//             left: 0 * fem,
//             top: 665 * fem,
//             child: Align(
//               child: SizedBox(
//                 width: 405 * fem,
//                 height: 75 * fem,
//                 child: Container(
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Color(0xff000000)),
//                     color: Color(0xff219ebc),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           // ... other Positioned elements ...
//         ],
//       ),
//     );
//   }
// }
//
//
//
//
