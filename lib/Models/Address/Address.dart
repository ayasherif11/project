import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'dart:convert';

import 'package:project/Models/Address/addModelClassess.dart';
import 'package:project/theme.dart';

import 'package:auto_size_text/auto_size_text.dart';


class Address extends StatefulWidget {
  const Address({Key? key}) : super(key: key);

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  List governoratesList = [];
  List citiesList = [];
  List tempList = [];
  String? _governorate;
  String? _city;
  bool _isVisible = false;
  var items = ["Egypt", "Other"];

  // Color clrContainer=Color(0xFFFCECDD);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.symmetric(horizontal: w*.01,vertical: h*.02),
      decoration:BoxDecoration(
        border: Border.all(),
      ),
      child: Column(
        children: [
          const Text("Select your country",textAlign: TextAlign.left,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                  child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: w * .1, vertical: h * .01),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFE3E3).withOpacity(.56),
                        border: Border.all(),
                      ),
                      child: Text("Egypt", style: textStyle)),
                  onTap: () {
                    setState(() {
                      _isVisible = !_isVisible;
                    });
                  }),
              InkWell(
                  child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: w * .1, vertical: h * .01),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFE3E3).withOpacity(.56),
                        border: Border.all(),
                      ),
                      child: Text("Other", style: textStyle)),
                  onTap: () {
                        setState(() {
                           _isVisible=false;

                        });
                  }),
              // GestureDetector(
              //     child: Text("Other", style: textStyle),
              //     onTap: () {
              //       // clrContainer=Colors.black;
              //
              //       setState(() {
              //         _isVisible = !_isVisible;
              //       });
              //     }),
            ],
          ),
          Visibility(
            visible: _isVisible,
            child: Column(
              children: [
                DropdownButton(
                  isExpanded: true,
                  items: governoratesList.map((item) {
                    return DropdownMenuItem(
                      child: Text(item.name),
                      value: item.id.toString(),
                    );
                  }).toList(),
                  onChanged: (String? newVal) {
                    setState(() {
                      _city = null;
                      _governorate = newVal;
                      tempList = citiesList
                          .where((x) =>
                              x.govId.toString() == (_governorate.toString()))
                          .toList();
                    });
                  },
                  value: _governorate,
                  hint: const Text('Select a Governorate'),
                ),
                DropdownButton(
                  isExpanded: true,
                  items: tempList.map((item) {
                    return DropdownMenuItem(
                      child: Text(item.name),
                      value: item.id.toString(),
                    );
                  }).toList(),
                  onChanged: (String? newVal) {
                    setState(() {
                      _city = newVal;
                    });
                  },
                  value: _city,
                  hint: const Text('Select a city'),
                ),
              ],
            ),
          )

          //     DropdownButton(
          //       isExpanded: true,
          //     items:items.map((String items) {
          //   return DropdownMenuItem(
          //       value: items,
          //       child: Text(items)
          //   );
          // }
          // ).toList(),
          // onChanged: (String? newValue){
          // setState(() {
          // _country = newValue;
          // });
          // if(_country==items[0]){
          //   _isVisible = !_isVisible;
          //
          //   Container(
          //
          //     child: Visibility(
          //       visible: _isVisible,
          //       child: Column(
          //         children: [
          //           DropdownButton(
          //             isExpanded: true,
          //             items: governoratesList.map((item) {
          //               return DropdownMenuItem(
          //                 child: Text(item.name),
          //                 value: item.id.toString(),
          //               );
          //             }).toList(),
          //             onChanged: (String? newVal) {
          //               setState(() {
          //                 _city = null;
          //                 _governorate = newVal;
          //                 tempList = citiesList
          //                     .where((x) => x.govId.toString() == (_governorate.toString()))
          //                     .toList();
          //               });
          //
          //               // print(testingList.toString());
          //             },
          //
          //             value: _governorate,
          //             hint: const Text('Select a Governorate'),
          //           ),
          //           DropdownButton(
          //             isExpanded: true,
          //             // icon: const Icon(Icons.gps_fixed),
          //             items: tempList.map((item) {
          //               return DropdownMenuItem(
          //                 child: Text(item.name),
          //                 value: item.id.toString(),
          //               );
          //             }).toList(),
          //             onChanged: (String? newVal) {
          //               setState(() {
          //                 _city = newVal;
          //               });
          //             },
          //
          //             value: _city,
          //             hint: const Text('Select a city'),
          //           ),
          //         ],
          //       ),
          //
          //     ),
          //
          //
          //
          //   );
          // }
          // },
          //
          //
          //         // print(testingList.toString());
          //
          //
          //       value: _country,
          //       hint: const Text('Select a Contry'),
          //     ),
        ],
      ),
    );
  }

  Future loadStatesProvincesFromFile() async {
    return await rootBundle.loadString('assets/json/places.json');
  }

  Future _populateDropdown() async {
    String getPlaces = await loadStatesProvincesFromFile();
    final jsonResponse = json.decode(getPlaces);

    Localization places = Localization.fromJson(jsonResponse);

    setState(() {
      governoratesList = places.governorates!;
      citiesList = places.cities!;
    });
  }

  @override
  void initState() {
    super.initState();
    _populateDropdown();
  }
}
