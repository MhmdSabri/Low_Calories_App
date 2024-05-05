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
        height: 60.h,
        padding: EdgeInsets.zero,
        shape: const CircularNotchedRectangle(),
        notchMargin: 5,
        clipBehavior: Clip.antiAlias,
        child: Container(
          height: 60,
          color: Colors.white,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            currentIndex: selectedindex,
            onTap: (int index) {
              setState(() {
                selectedindex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Center(child: Builder(builder: (context) {
                  if (selectedindex == 0) {
                    return SvgPicture.asset(
                      "Images/NavBar/selectedHome.svg",
                    );
                  } else {
                    return SvgPicture.asset(
                      "Images/NavBar/home (3).svg",
                    );
                  }
                })),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Center(child: Builder(builder: (context) {
                  if (selectedindex == 1) {
                    return SvgPicture.asset(
                      "Images/NavBar/selectednotifi.svg",
                    );
                  } else {
                    return SvgPicture.asset(
                      "Images/NavBar/notifications.svg",
                    );
                  }
                })),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Center(child: Builder(builder: (context) {
                  if (selectedindex == 2) {
                    return SvgPicture.asset(
                      "Images/NavBar/selectedAbout.svg",
                    );
                  } else {
                    return SvgPicture.asset(
                      "Images/NavBar/about.svg",
                    );
                  }
                })),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Center(child: Builder(builder: (context) {
                  if (selectedindex == 3) {
                    return SvgPicture.asset(
                      "Images/NavBar/selectedSetting.svg",
                    );
                  } else {
                    return SvgPicture.asset(
                      "Images/NavBar/settings.svg",
                    );
                  }
                })),
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }

  // void onchangedTab(int index) {
  //   setState(() {
  //     this.index = index;
  //   });
  // }
}
