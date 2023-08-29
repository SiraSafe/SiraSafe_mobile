import 'package:flutter/material.dart';
import 'package:sirasafe/top_widget.dart';
import '../../bottomElements/profile.dart';
import '../botom_widget.dart';



class HomeConducteur extends StatefulWidget {
  HomeConducteur({Key? key}) : super(key: key);

  @override
  _HomeConducteurState createState() => _HomeConducteurState();
}

class _HomeConducteurState extends State<HomeConducteur> {
  final TextEditingController _searchText = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _currentIndex = 1; // Set initial index to the home icon

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: TextFormField(
          textAlign: TextAlign.start,
          controller: _searchText,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            prefixIcon: const Icon(Icons.search),
            suffixIcon: InkWell(
              child: const Icon(Icons.close),
              onTap: () {
                _searchText.clear();
              },
            ),
            hintText: 'Rechercher...',
            contentPadding: const EdgeInsets.all(0),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
          ),
        ),
        actions: [
          // IconButton(
          //   icon: Icon(Icons.notifications, color: Color(0xff205375)),
          //   onPressed: () {
          //     // Action when notification icon is pressed
          //   },
          // ),
          IconButton(
            icon: CircleAvatar(
              backgroundImage: AssetImage('assets/logo/k.jpeg'),
              radius: 20,
            ), onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
            );

          },
          ),
        ],
      ),

      drawer: AppDrawer(),
      body: Container(
        width: double.infinity,
        height: 300*fem,
        child: Stack(
          children: [
          Positioned(
          // rectangle24eP9 (70:505)
          left: 0*fem,
          top: 0*fem,
          child: Align(
            child: SizedBox(
              width: 390*fem,
              height: 272*fem,
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
            Container(
              width: double.infinity,
              height: 400*fem,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                          'assets/page-1/images/ep-info-filled-TJf.png',
                          width: 29.75*fem,
                          height: 28*fem,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ]
      ),
    ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          if (index == 0) {
            // Handle navigation to message page
            Navigator.pushNamed(context, '/MessagePage');
          } else if (index == 1) {
            // Handle navigation to home page
            Navigator.pushNamed(context, '/HomeConducteur');
          } else if (index == 2) {
            // Handle navigation to profile page
            Navigator.pushNamed(context, '/PageNotification');
          }
        },
      ),
    );
  }
}