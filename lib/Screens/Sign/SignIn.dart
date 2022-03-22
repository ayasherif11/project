import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:project/Models/Buttons.dart';
import 'package:project/Models/textFormField.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:project/Screens/Home/Drawer.dart';
import 'package:project/Screens/Sign/Nurse/ChooseAccount.dart';
import 'package:project/Screens/Sign/SignUp.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _isObscure = true;

  final _formKey = GlobalKey<FormState>();

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  // Rad r=new Rad();

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
        key: _scaffoldKey,
        body: Builder(
            builder: (context) => Padding(
                  padding: EdgeInsets.all(h * .01),
                  child: Stack(children: [
                    ImageFiltered(
                        imageFilter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                        child: Image.asset(
                          "assets/images/1.jpg",
                          height: double.infinity,
                          width: double.infinity,
                          fit: BoxFit.fill,
                        )),
                    Container(
                        padding:
                            EdgeInsets.only(top: h * .055, bottom: h * .01),
                        child: Row(
                          children: const [
                            AutoSizeText("Sign",
                                style: TextStyle(
                                    fontFamily: "Lobster",
                                    fontSize: 50,
                                    color: Color(0xFF002536))),
                            AutoSizeText("In",
                                style: TextStyle(
                                    fontFamily: "Lobster",
                                    fontSize: 50,
                                    color: Color(0xFF687980))),
                          ],
                        )),
                    Positioned(
                        top: h * .2,
                        left: 0,
                        right: 0,
                        child: Container(
                          margin: EdgeInsets.only(top: h * .01),
                          padding: EdgeInsets.symmetric(horizontal: w * .02),
                          decoration: BoxDecoration(
                              color: const Color(0xFFf6f8ff).withOpacity(.8),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(w * .13),
                                  topRight: Radius.circular(w * .13))),
                          alignment: Alignment.bottomCenter,
                          child: Form(
                            key: _formKey,
                            child: SizedBox(
                              height: h * .8,
                              width: w * .9,
                              child: ListView(

                                  // verticalDirection: VerticalDirection.up,
                                  scrollDirection: Axis.vertical,
                                  children: [
                                    TxtFormField(
                                        hintTxt: "Enter your E-mail",
                                        inputType: TextInputType.emailAddress,
                                        lblText: "e-mail",
                                        preIcon: const Icon(Icons.email),
                                        sufIcon: IconButton(
                                            icon: const Icon(null),
                                            onPressed: () {}),
                                        obscureVal: false),
                                    TxtFormField(
                                        hintTxt: "Enter Password",
                                        inputType:
                                            TextInputType.visiblePassword,
                                        lblText: "password",
                                        preIcon: const Icon(Icons.lock),
                                        sufIcon: IconButton(
                                          icon: Icon(_isObscure
                                              ? Icons.visibility_off
                                              : Icons.visibility),
                                          onPressed: () {
                                            setState(() {
                                              _isObscure = !_isObscure;
                                            });
                                          },
                                        ),
                                        obscureVal: true),
                                    Container(
                                      margin: EdgeInsets.only(bottom: h*.02),
                                        alignment: Alignment.centerRight,
                                        child: TxtButton(
                                          function: () {
                                            ScaffoldMessenger.of(context).showSnackBar(
                                                const SnackBar(
                                                    content: Text("اتصرف وافتكره"),

                                            ));

                                          },
                                          txt: "Forgot Password?",
                                        )),
                                    Buttons("LOGIN    ", 0xFF151D3B, () {
                                      Get.off(const drawer());

                                    },
                                        const Icon(null)),
                                     Divider(
                                       indent: w*.03,
                                       endIndent: w*.03,
                                      height: h*.08,
                                      thickness: 2,
                                      color: const Color(0XFF002536),
                                    ),
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      margin: EdgeInsets.only(bottom: h*.01),
                                      child: const AutoSizeText(
                                        "Sign In With:",
                                        style:  TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w600),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/images/gmail.png",
                                          height: h * .05,
                                          width: w * .15,
                                        ),
                                        Image.asset(
                                            "assets/images/facebook .png",
                                            height: h * .04,
                                            width: w * .15),
                                      ],
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                    ),
                                    Container(
                                      width: w * .8,
                                      height: h*.122,


                                      margin: EdgeInsets.only(top: h*.05,bottom: h*.06),
                                      decoration: BoxDecoration(
                                        color: const Color(0x1E000000),
                                        borderRadius:
                                            BorderRadius.circular(h * .01),
                                      ),
                                      padding:  EdgeInsets.symmetric(horizontal: w*.01,vertical: h*.01),
                                      child:Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                           const AutoSizeText(


                                          'If you don\'t have an account ,you can',
                                          // maxLines: 2,
                                          style: TextStyle(
                                            fontSize: 16,

                                              fontWeight:
                                              FontWeight.bold,
                                              color:  Color(
                                                  0xFF002536))),
                                          SizedBox(
                                            height: h*.07,
                                            child: TextButton(

                                            onPressed:(){
                                    Get.to(const ChooseAcc());

                                    } ,
                                      child:  const AutoSizeText( 'Create one now!',
                                            // maxLines: 2,

                                            style: TextStyle(
                                              fontSize: 18,
                                                fontStyle:
                                                FontStyle.italic,
                                                color: Color(
                                                    0xFF798777))),
                                            ),
                                          )])
                                      ),





                                    //   RichText(
                                    //       textAlign: TextAlign.left,
                                    //       overflow: TextOverflow.visible,
                                    //       maxLines: 3,
                                    //       softWrap: true,
                                    //       text: const TextSpan(children: [
                                    //         ])),
                                    //   alignment: Alignment.center,
                                    // )
                                  ]),
                            ),
                          ),
                        ))
                  ]),
                )));
  }
}
