import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:low_calories_app/pages/Home/HomePage.dart';

import 'package:low_calories_app/pages/NavBar/Custom_NavBar/Articles_Screen/Articles_screen.dart';
import 'package:low_calories_app/pages/NavBar/Daily_diet.dart';
// import 'package:low_calories_app/pages/NavBar/Custom_NavBar/tabbar_material_widget.dart';
import 'package:low_calories_app/pages/NavBar/Notifications.dart';
import 'package:low_calories_app/pages/NavBar/Settings/Settings_Screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  List pages = [
    const HomePage(),
    const Notifications(),
    const ArticlesScreen(),
    const SettingsScreen(),
  ];

  int selectedindex = 0;
  int? index;
  var isPressed = false;
  // bool onSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedindex],
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: isPressed ? const Color(0xff85BE46) : Colors.white,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => const DailyDietScreen()));
          return setState(() {
            isPressed = !isPressed;
          });
        },
        child: isPressed
            ? SvgPicture.asset("Images/NavBar/FABWhite.svg")
            : SvgPicture.asset("Images/NavBar/floatingactbutton.svg"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          height: 55.h,
          shape: const CircularNotchedRectangle(),
          notchMargin: 9,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                  icon: selectedindex == 0
                      ? SvgPicture.asset(
                          "Images/NavBar/selectedHome.svg",
                        )
                      : SvgPicture.asset("Images/NavBar/home (3).svg"),
                  onPressed: () {
                    setState(() {
                      onIconPressed(0);
                    });
                  }),
              IconButton(
                  icon: selectedindex == 1
                      ? SvgPicture.asset(
                          "Images/NavBar/selectednotifi.svg",
                        )
                      : SvgPicture.asset("Images/NavBar/notifications.svg"),
                  onPressed: () {
                    setState(() {
                      onIconPressed(1);
                    });
                  }),
              SizedBox(width: 40.w), // The dummy child
              IconButton(
                  icon: selectedindex == 2
                      ? SvgPicture.asset("Images/NavBar/selectedAbout.svg")
                      : SvgPicture.asset("Images/NavBar/about.svg"),
                  onPressed: () {
                    setState(() {
                      onIconPressed(2);
                    });
                  }),
              IconButton(
                  icon: selectedindex == 3
                      ? SvgPicture.asset("Images/NavBar/selectedSetting.svg")
                      : SvgPicture.asset("Images/NavBar/settings.svg"),
                  onPressed: () {
                    setState(() {
                      onIconPressed(3);
                    });
                  }),
            ],
          )),
    );
  }

  void onIconPressed(int index) {
    setState(() {
      selectedindex = index;
    });
  }
}
