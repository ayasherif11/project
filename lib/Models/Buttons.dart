import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';


// ignore: must_be_immutable
class Buttons extends StatelessWidget {
String txt;
int clr;
Function function;
Icon icon;
Buttons(this.txt,this.clr,this.function,this.icon, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    return FloatingActionButton.extended(
      label: Text(txt),
      extendedPadding: EdgeInsets.symmetric(horizontal: w*.2,
          vertical: h*.5),
      icon: icon,



      backgroundColor:Color(clr).withOpacity(.56) ,
      // materialTapTargetSize: MaterialButton(),

      // child: Text(txt),
      // borderRadius: BorderRadius.circular((h*.3)),
      onPressed: (){ function(
      );},
      // highlightColor: Color(0xFFD8D2CB),
      // highlightColor: Colors.amber,
      // shape: ShapeBorder().,

    );
  }
}
