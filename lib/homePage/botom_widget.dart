
import 'package:flutter/material.dart';
import '../bottomElements/message.dart';
import 'conducteur/drawer_element/notifications.dart';
import 'conducteur/homeConducteur.dart';

 List<Widget>? screens;

class BottomNavBar extends StatefulWidget {
  BottomNavBar({super.key, this.isOk, this.index});
  bool? isOk;
  int? index;

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final List<Widget> _pages = [
     HomeConducteur(),
     MessagePage(),
     PageNotification(),

  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      widget.isOk = false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    widget.index != null ? _selectedIndex = widget.index! : _selectedIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    if (widget.isOk != null) {
      if (widget.isOk!) {
        _selectedIndex = 2;
      }
    }

    return Builder(
      builder: (context) {
        return Scaffold(
          // drawer: const MyDrawer(),
          // appBar: const MyAppBar(),
          bottomNavigationBar: BottomNavigationBar(
              elevation: 0,
              unselectedItemColor: Colors.white,
              selectedItemColor: Colors.white,
              selectedLabelStyle: const TextStyle(fontSize: 16),
              type: BottomNavigationBarType.fixed,
              backgroundColor: const Color(0xff205375),
              selectedFontSize: 16,
              unselectedFontSize: 14,
              onTap: _onItemTapped,
              currentIndex: _selectedIndex,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                      color: _selectedIndex == 0 ? Colors.black: Colors.white,
                    ),
                    label: 'Accueil',
                    tooltip: 'Accueil'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.chat,
                      color: _selectedIndex == 1 ? Colors.black: Colors.white,
                    ),
                    label: 'Discussion',
                    tooltip: 'Chat'),

                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.notifications,
                      color: _selectedIndex == 2 ? Colors.black: Colors.white,
                    ),
                    label: 'Notification',
                    tooltip: 'Notification'),
              ]),
          body: _pages[_selectedIndex],
        );
      }
    );
  }
}










// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class CustomBottomNavigationBar extends StatelessWidget {
//   final int currentIndex;
//   final Function(int) onTap;
//
//   CustomBottomNavigationBar({required this.currentIndex, required this.onTap});
//
//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       backgroundColor: Color(0xff205375),
//       currentIndex: currentIndex,
//       items: const <BottomNavigationBarItem>[
//         BottomNavigationBarItem(
//           icon: Icon(Icons.message_sharp, color: Colors.white),
//           label: 'Message',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.home, color: Colors.white),
//           label: 'Accueil',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.notifications, color: Colors.white),
//           label: 'Notifications',
//         ),
//       ],
//       onTap: onTap,
//     );
//   }
// }
