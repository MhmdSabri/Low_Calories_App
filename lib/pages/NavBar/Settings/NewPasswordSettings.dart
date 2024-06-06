import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Low_Calories/pages/NavBar/Settings/Settings_Screen.dart';

class NewPasswordSettings extends StatefulWidget {
  const NewPasswordSettings({super.key});

  @override
  State<NewPasswordSettings> createState() => _NewPasswordSettingsState();
}

class _NewPasswordSettingsState extends State<NewPasswordSettings> {
  late bool secret = true;
  late bool secret2 = true;
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
                  width: 300.w,
                  decoration: const BoxDecoration(),
                  child: Column(
                    children: [
                      SizedBox(height: 35.h),
                      SizedBox(
                          height: 160.h,
                          width: 185.w,
                          child: Image.asset(
                              "Images/login/new_pasword/new_pasword.png")),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              top: 195.h,
              right: 0,
              left: 0,
              child: Container(
                width: double.infinity,
                height: 600.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12.r),
                        topRight: Radius.circular(12.r)),
                    color: Colors.white),
                child: Padding(
                  padding: EdgeInsets.all(12.r),
                  child: Column(children: [
                    Row(
                      children: [
                        Text(
                          'Create a New Password',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color(0xFF12161C),
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        'Enter your new password',
                        style: TextStyle(
                            color: const Color(0xFF12161C),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            height: 1.25.h),
                      ),
                    ),
                    SizedBox(height: 15.h),
                    Row(
                      children: [
                        Text(
                          'New Password',
                          style: TextStyle(
                            color: const Color(0xFF12161C),
                            fontSize: 12.5.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5.h),
                    Column(children: [
                      TextFormField(
                        obscureText: secret,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4.r),
                                borderSide:
                                    const BorderSide(color: Color(0xFFEBEBEC))),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4.r),
                                borderSide: const BorderSide(
                                    width: 1, color: Color(0xFFEBEBEC))),
                            contentPadding:
                                EdgeInsets.fromLTRB(10.w, 12.h, 20.w, 10.h),
                            hintText: 'Enter new password',
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    secret = !secret;
                                  });
                                },
                                icon: Image.asset(
                                    "Images/Create_Account/eye (1).png")),
                            fillColor: const Color(0xffFFFFFF),
                            filled: true,
                            labelStyle: TextStyle(
                              color: const Color(0xFF5A5D61),
                              fontSize: 12.5.sp,
                              fontWeight: FontWeight.w400,
                            ),
                            hintStyle: TextStyle(
                                color: const Color(0xff5A5D61),
                                fontSize: 12.5.sp,
                                fontWeight: FontWeight.w400)),
                      ),
                    ]),
                    SizedBox(height: 20.h),
                    Row(
                      children: [
                        Text(
                          'Confirm password',
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
                      TextFormField(
                        obscureText: secret2,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4.r),
                                borderSide:
                                    const BorderSide(color: Color(0xFFEBEBEC))),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4.r),
                                borderSide: const BorderSide(
                                    width: 1, color: Color(0xFFEBEBEC))),
                            contentPadding:
                                EdgeInsets.fromLTRB(10.w, 12.h, 20.w, 10.h),
                            hintText: 'Enter new password',
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    secret2 = !secret2;
                                  });
                                },
                                icon: Image.asset(
                                    "Images/Create_Account/eye (1).png")),
                            fillColor: const Color(0xffFFFFFF),
                            filled: true,
                            labelStyle: TextStyle(
                              color: const Color(0xFF5A5D61),
                              fontSize: 12.5.sp,
                              fontWeight: FontWeight.w400,
                            ),
                            hintStyle: TextStyle(
                                color: const Color(0xff5A5D61),
                                fontSize: 12.5.sp,
                                fontWeight: FontWeight.w400)),
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
                  ]),
                ),
              ))
        ],
      ),
    );
  }
}
