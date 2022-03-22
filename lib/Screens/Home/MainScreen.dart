import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:project/Models/Home/container%20item.dart';

import 'package:project/Screens/Sign/SignIn.dart';

class MainHome extends StatelessWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [

    ContainerItem(img: "assets/images/Medicine.png",
    tittle: "Add medicines",
    subtittle: " reminder of drugs and appointments",
    function: (){

    },
    clr: 0xFF98B4AA,
    ),

        ContainerItem(img: "assets/images/Medical_team.png",
          tittle: "Nurse",
          subtittle: " communication with nurse",
          clr: 0xFFB2D3BE,
          function: (){
            Get.to( SignIn());
          },),


        ContainerItem(img: "assets/images/blood-test.png",
          tittle: "Prediction",
          subtittle: "Determine whether the patient has diabetes or not",
          clr: 0xFFC4E3CB,
          function: (){
          },
        ),


      ],


    );
  }
}
