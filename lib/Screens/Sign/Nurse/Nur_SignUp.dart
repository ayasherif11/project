import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:project/Models/Address/Address.dart';
import 'package:project/Models/Buttons.dart';
import 'package:project/Models/DateField.dart';
import 'package:project/Models/ImgPicker.dart';
import 'package:project/Models/PhoneNumbers.dart';
import 'package:project/Models/textFormField.dart';
import 'package:project/Screens/Home/Drawer.dart';

import 'package:auto_size_text/auto_size_text.dart';

class Nur_SignUp extends StatefulWidget {
  const Nur_SignUp({Key? key}) : super(key: key);

  @override
  State<Nur_SignUp> createState() => _Nur_SignUpState();
}

class _Nur_SignUpState extends State<Nur_SignUp> {
  @override
  Widget build(BuildContext context) {
    bool _isObscure = true, _isObscure0 = true;

    int _radioVal = 0;

    final _formKey = GlobalKey<FormState>();

    final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
        key: _scaffoldKey,
        body: Builder(
            builder: (context) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(children: [
                ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                    child: Image.asset(
                      "assets/images/2.jpg",
                      height: double.infinity ,
                      width: double.infinity,
                      fit: BoxFit.fill,
                    )),

                Container(
                  padding: EdgeInsets.only(top: h * .05, bottom: h * .01),
                  child: const AutoSizeText("Sign Up",
                      style: TextStyle(
                          fontFamily: "Lobster",
                          fontSize: 50,
                          color: Color(0xFF002536))),
                ),
                Positioned(
                    top: h*.2,
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
                                // AddTest(),
                                TxtFormField(
                                    hintTxt: "Enter your First name",
                                    inputType: TextInputType.text,
                                    lblText: "first name",
                                    preIcon: const Icon(Icons.person),
                                    sufIcon: IconButton(
                                        icon: const Icon(null),
                                        onPressed: () {}),
                                    obscureVal: false),
                                TxtFormField(
                                    hintTxt: "Enter your Last name",
                                    inputType: TextInputType.text,
                                    lblText: "last name",
                                    preIcon: const Icon(Icons.person),
                                    sufIcon: IconButton(
                                      icon: const Icon(null),
                                      onPressed: () {},
                                    ),
                                    obscureVal: false),
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
                                    hintTxt: "Enter your ID",
                                    inputType: TextInputType.number,
                                    lblText: "ID required",
                                    preIcon: const Icon(null),
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
                                TxtFormField(
                                    hintTxt: "confirm the Password",
                                    inputType:
                                    TextInputType.visiblePassword,
                                    lblText: "Confirmation Password",
                                    preIcon: const Icon(Icons.lock),
                                    sufIcon: IconButton(
                                      icon: Icon(_isObscure0
                                          ? Icons.visibility_off
                                          : Icons.visibility),
                                      onPressed: () {
                                        setState(() {
                                          _isObscure0 = !_isObscure0;
                                        });
                                      },
                                    ),
                                    obscureVal: true),
                                SizedBox(
                                  height: h * .01,
                                ),
                                const Text("Enter your phone number"),

                                const PhoneNo(),
                                // TxtFormField(hintTxt: ,inputType: ,lblText: ,preIcon: ,sufIcon: ,obscureVal: ),
                                SizedBox(
                                  height: h * .01,
                                ),

                                // const Text(
                                //     "Enter phone number in case there's any problem"),
                                // SizedBox(
                                //   height: h * .01,
                                // ),

                                // const PhoneNo(),
                                // // TxtFormField(false,Icon(null),Icon(Icons.person),"Enter this number "),
                                // SizedBox(
                                //   height: h * .01,
                                // ),
                                const Text("Pick Your Birthdate"),

                                BasicDateField(),
                                SizedBox(
                                  height: h * .01,
                                ),

                                const Text("Select Gender"),
                                Row(
                                  children: [
                                    Flexible(
                                      child: RadioListTile(
                                        value: 1,
                                        groupValue: _radioVal,
                                        title: const Text("Female"),
                                        onChanged: (int? xVal) {
                                          setState(() {
                                            _radioVal = xVal!;
                                          });
                                        },
                                      ),
                                    ),
                                    Flexible(
                                      child: RadioListTile(
                                        value: 2,
                                        groupValue: _radioVal,
                                        title: const Text("Male"),
                                        onChanged: (int? xVal) {
                                          setState(() {
                                            _radioVal = xVal!;
                                          });
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: h * .01,
                                ),
                                 ImgPicker("Pick an Image for you"),
                                SizedBox(
                                  height: h * .01,
                                ),  ImgPicker("Pick a photo for your national ID"),
                                SizedBox(
                                  height: h * .01,
                                ),  ImgPicker("Pick a Verification ID"),
                                SizedBox(
                                  height: h * .01,
                                ),  ImgPicker("Pick your CV"),
                                SizedBox(
                                  height: h * .01,
                                ),

                                const Address(),
                                SizedBox(
                                  height: h * .09,
                                ),
                                Buttons("Register", 0xFF534340, () {
                                  if (_formKey.currentState!.validate()) {
                                    Get.off(const drawer());
                                  }
                                }, const Icon(null))

                                // Address(),
                                // Text("Enter your Address"), obscureVal: null,
                              ]),
                        ),
                      ),
                    ))
              ]),
            )));

  }
}
