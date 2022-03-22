import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:project/Models/PhoneNumbers.dart';
import 'package:project/Screens/Home/Drawer.dart';
import 'package:project/Screens/Home/MainBody.dart';
import 'package:project/Screens/Home/MainScreen.dart';
import 'package:project/Screens/Sign/SignIn.dart';
import 'package:project/Screens/Sign/SignUp.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
        DeviceOrientation.landscapeRight,
        DeviceOrientation.landscapeLeft,

      ]

  );
  runApp(
    // Sign()
    //   MaterialApp(
    //     debugShowCheckedModeBanner: false,

       const MyApp(),
      // )
  );
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const drawer(),
    );
  }
}
