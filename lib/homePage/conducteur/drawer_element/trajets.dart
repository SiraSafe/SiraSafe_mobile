import 'package:flutter/material.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

import '../../../utils/utils.dart';
import '../../botom_widget.dart';


class PageTrajet extends StatefulWidget {
  @override
  State<PageTrajet> createState() => _PageTrajetState();
}

class _PageTrajetState extends State<PageTrajet> {
  int _currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Notifications'),
      // ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/logo/screen.png'), // Replace with your image path
            fit: BoxFit.cover, // Adjust the fit to your preference
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            buildNotificationCard(
              context: context,
              type: QuickAlertType.error,
              title: 'Kidal - Gao   SONEF',
              text: '20 Jan. 2022',

            ),
            buildNotificationCard(
              context: context,
              type: QuickAlertType.error,
              title: 'Kidal - Gao   SONEF',
              text: '20 Jan. 2022',

            ),
            buildNotificationCard(
              context: context,
              type: QuickAlertType.error,
              title: 'Kidal - Gao   SONEF',
              text: '20 Jan. 2022',

            ),
            buildNotificationCard(
              context: context,
              type: QuickAlertType.error,
              title: 'Kidal - Gao   SONEF',
              text: '20 Jan. 2022',
            ),
            // Add more notification cards here...
          ],
        ),
      ),

    );
  }
}
Widget buildNotificationCard({
  required BuildContext context,
  required QuickAlertType type,
  required String title,
  required String text,

}) {
  return Card(
    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    elevation: 2,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          begin: Alignment(0.003, -2.418),
          end: Alignment(0, 1),
          colors: <Color>[Colors.white, Colors.white],
          stops: <double>[0, 1],
        ),
      ),
      child: ListTile(
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(title),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Fermer',
                      style: SafeGoogleFont(
                        'League Spartan',
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff205375),
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        },
        leading: SizedBox(
          width: 20, // Adjust the width as needed
          // child: CircleAvatar(
          //   backgroundColor: Colors.transparent,
          //   backgroundImage: AssetImage('assets/logo/1.png'),
          //   radius: 20,
          // ),
        ),
        title: Row(
          children: [
            Expanded(
              child: Text(
                title,
                style: SafeGoogleFont(
                  'League Spartan',
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color:  Color(0xff205375),
                ),
              ),
            ),
            CircleAvatar(
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/images/auto-group-csap.png',),
          radius: 20,
        ),
          ],
        ),
        subtitle: Text(
          text,
          style: SafeGoogleFont(
            'League Spartan',
            fontSize: 10,
            fontWeight: FontWeight.w200,
            color:  Color(0xff205375),
          ),
        ),
      ),
    ),
  );
}
