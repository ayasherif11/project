import 'package:flutter/cupertino.dart';
import 'Buttons.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';


class ImgPicker extends StatelessWidget {
  String? txt;
  ImgPicker(this.txt);

  @override
  Widget build(BuildContext context) {

    double h = MediaQuery
        .of(context)
        .size
        .height;
    double w = MediaQuery
        .of(context)
        .size
        .width;

    //  _imgFromCamera() async {
    //   File image = (ImagePicker.pickImage(
    //       source: ImageSource.camera, imageQuality: 50
    //   )) as File;
    //
    //   setState(() {
    //     _image = image;
    //   });
    // }
    //
    // _imgFromGallery() async {
    //   File image = (await ImagePicker.pickImage(
    //       source: ImageSource.gallery, imageQuality: 50
    //   )) as File;
    //
    //   setState(() {
    //     _image = image;
    //   });
    // }

    return Container(
      padding: EdgeInsets.only(top: h * .01),
      height: h * .25,
      width: w * .3,
      child: Card(
        color: const Color(0xFFf6f8ff).withOpacity(.9),
        elevation: 4,
        clipBehavior: Clip.hardEdge,
        // margin: EdgeInsets.symmetric(vertical: h*.01,),
        child: Column(
          children: [
            SizedBox(height: h * .00000001),
            GestureDetector(
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/uplodImgClr.png",
                    width: w * .6,
                    height: h * .2,
                  ),
                ],
              ),
              onTap: () {
                showModalBottomSheet(
                    elevation: 10,
                    backgroundColor: Colors.white12,
                    context: context,
                    builder: (ctx) =>
                        Container(
                          width: w * .06,
                          height: h * .2,
                          color: Colors.white54,
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Buttons(
                                  "Pick from gallery",
                                  0xFF21325E,
                                      () {},
                                  const Icon(
                                      Icons.photo_size_select_actual_outlined)),
                              SizedBox(height: h * .015),
                              Buttons("Pick from camera", 0xFF21325E, () {},
                                  const Icon(Icons.camera_alt)),
                            ],
                          ),
                        ));
              },
            ),
            Container(
              child: Text(txt!),
              alignment: Alignment.center,
              // padding: EdgeInsets.only(bottom: h*.01 ),
            ),
          ],
        ),
      ),
    );
  }
}
