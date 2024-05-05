// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  List notificationsIcons = [
    "Images/NavBar/Notifications/notification-status.svg",
    "Images/NavBar/Notifications/notification-status.svg",
    "Images/NavBar/Notifications/notification-status.svg",
    "Images/NavBar/Notifications/notification-status (1).svg",
    "Images/NavBar/Notifications/notification-status (1).svg",
    "Images/NavBar/Notifications/notification-status (1).svg",
    "Images/NavBar/Notifications/notification-status (1).svg",
  ];

  List title = [
    "Daily Motivation",
    "Daily Motivation",
    "Daily Motivation",
    "Daily Motivation",
    "Daily Motivation",
    "Daily Motivation",
    "Daily Motivation",
  ];

  List content = [
    "Rise and shine! Start your day with a positive thought.",
    "Rise and shine! Start your day with a positive thought.",
    "Rise and shine! Start your day with a positive thought.",
    "Rise and shine! Start your day with a positive thought.",
    "Rise and shine! Start your day with a positive thought.",
    "Rise and shine! Start your day with a positive thought.",
    "Rise and shine! Start your day with a positive thought.",
  ];

  List time = [
    "12:43 PM",
    "12:43 PM",
    "12:43 PM",
    "12:43 PM",
    "12:43 PM",
    "12:43 PM",
    "12:43 PM",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(12.w),
        child: Column(children: [
          SizedBox(height: 30.h),
          Center(
            child: Text(
              'Notifications',
              style: TextStyle(
                color: const Color(0xFF12161C),
                fontSize: 15.sp,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,

              ),
            ),
          ),
          SizedBox(height: 15.h),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: notificationsIcons.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 75.h,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(9.w),
                            decoration: ShapeDecoration(
                              color: const Color(0xFFEDF5E3),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: 24.h,
                                      width: 24.w,
                                      child: SvgPicture.asset(
                                          notificationsIcons[index]),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Expanded(
                            child: Column(
                              // mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: double.infinity,
                                  child: Text(
                                    title[index],
                                    style: TextStyle(
                                      color: const Color(0xFF12161C),
                                      fontSize: 13.sp,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 4.h),
                                SizedBox(
                                  width: double.infinity,
                                  child: Text(
                                    content[index],
                                    style: TextStyle(
                                        color: const Color(0xFF5A5D61),
                                        fontSize: 12.sp,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        height: 1.3),
                                  ),
                                ),
                                SizedBox(height: 4.h),
                                Text(
                                  time[index],
                                  style: TextStyle(
                                    color: const Color(0xFFC1C2C3),
                                    fontSize: 11.sp,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          )
        ]),
      ),
    );
  }
}
