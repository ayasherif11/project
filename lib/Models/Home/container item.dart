import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';


class ContainerItem extends StatelessWidget {
  String ? img,tittle,subtittle;
  int? clr;
  Function function;
  ContainerItem({Key? key, this.img,this.tittle,this.subtittle,this.clr,required this.function}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: (){function();},
      child: Container(
        height: h * .25,
        width: w * .9,
        margin: EdgeInsets.all(h * .008),
        // padding: EdgeInsets.only(left: w * .001,right: w*.02),
        decoration: BoxDecoration(
          color: Color(clr!),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(w * .25),
            bottomLeft: Radius.circular(w * .13),
            bottomRight: Radius.circular(w * .25),
            topRight: Radius.circular(w * .13),
          ),
        ),
        alignment: Alignment.topLeft,
        child: Container(
          margin: EdgeInsets.symmetric(vertical: h * .012),
          height: h * .35,
          width: w * .85,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top:h*.05),
                child: Image.asset(
                  "$img",
                  width: w * .3,
                  height: h * .3,
                  alignment: Alignment.topLeft,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    tittle!,
                    style: const TextStyle(
                        fontFamily: "Lobster",
                        fontSize: 32,
                        color:  Color(0xFF002536)),
                  ),
                  Divider(
                    indent: w*.03,
                    endIndent: w*.03,
                    thickness: 2,
                    color: const Color(0XFF002536),
                  ),
                  SizedBox(
                    width: w * .5,
                    child:  AutoSizeText(subtittle!,
                      style: const TextStyle(fontSize: 20),
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.visible,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
