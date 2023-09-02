import 'package:flutter/material.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

import '../../../utils/utils.dart';
import '../../botom_widget.dart';


class NotificationPassager extends StatefulWidget {
  @override
  State<NotificationPassager> createState() => _NotificationPassagerState();
}

class _NotificationPassagerState extends State<NotificationPassager> {
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
              title: 'Systeme',
              text: 'Mise en jour ',
              description: 'Profitez des derniers mise en jour et fonctionnalités du systeme pour une expérience de  voyage encore plus fluide',

            ),
            buildNotificationCard(
              context: context,
              type: QuickAlertType.error,
              title: 'Alertes de la Compagnie',
              text: 'Cher Mohamed Traoré',
              description: 'Cher Mohamed Traoré,\nRécemment, nous avons remarqué des signes de somnolence lors de certains de vos trajets. Votre sécurité, ainsi que celle de nos passagers, est notre priorité absolue.\n\nPour garantir des trajets sûrs, nous vous recommandons de prendre des pauses régulières lors de longs trajets et de vous reposer suffisamment avant de conduire. La somnolence au volant peut être dangereuse et augmenter les risques d\'accidents.\n\nVotre vigilance et votre état d\'éveil sont essentiels pour une conduite sécurisée. Nous vous encourageons à rester alerte tout au long de vos trajets.\nMerci de votre coopération envers la sécurité routière.\n\nL\'équipe Sirasafe\n\n',

            ),
            buildNotificationCard(
              context: context,
              type: QuickAlertType.error,
              title: 'Alerte - System',
              text: 'Cher Mohamed Traoré',
              description: 'Cher Mohamed Traoré,\nRécemment, nous avons remarqué des signes de somnolence lors de certains de vos trajets. Votre sécurité, ainsi que celle de nos passagers, est notre priorité absolue.\n\nPour garantir des trajets sûrs, nous vous recommandons de prendre des pauses régulières lors de longs trajets et de vous reposer suffisamment avant de conduire. La somnolence au volant peut être dangereuse et augmenter les risques d\'accidents.\n\nVotre vigilance et votre état d\'éveil sont essentiels pour une conduite sécurisée. Nous vous encourageons à rester alerte tout au long de vos trajets.\nMerci de votre coopération envers la sécurité routière.\n\nL\'équipe Sirasafe\n\n',

            ),
            buildNotificationCard(
              context: context,
              type: QuickAlertType.error,
              title: 'Alertes de la Compagnie',
              text: 'Cher Mohamed Traoré',
              description: 'Cher Mohamed Traoré,\nRécemment, nous avons remarqué des signes de somnolence lors de certains de vos trajets. Votre sécurité, ainsi que celle de nos passagers, est notre priorité absolue.\n\nPour garantir des trajets sûrs, nous vous recommandons de prendre des pauses régulières lors de longs trajets et de vous reposer suffisamment avant de conduire. La somnolence au volant peut être dangereuse et augmenter les risques d\'accidents.\n\nVotre vigilance et votre état d\'éveil sont essentiels pour une conduite sécurisée. Nous vous encourageons à rester alerte tout au long de vos trajets.\nMerci de votre coopération envers la sécurité routière.\n\nL\'équipe Sirasafe\n\n',

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
  required String description,
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
          colors: <Color>[Color(0xff219ebc), Color(0xff219ebc)],
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
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(description,style: SafeGoogleFont(
                      'League Spartan',
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      // height: 15,
                      color: Color(
                          0xff205375),
                    ),),
                  ],
                ),
                actions: [
                  TextButton(
                    onPressed:(){
                      Navigator.pop(context);
                    },
                    child: Text('Fermer',style: SafeGoogleFont(
                      'League Spartan',
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      // height: 15,
                      color: Color(
                          0xff205375),
                    ),),
                  ),
                ],

              );
            },
          );
        },
        leading: CircleAvatar(
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/logo/1.png'),
          radius: 20, // Ajustez la taille de l'avatar selon vos préférences
        ),
        title: Text(title,style: SafeGoogleFont(
          'League Spartan',
          fontSize: 20,
          fontWeight: FontWeight.w400,
          // height: 15,
          color: Colors.white,
        ),),
        subtitle: Text(text,style: SafeGoogleFont(
          'League Spartan',
          fontSize: 10,
          fontWeight: FontWeight.w200,
          // height: 15,
          color: Colors.white,
        ),),

      ),
    ),


  );
}
