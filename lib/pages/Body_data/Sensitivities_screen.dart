import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:low_calories_app/pages/Body_data/Gender_screen.dart';
import 'package:low_calories_app/pages/NavBar/Custom_NavBar/NavBar.dart';

class SensitivitiesScreen extends StatefulWidget {
  const SensitivitiesScreen({super.key});

  @override
  State<SensitivitiesScreen> createState() => _SensitivitiesScreenState();
}

class _SensitivitiesScreenState extends State<SensitivitiesScreen> {
  String? protein;
  bool click = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff85BE46),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(),
                  child: Column(
                    children: [
                      SizedBox(height: 35.h),
                      SizedBox(
                          height: 160.h,
                          width: 185.w,
                          child: Image.asset(
                              "Images/Create_Account/Body data/sensitivities/sensitivities.png")),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              top: 200.h,
              right: 0,
              left: 0,
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.71,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12.r),
                        topRight: Radius.circular(12.r)),
                    color: Colors.white),
                child: Padding(
                  padding: EdgeInsets.all(12.h),
                  child: Column(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 2.h,
                            ),
                            Row(
                              children: [
                                Text(
                                  '5 of 5',
                                  style: TextStyle(
                                    color: const Color(0xFF5A5D61),
                                    fontSize: 12.5.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 25.h),
                            Row(
                              children: [
                                Text(
                                  'Do you have any allergies?',
                                  style: TextStyle(
                                    color: const Color(0xFF12161C),
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10.h),
                            Row(
                              children: [
                                Text(
                                  'Write down the foods that cause you allergies',
                                  style: TextStyle(
                                    color: const Color(0xFF5A5D61),
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 25.h),
                            Row(
                              children: [
                                Text(
                                  'I am allergic to',
                                  style: TextStyle(
                                    color: const Color(0xFF12161C),
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10.h),
                            Column(children: [
                              Container(
                                width: 350.w,
                                height: 40.h,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        color: Color(0xFFDCDCDD)),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(right: 5.w, left: 10.w),
                                  child: DropdownButton(
                                    isExpanded: true,
                                    underline: const Divider(
                                      thickness: 0,
                                      color: Colors.white,
                                    ),
                                    borderRadius: BorderRadius.circular(10.r),
                                    iconEnabledColor: const Color(0xffC1C2C3),
                                    iconSize: 35,
                                    hint: Text(
                                      'Choose foods that cause you allergies',
                                      style: TextStyle(
                                        color: const Color(0xFFC1C2C3),
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    items: ["Meat", "Fish", "Chicken", "tuna"]
                                        .map((e) => DropdownMenuItem(
                                              value: e,
                                              child: Text(e),
                                            ))
                                        .toList(),
                                    onChanged: (val) {
                                      setState(() {
                                        protein = val;
                                      });
                                    },
                                    value: protein,
                                  ),
                                ),
                              ),
                            ]),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      width: 70.w,
                                      height: 25.h,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 4),
                                      decoration: ShapeDecoration(
                                        color: const Color(0xFFEDF5E3),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          const Icon(
                                            Icons.close,
                                            size: 20,
                                            color: Color(0xFF85BE46),
                                          ),
                                          SizedBox(width: 4.w),
                                          Text(
                                            'Meat',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: const Color(0xFF85BE46),
                                              fontSize: 13.sp,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 5.w),
                                Column(
                                  children: [
                                    Container(
                                      width: 70.w,
                                      height: 25.h,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 4),
                                      decoration: ShapeDecoration(
                                        color: const Color(0xFFEDF5E3),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          const Icon(
                                            Icons.close,
                                            size: 20,
                                            color: Color(0xFF85BE46),
                                          ),
                                          SizedBox(width: 4.w),
                                          Text(
                                            'Fish',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: const Color(0xFF85BE46),
                                              fontSize: 13.sp,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Column(
                              children: [
                                MaterialButton(
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          insetPadding: EdgeInsets.all(10.r),
                                          content: SizedBox(
                                            height: 320.h,
                                            width: 250.w,
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: 160.h,
                                                  width: 160.w,
                                                  child: Image.asset(
                                                      "Images/Create_Account/Verification/Congratulations.png"),
                                                ),
                                                SizedBox(height: 15.h),
                                                Column(
                                                  children: [
                                                    Text(
                                                      'Congratulations',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        color: const Color(
                                                            0xFF12161C),
                                                        fontSize: 20.sp,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                    SizedBox(height: 10.h),
                                                    Text.rich(
                                                      TextSpan(
                                                        children: [
                                                          TextSpan(
                                                            text: 'You won ',
                                                            style: TextStyle(
                                                              color: const Color(
                                                                  0xFF12161C),
                                                              fontSize: 23.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text: '50',
                                                            style: TextStyle(
                                                              color: const Color(
                                                                  0xFF85BE46),
                                                              fontSize: 23.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text: ' points',
                                                            style: TextStyle(
                                                              color: const Color(
                                                                  0xFF12161C),
                                                              fontSize: 23.sp,
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 15.h),
                                                MaterialButton(
                                                  onPressed: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (BuildContext
                                                                    context) =>
                                                                const NavBar()));
                                                  },
                                                  color:
                                                      const Color(0xff85BE46),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.r)),
                                                  textColor: Colors.white,
                                                  height: 45.h,
                                                  minWidth: 300.w,
                                                  child: Text(
                                                    'Collect',
                                                    style: TextStyle(
                                                      color: const Color(
                                                          0xffFFFFFF),
                                                      fontSize: 14.5.sp,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          backgroundColor:
                                              const Color(0xffFFFFFF),
                                          contentPadding: EdgeInsets.fromLTRB(
                                              10.w, 10.h, 10.w, 10.h),
                                        );
                                      },
                                    );
                                  },
                                  color: const Color(0xFF85BE46),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6.r)),
                                  textColor: Colors.white,
                                  height: 42.h,
                                  minWidth: double.infinity,
                                  child: Text(
                                    'Continue',
                                    style: TextStyle(
                                        color: const Color(0xffFFFFFF),
                                        fontSize: 14.5.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              const GenderScreen()));
                                },
                                child: Text(
                                  'Back',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: const Color(0xFF85BE46),
                                    fontSize: 12.5.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
