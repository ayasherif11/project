
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';


class RadButton extends StatefulWidget {
  int radioVal;
  int val;
  String txt;
  RadButton(this.radioVal,this.val, this.txt, {Key? key}) : super(key: key);
  @override
  _RadButtonState createState() => _RadButtonState();
}

class _RadButtonState extends State<RadButton> {
  // int radioVal = 99;

  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      value: widget.val,
      groupValue:widget.radioVal,
      title: Text(widget.txt),
      onChanged: (int? xVal) {
        setState(() {
          widget.val=xVal!;

        });
      },
    );
  }
}

//
//
// radioBtn(int radioVal, int val,String txt) {
//   return  RadioListTile(
//     value: val,
//     groupValue: radioVal,
//     onChanged: (int? value) {
//       setState(() {
//         radioVal = value!;
//       });
//     },
//     title: Text(txt),
//
//
//   );
// }
