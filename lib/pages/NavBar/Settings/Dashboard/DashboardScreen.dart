import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:low_calories_app/pages/NavBar/Settings/Settings_Screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(12.w),
          child: Column(children: [
            SizedBox(height: 30.h),
            Row(
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.pop(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const SettingsScreen()));
                    },
                    child: const Icon(Icons.arrow_circle_left_outlined)),
                SizedBox(
                  width: 100.w,
                ),
                Text(
                  "Dashboard",
                  style: TextStyle(
                    color: const Color(0xFF12161C),
                    fontSize: 14.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Column(
              children: [
                SizedBox(
                  height: 315.h,
                  width: double.infinity,
                  child: Column(children: [
                    Image.asset(
                        "Images/NavBar/Settings/Dashboard/Dashboard.png")
                  ]),
                )
              ],
            ),
            SizedBox(height: 10.h),
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 180.h,
                  padding: EdgeInsets.all(10.w),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.w)),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x26353535),
                        blurRadius: 2,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Current length',
                            style: TextStyle(
                              color: const Color(0xFF12161C),
                              fontSize: 12.5.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '170 cm',
                            style: TextStyle(
                              color: const Color(0xFF5A5D61),
                              fontSize: 11.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Current weight',
                            style: TextStyle(
                              color: const Color(0xFF12161C),
                              fontSize: 12.5.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '60 kg',
                            style: TextStyle(
                              color: const Color(0xFF5A5D61),
                              fontSize: 11.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Current age',
                            style: TextStyle(
                              color: const Color(0xFF12161C),
                              fontSize: 12.5.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '24 Years',
                            style: TextStyle(
                              color: const Color(0xFF5A5D61),
                              fontSize: 11.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          Text(
                            'Current allergies',
                            style: TextStyle(
                              color: const Color(0xFF12161C),
                              fontSize: 12.5.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          'Pollen Allergy (Hay Fever):\nSymptoms include sneezing, runny or stuffy nose, and itchy eyes.el, like jewelry.',
                          style: TextStyle(
                              color: const Color(0xFF5A5D61),
                              fontSize: 11.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 1.5),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                Column(children: [
                  Container(
                    width: double.infinity,
                    height: 132.h,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.w)),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x26353535),
                          blurRadius: 2,
                          offset: Offset(0, 0),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10.w),
                      child: Column(children: [
                        Row(
                          children: [
                            Container(
                              width: 120.w,
                              height: 26,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8.w, vertical: 4.h),
                              decoration: ShapeDecoration(
                                color: const Color(0xFFEDF5E3),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(19),
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Current dietary plan',
                                    style: TextStyle(
                                      color: const Color(0xFF85BE46),
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
                        SizedBox(height: 10.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Name',
                              style: TextStyle(
                                color: const Color(0xFF12161C),
                                fontSize: 12.5.sp,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'Paleo Diet',
                              style: TextStyle(
                                color: const Color(0xFF5A5D61),
                                fontSize: 11.sp,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Start date',
                              style: TextStyle(
                                color: const Color(0xFF12161C),
                                fontSize: 12.5.sp,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              '29/11/2023',
                              style: TextStyle(
                                color: const Color(0xFF5A5D61),
                                fontSize: 11.sp,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'End date',
                              style: TextStyle(
                                color: const Color(0xFF12161C),
                                fontSize: 12.5.sp,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              '29/12/2023',
                              style: TextStyle(
                                color: const Color(0xFF5A5D61),
                                fontSize: 11.sp,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ]),
                    ),
                  )
                ]),
                SizedBox(height: 10.h),
                // Column(
                //   children: [
                //     Container(
                //       width: double.infinity,
                //       height: 125.h,
                //       decoration: ShapeDecoration(
                //         color: Colors.white,
                //         shape: RoundedRectangleBorder(
                //             borderRadius: BorderRadius.circular(4.w)),
                //         shadows: const [
                //           BoxShadow(
                //             color: Color(0x26353535),
                //             blurRadius: 2,
                //             offset: Offset(0, 0),
                //             spreadRadius: 0,
                //           )
                //         ],
                //       ),
                //     )
                //   ],
                // ),

                SizedBox(height: 10.h),
                ExpansionTile(
                    childrenPadding: EdgeInsets.zero,
                    collapsedShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.w),
                        side: BorderSide(
                          color: const Color(0x19000000).withOpacity(0.05),
                        )),
                    collapsedIconColor: const Color(0xff5A5D61),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.w),
                        side: BorderSide(
                          color: const Color(0x19000000).withOpacity(0.05),
                        )),
                    title: Column(
                      children: [
                        Container(
                          width: 330.w,
                          height: 32.h,
                          padding: EdgeInsets.symmetric(
                              horizontal: 5.r, vertical: 4.r),
                          decoration: ShapeDecoration(
                            color: const Color(0xFFF1F4F4),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Finished',
                                style: TextStyle(
                                  color: const Color(0xFF5A5D61),
                                  fontSize: 11.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                '29/10/2023',
                                style: TextStyle(
                                  color: Color(0xFF5A5D61),
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    children: [
                      ListTile(
                          title: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Name',
                                style: TextStyle(
                                  color: const Color(0xFF12161C),
                                  fontSize: 12.5.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(width: 12),
                              Text(
                                'Paleo Diet',
                                style: TextStyle(
                                  color: const Color(0xFF5A5D61),
                                  fontSize: 11.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Start date',
                                style: TextStyle(
                                  color: const Color(0xFF12161C),
                                  fontSize: 12.5.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(width: 12),
                              Text(
                                '29/11/2023',
                                style: TextStyle(
                                  color: const Color(0xFF5A5D61),
                                  fontSize: 11.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'End date',
                                style: TextStyle(
                                  color: const Color(0xFF12161C),
                                  fontSize: 12.5.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(width: 12),
                              Text(
                                '29/12/2023',
                                style: TextStyle(
                                  color: const Color(0xFF5A5D61),
                                  fontSize: 11.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ))
                    ]),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
