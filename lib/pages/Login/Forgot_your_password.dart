import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:low_calories_app/pages/Login/LoginVerification.dart';
import 'package:low_calories_app/pages/Login/Login_screen.dart';

class ForgotYourPassword extends StatefulWidget {
  const ForgotYourPassword({super.key});

  @override
  State<ForgotYourPassword> createState() => _ForgotYourPasswordState();
}

class _ForgotYourPasswordState extends State<ForgotYourPassword> {
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
                              "Images/login/forgot_password/forgot_password.png")),
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
                          'Forgot Password',
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
                        'Recover your account password',
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
                      TextFormField(
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
                          hintText: 'Enter your phone number  ',
                          fillColor: const Color(0xffFFFFFF),
                          filled: true,
                          labelStyle: TextStyle(
                            color: const Color(0xFFC1C2C3),
                            fontSize: 12.5.sp,
                            fontWeight: FontWeight.w400,
                          ),
                          hintStyle: TextStyle(
                              color: const Color(0xFFC1C2C3),
                              fontWeight: FontWeight.w400,
                              fontSize: 12.5.sp),
                        ),
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
                                        const LoginVerification()));
                          },
                          color: const Color(0xFF85BE46),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.r)),
                          textColor: Colors.white,
                          height: 42.h,
                          minWidth: double.infinity,
                          child: Text(
                            'Send',
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
                                        const LoginScreen()));
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
              ))
        ],
      ),
    );
  }
}
