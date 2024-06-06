import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:Low_Calories/pages/Home/HomePage.dart';

import 'package:Low_Calories/pages/NavBar/Custom_NavBar/Articles_Screen/Articles_screen.dart';
import 'package:Low_Calories/pages/NavBar/Daily_diet.dart';
// import 'package:Low_Calories/pages/NavBar/Custom_NavBar/tabbar_material_widget.dart';
import 'package:Low_Calories/pages/NavBar/Notifications.dart';
import 'package:Low_Calories/pages/NavBar/Settings/Settings_Screen.dart';

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
    const DailyDietScreen(),
  ];

  int selectedindex = 0;
  int? index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedindex],
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor:
            selectedindex == 4 ? const Color(0xff85BE46) : Colors.white,
        onPressed: () {
          onIconPressed(4);
        },
        child: selectedindex == 4
            ? SvgPicture.asset("Images/NavBar/FABWhite.svg")
            : SvgPicture.asset("Images/NavBar/floatingactbutton.svg"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
          color: const Color(0xffFFFFFF),
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








BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        currentIndex: selectedindex,
        // onTap: (value) {
        //   currentIndex = value;
        //   _pageController.animateToPage(
        //     value,
        //     duration: Duration(milliseconds: 100),
        //     curve: Curves.linear,
        //   );

        //   setState(() {});
        // },
        items: [
          BottomNavigationBarItem(
            icon: Container(
              height: 50,
              width: 100,
              color: Colors.red[200],
              child: Row(
                children: [
                  Icon(Icons.trending_up),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text('Home'),
                ],
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.trending_up),
            label: ("Second"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: ("Third"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: ("Third"),
          ),
        ],
      ),