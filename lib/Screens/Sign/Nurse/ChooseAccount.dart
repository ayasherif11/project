import 'dart:ui';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:page_transition/page_transition.dart';

import 'package:flutter/material.dart';
import 'package:project/Models/Buttons.dart';
import 'package:project/Screens/Sign/Nurse/Nur_SignUp.dart';
import 'package:project/Screens/Sign/SignUp.dart';

class ChooseAcc extends StatefulWidget {
  const ChooseAcc({Key? key}) : super(key: key);

  @override
  State<ChooseAcc> createState() => _ChooseAccState();
}

class _ChooseAccState extends State<ChooseAcc> {
  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;

    return Stack(children: [
    ImageFiltered(
    imageFilter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
    child: Image.asset(
    "assets/images/BackSign.png",
    height: double.infinity,
    width: double.infinity,
    fit: BoxFit.fill,
    )),
    Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    Container(
    margin: EdgeInsets.symmetric(vertical: w*.1,horizontal: w*.2),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(w*.01),
    // color: const Color(0xFF29435c).withOpacity(.55),

    ),
    width: w*.8,
    height: h*.07,
    child: ElevatedButton(

    onPressed: (){
    Navigator.push(
        context,
        PageTransition(
          type: PageTransitionType.rightToLeft,
          child:  const Nur_SignUp(),
        ),
      );
    },
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,

      children: const [
        AutoSizeText("Medical Team"),
    Icon(Icons.arrow_forward_ios_outlined)
      ],
    ),
    style: ButtonStyle(
    backgroundColor:MaterialStateColor.resolveWith((states) =>
    const Color(0xFF29435c).withOpacity(.8)),

    ),

    ),
    ),
    Container(
    margin: EdgeInsets.symmetric(vertical: w*.1,horizontal: w*.2),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(w*.01),
    // color: const Color(0xFF29435c).withOpacity(.55),

    ),
    width: w*.8,
    height: h*.07,
    child: ElevatedButton(

    onPressed: (){
    Navigator.push(
        context,
        PageTransition(
          type: PageTransitionType.leftToRight,
          child: const SignUp(),
        ),
      );
    },
    child:Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
    Icon(Icons.arrow_back_ios),

    AutoSizeText("User"),
      ],
    ),
    style: ButtonStyle(
    backgroundColor:MaterialStateColor.resolveWith((states) =>
    const Color(0xFF29435c).withOpacity(.8)),

    ),

    ),
    )


    // ShapeAcc("Medical team", () {
    //   Navigator.push(
    //     context,
    //     PageTransition(
    //       type: PageTransitionType.rightToLeft,
    //       child: const SignUp(),
    //     ),
    //   );
    // }),
    // ShapeAcc("User", () {
    //   Navigator.push(
    //     context,
    //     PageTransition(
    //       type: PageTransitionType.leftToRight,
    //       child: Nur_SignUp(),
    //     ),
    //   );
    // }),
    ]
    ,
    )
    ]
    );
  }
}
// class ShapeAcc extends StatelessWidget {
//
//   String ?txt;
//   Function ?function;
//   ShapeAcc(this.txt,this.function, {Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     double h=MediaQuery.of(context).size.height;
//     double w=MediaQuery.of(context).size.width;
//     return Container(
//       margin: EdgeInsets.symmetric(vertical: w*.1,horizontal: w*.2),
//       decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(w*.01),
//       // color: const Color(0xFF29435c).withOpacity(.55),
//
//     ),
//       width: w*.8,
//       height: h*.07,
//       child: ElevatedButton(
//
//         onPressed: (){
//           function!();
//         },
//         child: AutoSizeText(txt!),
//         style: ButtonStyle(
//           backgroundColor:MaterialStateColor.resolveWith((states) =>
//               Color(0xFF29435c).withOpacity(.8)),
//
//       ),
//
//       ),
//     );
//   }
// }
