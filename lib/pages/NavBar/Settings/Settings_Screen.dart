import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:low_calories_app/pages/NavBar/Settings/Change_Password_Screen.dart';
import 'package:low_calories_app/pages/NavBar/Settings/Dashboard/DashboardScreen.dart';
import 'package:low_calories_app/pages/NavBar/Settings/ForgotYourPasswordSettings.dart';
import 'package:low_calories_app/pages/NavBar/Settings/Help_And_Support.dart';
import 'package:low_calories_app/pages/NavBar/Settings/Legal_And_Policies_Settings.dart';
import 'package:low_calories_app/pages/NavBar/Settings/My_Address/My_Address.dart';
import 'package:low_calories_app/pages/NavBar/Settings/My_Payment/My_Payment_Screen.dart';
import 'package:low_calories_app/pages/NavBar/Settings/Physical_Data/Physical_Data_Height.dart';
import 'package:low_calories_app/pages/NavBar/Settings/Profile_Settings.dart';
import 'package:low_calories_app/pages/NavBar/Settings/VerificationDeleteAccount.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  String? language;
  bool click = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.w),
          child: Column(children: [
            SizedBox(height: 30.h),
            Center(
              child: Text(
                'Settings',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFF12161C),
                  fontSize: 14.5.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 15.h),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Hi, Mohamed Elsherif',
                      style: TextStyle(
                        color: const Color(0xFF12161C),
                        fontSize: 12.5.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset("Images/HomePage/user/location.svg"),
                          SizedBox(
                            width: 3.w,
                          ),
                          Text(
                            'Riyadh City Boulevard, Riyadh',
                            style: TextStyle(
                              color: const Color(0xFF12161C),
                              fontSize: 10.5.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        const ProfileSettings()));
                          },
                          child: SvgPicture.asset(
                              "Images/NavBar/Settings/edit-2.svg"))
                    ]),
              ],
            ),
            SizedBox(height: 15.h),
            Row(children: [
              Text(
                'Personal Info',
                style: TextStyle(
                  color: const Color(0xFF5A5D61),
                  fontSize: 12.5.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ]),
            SizedBox(height: 10.h),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const PhysicalDataHeight()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                          "Images/NavBar/Settings/user-square.svg"),
                      SizedBox(width: 5.w),
                      Text(
                        'Physical Data',
                        style: TextStyle(
                          color: const Color(0xFF12161C),
                          fontSize: 14.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 12.r,
                        color: const Color(0xff12161C),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const DashboardScreen()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                          "Images/NavBar/Settings/personalcard.svg"),
                      SizedBox(width: 5.w),
                      Text(
                        'Dashboard',
                        style: TextStyle(
                          color: const Color(0xFF12161C),
                          fontSize: 14.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 12.r,
                        color: const Color(0xff12161C),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const MyAddressScreen()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset("Images/NavBar/Settings/location.svg"),
                      SizedBox(width: 5.w),
                      Text(
                        'My Adress',
                        style: TextStyle(
                          color: const Color(0xFF12161C),
                          fontSize: 14.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 12.r,
                        color: const Color(0xff12161C),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const MyPaymentScreen()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                          "Images/NavBar/Settings/empty-wallet.svg"),
                      SizedBox(width: 5.w),
                      Text(
                        'Payment Method',
                        style: TextStyle(
                          color: const Color(0xFF12161C),
                          fontSize: 14.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 12.r,
                        color: const Color(0xff12161C),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Row(
              children: [
                Text(
                  'Security',
                  style: TextStyle(
                    color: const Color(0xFF5A5D61),
                    fontSize: 12.5.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const ChangePasswordScreen()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset("Images/NavBar/Settings/lock.svg"),
                      SizedBox(width: 5.w),
                      Text(
                        'Change Password',
                        style: TextStyle(
                          color: const Color(0xFF12161C),
                          fontSize: 14.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 12.r,
                        color: const Color(0xff12161C),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const ForgotYourPasswordSettings()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset("Images/NavBar/Settings/unlock.svg"),
                      SizedBox(width: 5.w),
                      Text(
                        'Forgot Password',
                        style: TextStyle(
                          color: const Color(0xFF12161C),
                          fontSize: 14.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 12.r,
                        color: const Color(0xff12161C),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Row(children: [
              Text(
                'General',
                style: TextStyle(
                  color: const Color(0xFF5A5D61),
                  fontSize: 12.5.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ]),
            SizedBox(height: 10.h),
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.w),
                          topRight: Radius.circular(20.w))),
                  context: context,
                  builder: (context) {
                    return StatefulBuilder(
                        builder: ((BuildContext context, setState) {
                      return SizedBox(
                        height: MediaQuery.of(context).copyWith().size.height *
                            0.26,
                        width: double.infinity,
                        child: Padding(
                          padding: EdgeInsets.all(10.w),
                          child: Column(children: [
                            Column(children: [
                              SizedBox(height: 20.h),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    click = true;
                                  });
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: 50.h,
                                  padding: EdgeInsets.only(right: 8.r),
                                  decoration: ShapeDecoration(
                                    color: click
                                        ? const Color(0xffEDF5E3)
                                        : Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.w)),
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
                                      Padding(
                                        padding: EdgeInsets.all(15.w),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Arabic',
                                              style: TextStyle(
                                                color: !click
                                                    ? const Color(0xFFC1C2C3)
                                                    : const Color(0xff85BE46),
                                                fontSize: 14.5.sp,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            SvgPicture.asset(click
                                                ? "Images/NavBar/Settings/language/checked.svg"
                                                : "Images/NavBar/Settings/language/Radio_Unchecked (1).svg")
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.h),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    click = false;
                                  });
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: 50.h,
                                  padding: EdgeInsets.only(right: 8.r),
                                  decoration: ShapeDecoration(
                                    color: !click
                                        ? const Color(0xffEDF5E3)
                                        : Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.w)),
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
                                      Padding(
                                        padding: EdgeInsets.all(15.w),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'English',
                                              style: TextStyle(
                                                color: click
                                                    ? const Color(0xFFC1C2C3)
                                                    : const Color(0xff85BE46),
                                                fontSize: 14.5.sp,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            SvgPicture.asset(!click
                                                ? "Images/NavBar/Settings/language/checked.svg"
                                                : "Images/NavBar/Settings/language/Radio_Unchecked (1).svg")
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ]),
                          ]),
                        ),
                      );
                    }));
                  },
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset("Images/NavBar/Settings/global.svg"),
                      SizedBox(width: 5.w),
                      Text(
                        'Language',
                        style: TextStyle(
                          color: const Color(0xFF12161C),
                          fontSize: 14.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 12.r,
                        color: const Color(0xff12161C),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const LegalAndPoliciesSettingsScreen()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                          "Images/NavBar/Settings/security-user.svg"),
                      SizedBox(width: 5.w),
                      Text(
                        'Legal and Policies',
                        style: TextStyle(
                          color: const Color(0xFF12161C),
                          fontSize: 14.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 12.r,
                        color: const Color(0xff12161C),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const HelpAndSupport()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                          "Images/NavBar/Settings/shield-tick.svg"),
                      SizedBox(width: 5.w),
                      Text(
                        'Help & Support',
                        style: TextStyle(
                          color: const Color(0xFF12161C),
                          fontSize: 14.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 12.r,
                        color: const Color(0xff12161C),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      insetPadding: EdgeInsets.all(10.r),
                      content: SizedBox(
                        height: 320.h,
                        width: 260.w,
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
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: const Color(0xFF12161C),
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'You won ',
                                        style: TextStyle(
                                          color: const Color(0xFF12161C),
                                          fontSize: 23.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '50',
                                        style: TextStyle(
                                          color: const Color(0xFF85BE46),
                                          fontSize: 23.sp,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' points',
                                        style: TextStyle(
                                          color: const Color(0xFF12161C),
                                          fontSize: 23.sp,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            SizedBox(height: 15.h),
                            MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            const SettingsScreen()));
                              },
                              color: const Color(0xff85BE46),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6.r)),
                              textColor: Colors.white,
                              height: 45.h,
                              minWidth: 300.w,
                              child: Text(
                                'Collect',
                                style: TextStyle(
                                  color: const Color(0xffFFFFFF),
                                  fontSize: 14.5.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      backgroundColor: const Color(0xffFFFFFF),
                      contentPadding:
                          EdgeInsets.fromLTRB(10.w, 10.h, 10.w, 10.h),
                    );
                  },
                );
              },
              child: Row(
                children: [
                  SvgPicture.asset("Images/NavBar/Settings/share.svg"),
                  SizedBox(width: 5.w),
                  Text(
                    'Share App',
                    style: TextStyle(
                      color: const Color(0xFF12161C),
                      fontSize: 14.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      backgroundColor: Colors.white,
                      insetPadding: EdgeInsets.all(10.r),
                      content: SizedBox(
                        height: 250.h,
                        width: 240.w,
                        child: Column(children: [
                          Center(
                            child: Text(
                              'Add a review',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: const Color(0xFF85BE46),
                                fontSize: 20.sp,
                                fontFamily: 'Helvetica',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Center(
                            child: Text(
                              'Please select the appropriate rating',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: const Color(0xFF5A5D61),
                                fontSize: 14.sp,
                                fontFamily: 'Helvetica',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          SizedBox(height: 25.h),
                          SizedBox(
                            height: 28.h,
                            width: 125.w,
                            child: Row(children: [
                              SizedBox(
                                width: 20.w,
                                height: 24.h,
                                child: Column(
                                  children: [
                                    SvgPicture.asset(
                                        "Images/NavBar/Settings/Rating/star-02.svg")
                                  ],
                                ),
                              ),
                              SizedBox(width: 2.w),
                              SizedBox(
                                width: 20.w,
                                height: 24.h,
                                child: Column(
                                  children: [
                                    SvgPicture.asset(
                                        "Images/NavBar/Settings/Rating/star-02.svg")
                                  ],
                                ),
                              ),
                              SizedBox(width: 2.w),
                              SizedBox(
                                width: 20.w,
                                height: 24.h,
                                child: Column(
                                  children: [
                                    SvgPicture.asset(
                                        "Images/NavBar/Settings/Rating/star-02.svg")
                                  ],
                                ),
                              ),
                              SizedBox(width: 2.w),
                              SizedBox(
                                width: 20.w,
                                height: 24.h,
                                child: Column(
                                  children: [
                                    SvgPicture.asset(
                                        "Images/NavBar/Settings/Rating/star-02.svg")
                                  ],
                                ),
                              ),
                              SizedBox(width: 2.w),
                              SizedBox(
                                width: 20.w,
                                height: 24.h,
                                child: Column(
                                  children: [
                                    SvgPicture.asset(
                                        "Images/NavBar/Settings/Rating/star 11.svg")
                                  ],
                                ),
                              ),
                            ]),
                          ),
                          SizedBox(height: 20.h),
                          MaterialButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    insetPadding: EdgeInsets.all(10.r),
                                    content: SizedBox(
                                      height: 320.h,
                                      width: 260.w,
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
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color:
                                                      const Color(0xFF12161C),
                                                  fontSize: 20.sp,
                                                  fontWeight: FontWeight.w500,
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
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: '50',
                                                      style: TextStyle(
                                                        color: const Color(
                                                            0xFF85BE46),
                                                        fontSize: 23.sp,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: ' points',
                                                      style: TextStyle(
                                                        color: const Color(
                                                            0xFF12161C),
                                                        fontSize: 23.sp,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                textAlign: TextAlign.center,
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
                                                          const SettingsScreen()));
                                            },
                                            color: const Color(0xff85BE46),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(6.r)),
                                            textColor: Colors.white,
                                            height: 45.h,
                                            minWidth: 300.w,
                                            child: Text(
                                              'Collect',
                                              style: TextStyle(
                                                color: const Color(0xffFFFFFF),
                                                fontSize: 14.5.sp,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    backgroundColor: const Color(0xffFFFFFF),
                                    contentPadding: EdgeInsets.fromLTRB(
                                        10.w, 10.h, 10.w, 10.h),
                                  );
                                },
                              );
                            },
                            color: const Color(0xff85BE46),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.r)),
                            textColor: Colors.white,
                            height: 45.h,
                            minWidth: 300.w,
                            child: Text(
                              'Add a review',
                              style: TextStyle(
                                color: const Color(0xffFFFFFF),
                                fontSize: 14.5.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(height: 10.h),
                          MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const SettingsScreen()));
                            },
                            color: const Color(0xffEDF5E3),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.r)),
                            textColor: Colors.white,
                            height: 45.h,
                            minWidth: 300.w,
                            child: Text(
                              'Cancel',
                              style: TextStyle(
                                color: const Color(0xFF85BE46),
                                fontSize: 14.5.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ]),
                      ),
                    );
                  },
                );
              },
              child: Row(
                children: [
                  SvgPicture.asset("Images/NavBar/Settings/star.svg"),
                  SizedBox(width: 5.w),
                  Text(
                    'Rating App',
                    style: TextStyle(
                      color: const Color(0xFF12161C),
                      fontSize: 14.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Row(
              children: [
                Text(
                  'Account',
                  style: TextStyle(
                    color: const Color(0xFF5A5D61),
                    fontSize: 12.5.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.w),
                          topRight: Radius.circular(15.w))),
                  context: context,
                  builder: (context) {
                    return SizedBox(
                      height:
                          MediaQuery.of(context).copyWith().size.height * 0.29,
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.all(10.w),
                        child: Column(children: [
                          Center(
                            child: Text(
                              'Are you sure to delete your \naccount?',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: const Color(0xFF12161C),
                                fontSize: 18.sp,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Center(
                            child: Text(
                              'Your request to delete the application will be sent, and in the event of approval, the deletion will be notified directly, please be careful in this step',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 1.5),
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            children: [
                              Expanded(
                                child: MaterialButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                const SettingsScreen()));
                                  },
                                  color: const Color(0xff85BE46),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6.r)),
                                  textColor: Colors.white,
                                  height: 45.h,
                                  minWidth: 300.w,
                                  child: Text(
                                    'Cancle',
                                    style: TextStyle(
                                      color: const Color(0xffFFFFFF),
                                      fontSize: 14.5.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10.h),
                              Expanded(
                                child: MaterialButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                const VerificationDeleteAccount()));
                                  },
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6.r)),
                                  textColor: Colors.white,
                                  height: 45.h,
                                  minWidth: 300.w,
                                  child: Text(
                                    'Delete',
                                    style: TextStyle(
                                      color: const Color(0xFF85BE46),
                                      fontSize: 14.5.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ]),
                      ),
                    );
                  },
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                          "Images/NavBar/Settings/profile-delete.svg"),
                      SizedBox(width: 5.w),
                      Text(
                        'Delete account',
                        style: TextStyle(
                          color: const Color(0xFF12161C),
                          fontSize: 14.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 12.r,
                        color: const Color(0xff12161C),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.w),
                          topRight: Radius.circular(15.w))),
                  context: context,
                  builder: (context) {
                    return SizedBox(
                      height:
                          MediaQuery.of(context).copyWith().size.height * 0.23,
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.all(10.w),
                        child: Column(children: [
                          Center(
                            child: Text(
                              'Are you sure to Logout?',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: const Color(0xFF12161C),
                                  fontSize: 18.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 1.5),
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Center(
                            child: Text(
                              'Upon approval, you will be automatically logged out in a few moments',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12.sp,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            children: [
                              Expanded(
                                child: MaterialButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                const SettingsScreen()));
                                  },
                                  color: const Color(0xff85BE46),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6.r)),
                                  textColor: Colors.white,
                                  height: 45.h,
                                  minWidth: 300.w,
                                  child: Text(
                                    'Cancle',
                                    style: TextStyle(
                                      color: const Color(0xffFFFFFF),
                                      fontSize: 14.5.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10.h),
                              Expanded(
                                child: MaterialButton(
                                  onPressed: () {
                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //         builder: (BuildContext context) =>
                                    //             const SettingsScreen()));
                                  },
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6.r)),
                                  textColor: Colors.white,
                                  height: 45.h,
                                  minWidth: 300.w,
                                  child: Text(
                                    'Logout',
                                    style: TextStyle(
                                      color: const Color(0xFF85BE46),
                                      fontSize: 14.5.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ]),
                      ),
                    );
                  },
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset("Images/NavBar/Settings/logout.svg"),
                      SizedBox(width: 5.w),
                      Text(
                        'Logout',
                        style: TextStyle(
                          color: const Color(0xFFE92727),
                          fontSize: 14.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 12.r,
                        color: const Color(0xFFE92727),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
