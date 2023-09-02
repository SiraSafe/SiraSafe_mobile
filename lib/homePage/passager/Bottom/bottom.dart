
import 'package:flutter/material.dart';
import 'package:sirasafe/homePage/passager/homePassager.dart';

import '../../../bottomElements/message.dart';
import '../Drawer/notification.dart';



List<Widget>? screens;

class BottomPassager extends StatefulWidget {
  BottomPassager({super.key, this.isOk, this.index});
  bool? isOk;
  int? index;

  @override
  State<BottomPassager> createState() => _BottomPassagerState();
}

class _BottomPassagerState extends State<BottomPassager> {
  final List<Widget> _pages = [
    HomePassager(),
    MessagePage(),
    NotificationPassager(),

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

