

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../top_widget.dart';

class MyHeader extends StatelessWidget {
  MyHeader({Key? key}) : super(key: key);

  final TextEditingController _searchText = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: _appBar(),
      drawer: AppDrawer(),
      body: Center(
      ),
    );
  }

  PreferredSize _appBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(150),
      child: Container(
        margin: const EdgeInsets.only(top: 5),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        // decoration: _boxDecoration(),
        child: SafeArea(
          child: Column(
            children: [
              // _topBar(),
              const SizedBox(height: 5),
              _searchBox(_scaffoldKey),
              // _tabBar(),
            ],
          ),
        ),
      ),
    );
  }




  Widget _searchBox(GlobalKey<ScaffoldState> scaffoldKey) {
    return Row(
      children: [
        Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer(); // Open the drawer
            },
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 35,
            child: TextFormField(
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
                hintText: 'Search...',
                contentPadding: const EdgeInsets.all(0),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
            ),
          ),
        ),
        IconButton(
          icon: Icon(Icons.notifications),
          onPressed: () {
            // Add your menu logic here
          },
        ),
      ],
    );
  }
}


