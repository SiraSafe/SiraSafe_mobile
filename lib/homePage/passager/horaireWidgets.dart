import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Bottom/profile.dart';

class HoraireWidget extends StatefulWidget {
  HoraireWidget({
    Key? key,
    required this.regions,
    required this.heure,
    required this.profilImage,
    required this.userProfil,
  }) : super(key: key);
  String regions, userProfil, profilImage, heure;
  @override
  State<HoraireWidget> createState() => _HoraireWidgetState();
}

class _HoraireWidgetState extends State<HoraireWidget> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Spacer(),
          Container(
            width: 90,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment(0, -1),
                end: Alignment(0, 1),
                colors: <Color>[Colors.white, Colors.white],
                stops: <double>[0, 1],
              ),
            ),
            // color: Colors.white,
            child: Center(
              child: Text(
                widget.regions,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 130,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment(0, -1),
                  end: Alignment(0, 1),
                  colors: <Color>[Colors.white, Colors.white],
                  stops: <double>[0, 1],
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      widget.userProfil,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProfileUser()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: CircleAvatar(
                        radius: 12,
                        backgroundImage: NetworkImage(widget.profilImage),
                      ),
                    ),
                  ),
                ],
              ),
            ),

          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: 80,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment(0, -1),
                    end: Alignment(0, 1),
                    colors: <Color>[Colors.white, Colors.white],
                    stops: <double>[0, 1],
                  ),
                ),
                child: Center(child: Text(widget.heure,textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,),
                ),
                ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
