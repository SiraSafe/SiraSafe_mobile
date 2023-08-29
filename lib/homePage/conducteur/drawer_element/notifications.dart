import 'package:flutter/material.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';


class PageNotification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[Color(0xe56fffe9), Color(0xd6ffc107), Color(0xff205375)],
          ),
        ),
        child: Column(
          children: [
            buildNotificationCard(
              context: context,
              type: QuickAlertType.success,
              title: 'Success',
              text: 'Transaction Completed Successfully!',
            ),
            buildNotificationCard(
              context: context,
              type: QuickAlertType.error,
              title: 'Error',
              text: 'Sorry, something went wrong',
            ),
            // Add more notification cards here...
          ],
        ),
      ),
    );
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
      child: ListTile(
        onTap: () {
          QuickAlert.show(
            context: context,
            type: type,
            title: title,
            text: text,
          );
        },
        leading: CircleAvatar(
          backgroundColor: Colors.transparent,
          child: Icon(
            type == QuickAlertType.success ? Icons.check_circle : Icons.error,
            color: type == QuickAlertType.success ? Colors.green : Colors.red,
          ),
        ),
        title: Text(title),
        subtitle: Text(text),
      ),
    );
  }
}