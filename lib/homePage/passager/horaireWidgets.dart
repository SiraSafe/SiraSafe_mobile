import 'package:flutter/cupertino.dart';

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
    return Container(
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Spacer(),
          Container(
            child: Text(widget.regions),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Row(
                children: [
                  Text(widget.userProfil),
                  SizedBox(
                    width: 10,
                  ),
                  Image.network(
                    widget.profilImage,
                    width: 20,
                    height: 20,
                  )
                ],
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(child: Text(widget.heure)),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
