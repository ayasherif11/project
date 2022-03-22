import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class TxtFormField extends StatelessWidget {

  bool obscureVal;
  Icon preIcon;
  IconButton sufIcon;
  String hintTxt,lblText;
  TextInputType inputType;

  TxtFormField(
      {Key? key, required this.obscureVal,
      required this.inputType,
      required this.sufIcon,
      required this.preIcon,
      required this.hintTxt,
      required this.lblText}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: TextFormField(

        obscureText:obscureVal ,
        keyboardType: inputType,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return ("$lblText Required");
          } else {
            return null;
          }
        },
        decoration: InputDecoration(
          prefixIcon: preIcon,
          prefixIconColor: Colors.black,
          suffixIcon: sufIcon,
          suffixIconColor: Colors.black,
          hintText: hintTxt,
          // label: Text(lblText),


          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 2,
              color: Colors.black,
            ),
            borderRadius: BorderRadius.circular(w*.07),
          ),
          enabledBorder: const OutlineInputBorder(

              borderSide: BorderSide(color: Colors.grey, width: 1)),


        ),

      ),
    );
  }
}

class TxtButton extends StatelessWidget {
  Function ?function;
  String ? txt;
  TxtButton({this.function,this.txt});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){function!();}, child: Text(txt!
      ,style:TextStyle(color: Color(0xFF151D3B)) ,));
  }
}

