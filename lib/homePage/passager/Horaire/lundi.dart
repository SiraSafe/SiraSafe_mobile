import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../horaireWidgets.dart';

class LundiPage extends StatefulWidget {
  const LundiPage({Key? key}) : super(key: key);

  @override
  State<LundiPage> createState() => _LundiPageState();
}

class _LundiPageState extends State<LundiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: ListView.builder(
          itemCount: 10,
            itemBuilder: (context,index){
          return HoraireWidget(heure: "11:00",profilImage: "https://bleachweb.com/cdn/shop/articles/itachi-uchiha-10-faits-sur-itachi-uchiha-255446_1024x1024.jpg?v=1682339349",userProfil: "big boss",regions: "Gao-Kidal",);
        }),
      ),
    );
  }
}
