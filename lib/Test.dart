// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'dart:async';
// import 'dart:convert';
//
// import 'package:project/Models/Address/addModelClassess.dart';
// //
// // class AddTest extends StatefulWidget {
// //   const AddTest({Key? key}) : super(key: key);
// //
// //   @override
// //   State<AddTest> createState() => _AddTestState();
// // }
// //
// // class _AddTestState extends State<AddTest> {
// //   List governoratesList = [];
// //   List citiesList = [];
// //   List tempList = [];
// //   String? _governorate;
// //   String? _city;
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Column(
// //       children: [
// //         DropdownButton(
// //           isExpanded: true,
// //           items: governoratesList.map((item) {
// //             return DropdownMenuItem(
// //               child: Text(item.name),
// //               value: item.id.toString(),
// //             );
// //           }).toList(),
// //           onChanged: (String? newVal) {
// //             setState(() {
// //               _city = null;
// //               _governorate = newVal;
// //               tempList = citiesList
// //                   .where((x) => x.govId.toString() == (_governorate.toString()))
// //                   .toList();
// //             });
// //
// //             // print(testingList.toString());
// //           },
// //
// //           value: _governorate,
// //           hint: const Text('Select a Governorate'),
// //         ),
// //         DropdownButton(
// //           isExpanded: true,
// //           // icon: const Icon(Icons.gps_fixed),
// //           items: tempList.map((item) {
// //             return DropdownMenuItem(
// //               child: Text(item.name),
// //               value: item.id.toString(),
// //             );
// //           }).toList(),
// //           onChanged: (String? newVal) {
// //             setState(() {
// //               _city = newVal;
// //             });
// //           },
// //
// //           value: _city,
// //           hint: const Text('Select a city'),
// //         ),
// //       ],
// //     );
// //   }
// //
// //   Future loadStatesProvincesFromFile() async {
// //     return await rootBundle.loadString('assets/json/places.json');
// //   }
// //
// //   Future _populateDropdown() async {
// //     String getPlaces = await loadStatesProvincesFromFile();
// //     final jsonResponse = json.decode(getPlaces);
// //
// //     Localization places = Localization.fromJson(jsonResponse);
// //
// //     setState(() {
// //       governoratesList = places.governorates!;
// //       citiesList = places.cities!;
// //     });
// //   }
// //
// //   @override
// //   void initState() {
// //     super.initState();
// //     _populateDropdown();
// //   }
// // }
// class TestCountry extends StatefulWidget {
//   const TestCountry({Key? key}) : super(key: key);
//
//   @override
//   State<TestCountry> createState() => _TestCountryState();
// }
//
// class _TestCountryState extends State<TestCountry> {
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         GestureDetector(
//           child: const Text("Egypt"),
//           onTap: visibilityFun,
//         ),
//       ],
//     );
//   }
//   visibilityFun(){
//   return  Visibility(
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
//     );
//   }
// }
