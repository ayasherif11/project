// import 'package:flutter/material.dart';
// import 'package:project/Screens/Home/MainBody.dart';
// import 'package:project/Screens/Home/MainScreen.dart';
// class HomeDrawer extends StatefulWidget {
//   const HomeDrawer({Key? key}) : super(key: key);
//
//   @override
//   State<HomeDrawer> createState() => _HomeDrawerState();
// }
//
// class _HomeDrawerState extends State<HomeDrawer> {
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//     // body: SliderDrawer(
//     // appBar: SliderAppBar(
//     // appBarColor: Colors.white,
//     // title: Text('Title',
//     // style:
//     // const TextStyle(fontSize: 22, fontWeight: FontWeight.w700))),
//     // slider: Container(color: Colors.red),
//     // child: Container(color: Colors.amber),
//     // )
//         );
//     }
//     }
//     // return Scaffold(
//     //
//     //   body: SliderDrawer(
//     //     appBar:   PreferredSize(
//     //       preferredSize: Size.fromHeight(90),
//     //       child: AppBar(
//     //         title: Text(
//     //           'About This App',
//     //           style: TextStyle(fontSize: 28),
//     //         ),
//     //         centerTitle: true,
//     //         backgroundColor: Color(0xffbf360c),
//     //         elevation: 10,
//     //         shadowColor: Color(0xff3f51b5),
//     //         shape: RoundedRectangleBorder(
//     //           borderRadius: BorderRadius.only(
//     //             bottomLeft: Radius.circular(25),
//     //             bottomRight: Radius.circular(25),
//     //           ),
//     //         ),
//     //       ),
//     //
//     //     ), slider: Container(color: Colors.red),
//     //     sliderOpenSize: 100,
//     //     child: MainBody(),
//     //
//     //   ),
//     // );
// //   }
// // }
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:get/get.dart';
import 'package:project/Screens/Home/MainScreen.dart';
import 'package:project/Screens/Sign/SignIn.dart';
import 'package:auto_size_text/auto_size_text.dart';


class drawer extends StatefulWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  _drawerState createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  final _advancedDrawerController = AdvancedDrawerController();

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return AdvancedDrawer(
      backdropColor: const Color(0xFF002536),
      controller: _advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      disabledGestures: false,
      childDecoration:  BoxDecoration(
        borderRadius:  BorderRadius.all(Radius.circular(w*.1)),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const AutoSizeText("Home"),
                actions: [
                  IconButton(onPressed: (){}, icon: const Icon(Icons.settings))
                ],



                centerTitle: true,
                backgroundColor: const Color(0xFF002536),
                elevation: 10,

                shadowColor: const Color(0xFF002536),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(w*.1),
                    bottomRight: Radius.circular(w*.1),
                  ),
                ),

            leading: IconButton(
            onPressed: _handleMenuButtonPressed,
            icon: ValueListenableBuilder<AdvancedDrawerValue>(
              valueListenable: _advancedDrawerController,
              builder: (_, value, __) {
                return AnimatedSwitcher(
                  duration: const Duration(milliseconds: 250),
                  child: Icon(
                    value.visible ? Icons.clear : Icons.menu,
                    key: ValueKey<bool>(value.visible),
                  ),
                );
              },
            ),
          ),
        ),
        body: const MainHome(),
      ),
      drawer: SafeArea(
        child: ListTileTheme(
          textColor: Colors.white,
          iconColor: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              CircleAvatar(
                radius: w*.15,

                backgroundImage:const AssetImage("assets/images/Penguin.png",),



              ),
              // Container(
              //     width: 128.0,
              //     height: 128.0,
              //     margin: const EdgeInsets.only(
              //       top: 24.0,
              //       bottom: 64.0,
              //     ),
              //     clipBehavior: Clip.antiAlias,
              //     decoration: BoxDecoration(
              //       color: Colors.white,
              //       shape: BoxShape.circle,
              //     ),
              //     child: SvgPicture.asset(
              //         "assets/images/undraw_playing_fetch_cm19.svg")),
              // ListTile(
              //   onTap: () {},
              //   leading: const Icon(Icons.home),
              //   title: const Text('Home'),
              // ),
              // ListTile(
              //   onTap: () {},
              //   leading: const Icon(Icons.add),
              //   title: const Text('Add pet'),
              // ),
              // ListTile(
              //   onTap: () {},
              //   leading: const Icon(Icons.mail),
              //   title: const Text('masseges'),
              // ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.account_circle_rounded),
                title: const Text('Profile'),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.notifications),
                title: const Text('Notification'),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.language),
                title: const Text('Language'),
              ),
              ListTile(
                onTap: () {
                  Get.isDarkMode
                  ? Get.changeTheme(ThemeData.dark())
                      :Get.changeTheme(ThemeData.light());
                },
                leading: const Icon(Icons.lightbulb),
                title: const Text('Mode'),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.logout),
                title: const Text('Log out'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _handleMenuButtonPressed() {
    _advancedDrawerController.showDrawer();
  }
}
