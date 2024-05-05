import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:low_calories_app/pages/NavBar/Settings/Settings_Screen.dart';

class ProfileSettings extends StatelessWidget {
  const ProfileSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(10.w),
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
                "Profile Settings",
                style: TextStyle(
                  color: const Color(0xFF12161C),
                  fontSize: 14.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 15.h),
          Row(
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 80.w,
                        height: 90.h,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 80.w,
                              height: 80.h,
                              decoration: ShapeDecoration(
                                image: const DecorationImage(
                                  image: AssetImage(
                                      "Images/NavBar/Settings/settingProfileImage.png"),
                                  fit: BoxFit.fill,
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7.w)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 3.h,
                        right: 30.w,
                        child: GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                              backgroundColor: Colors.white,
                              shape: ContinuousRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15.w),
                                      topRight: Radius.circular(15.w))),
                              context: context,
                              builder: (context) {
                                return SizedBox(
                                  height: MediaQuery.of(context)
                                          .copyWith()
                                          .size
                                          .height *
                                      0.30,
                                  width: double.infinity,
                                  child: Padding(
                                    padding: EdgeInsets.all(10.w),
                                    child: Column(
                                      children: [
                                        Column(
                                          children: [
                                            Text(
                                              'Change your picture',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: const Color(0xFF12161C),
                                                fontSize: 18.sp,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 10.h),
                                        Column(
                                          children: [
                                            Container(
                                              width: double.infinity,
                                              height: 40.h,
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10.w,
                                                  vertical: 6.h),
                                              decoration: ShapeDecoration(
                                                color: const Color(0xFFF1F4F4),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4.w)),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      SizedBox(
                                                        width: 27.w,
                                                        height: 27.h,
                                                        child: SvgPicture.asset(
                                                            "Images/NavBar/Settings/profile Settings/camera.svg"),
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(width: 12),
                                                  Text(
                                                    'Take a  Photo',
                                                    style: TextStyle(
                                                      color: const Color(
                                                          0xFF12161C),
                                                      fontSize: 16.sp,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 10.h),
                                        Column(
                                          children: [
                                            Container(
                                              width: double.infinity,
                                              height: 40.h,
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10.w,
                                                  vertical: 6.h),
                                              decoration: ShapeDecoration(
                                                color: const Color(0xFFF1F4F4),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4.w)),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      SizedBox(
                                                        width: 27.w,
                                                        height: 27.h,
                                                        child: SvgPicture.asset(
                                                            "Images/NavBar/Settings/profile Settings/folder-open.svg"),
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(width: 12),
                                                  Text(
                                                    'Choose from your file',
                                                    style: TextStyle(
                                                      color: const Color(
                                                          0xFF12161C),
                                                      fontSize: 16.sp,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 10.h),
                                        Column(
                                          children: [
                                            Container(
                                              width: double.infinity,
                                              height: 40.h,
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10.w,
                                                  vertical: 6.h),
                                              decoration: ShapeDecoration(
                                                color: const Color(0xFFFDEEEE),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4.w)),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      SizedBox(
                                                        width: 27.w,
                                                        height: 27.h,
                                                        child: SvgPicture.asset(
                                                            "Images/NavBar/Settings/profile Settings/trash.svg"),
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(width: 12),
                                                  Text(
                                                    'Take a  Photo',
                                                    style: TextStyle(
                                                      color: const Color(
                                                          0xFFE92727),
                                                      fontSize: 16.sp,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: Container(
                            width: 25.w,
                            height: 23.h,
                            padding: EdgeInsets.all(4.w),
                            decoration: ShapeDecoration(
                              color: const Color(0xFFEDF5E3),
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1, color: Colors.white),
                                borderRadius: BorderRadius.circular(17.w),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                    "Images/NavBar/Settings/gallery-edit.svg"),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 15.h),
          Row(
            children: [
              Text(
                'Full name',
                style: TextStyle(
                  color: const Color(0xFF12161C),
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Column(children: [
            TextFormField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.r),
                    borderSide:
                        const BorderSide(width: 1, color: Color(0xFFEBEBEC))),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.r),
                    borderSide:
                        const BorderSide(width: 1, color: Color(0xFFEBEBEC))),
                contentPadding: EdgeInsets.fromLTRB(10.r, 12.r, 15.r, 10.r),
                hintText: 'Huda Elsherif',
                fillColor: const Color(0xffFFFFFF),
                filled: true,
                hintStyle: TextStyle(
                  color: const Color(0xFFC1C2C3),
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ]),
          SizedBox(height: 10.h),
          Row(
            children: [
              Text(
                "E-mail",
                style: TextStyle(
                  color: const Color(0xFF12161C),
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Column(children: [
            TextFormField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.r),
                    borderSide:
                        const BorderSide(width: 1, color: Color(0xFFEBEBEC))),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.r),
                    borderSide:
                        const BorderSide(width: 1, color: Color(0xFFEBEBEC))),
                contentPadding: EdgeInsets.fromLTRB(10.r, 12.r, 15.r, 10.r),
                hintText: 'Enter your email address',
                fillColor: const Color(0xffFFFFFF),
                filled: true,
                hintStyle: TextStyle(
                  color: const Color(0xFFC1C2C3),
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ]),
          SizedBox(height: 15.h),
          Row(
            children: [
              Text(
                'Phone Number  ',
                style: TextStyle(
                  color: const Color(0xFF12161C),
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          SizedBox(height: 5.h),
          Column(children: [
            IntlPhoneField(
              decoration: InputDecoration(
                labelText: 'Enter your phone number  ',
                contentPadding: EdgeInsets.only(
                    top: 12.r, bottom: 10.r, right: 10.r, left: 10.r),
                labelStyle: TextStyle(
                  color: const Color(0xFFC1C2C3),
                  fontSize: 12.5.sp,
                  fontWeight: FontWeight.w400,
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.r),
                    borderSide: const BorderSide(color: Color(0xFFC1C2C3))),
                hintStyle: TextStyle(
                  color: const Color(0xFFC1C2C3),
                  fontSize: 12.5.sp,
                  fontWeight: FontWeight.w400,
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.r),
                    borderSide:
                        const BorderSide(width: 1, color: Color(0xFFEBEBEC))),
              ),
              initialCountryCode: 'EG',
              dropdownTextStyle: TextStyle(
                color: const Color(0xFFC1C2C3),
                fontSize: 12.5.sp,
                fontWeight: FontWeight.w400,
              ),
              disableLengthCheck: true,
              showCountryFlag: false,
              showDropdownIcon: false,
            ),
          ]),
          SizedBox(height: 15.h),
          Column(
            children: [
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const SettingsScreen()));
                },
                color: const Color(0xFF85BE46),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.r)),
                textColor: Colors.white,
                height: 42.h,
                minWidth: double.infinity,
                child: Text(
                  'Save',
                  style: TextStyle(
                      color: const Color(0xffFFFFFF),
                      fontSize: 14.5.sp,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          SizedBox(height: 15.h),
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
                              const SettingsScreen()));
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
        ]),
      ),
    );
  }
}
