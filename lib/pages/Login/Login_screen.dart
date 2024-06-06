import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:Low_Calories/pages/Create%20account/Create_Account.dart';

import 'package:Low_Calories/pages/Login/Forgot_your_password.dart';
// import 'package:Low_Calories/pages/Login/LoginVerification.dart';
import 'package:Low_Calories/pages/NavBar/Custom_NavBar/NavBar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late bool secret = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
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
                              "Images/Create_Account/Create account.png")),
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
                  child: Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: SingleChildScrollView(
                      child: Column(children: [
                        Row(
                          children: [
                            Text(
                              'Hi, Welcome Back!',
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
                            'Please enter your information to open your account',
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
                        SizedBox(height: 10.h),
                        Column(children: [
                          IntlPhoneField(
                            decoration: InputDecoration(
                              labelText: 'Enter your phone number  ',
                              contentPadding: EdgeInsets.only(
                                  top: 12.r,
                                  bottom: 10.r,
                                  right: 10.r,
                                  left: 10.r),
                              labelStyle: TextStyle(
                                color: const Color(0xFFC1C2C3),
                                fontSize: 12.5.sp,
                                fontWeight: FontWeight.w400,
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4.r),
                                  borderSide: const BorderSide(
                                      color: Color(0xFFEBEBEC))),
                              hintStyle: TextStyle(
                                color: const Color(0xFFC1C2C3),
                                fontSize: 12.5.sp,
                                fontWeight: FontWeight.w400,
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4.r),
                                  borderSide: const BorderSide(
                                      width: 1, color: Color(0xFFEBEBEC))),
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
                        SizedBox(height: 5.h),
                        Row(children: [
                          Text(
                            'Switch to email',
                            style: TextStyle(
                              color: const Color(0xFF5A5D61),
                              fontSize: 10.5.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ]),
                        SizedBox(height: 15.h),
                        Row(
                          children: [
                            Text(
                              'Password',
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
                          TextFormField(
                            obscureText: secret,
                            decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4.r),
                                    borderSide: const BorderSide(
                                        color: Color(0xFFEBEBEC))),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4.r),
                                    borderSide: const BorderSide(
                                        width: 1, color: Color(0xFFEBEBEC))),
                                contentPadding:
                                    EdgeInsets.fromLTRB(10.w, 12.h, 20.w, 10.h),
                                hintText: 'Enter your password',
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
                                hintStyle: TextStyle(
                                    color: const Color(0xFFC1C2C3),
                                    fontSize: 12.5.sp)),
                          ),
                        ]),
                        SizedBox(height: 5.h),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            const ForgotYourPassword()));
                              },
                              child: Text(
                                'Forgot your password?',
                                style: TextStyle(
                                  color: const Color(0xFF5A5D61),
                                  fontSize: 10.5.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15.h),
                        Column(
                          children: [
                            MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            const NavBar()));
                              },
                              color: const Color(0xFF85BE46),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6.r)),
                              textColor: Colors.white,
                              height: 42.h,
                              minWidth: double.infinity,
                              child: Text(
                                'Login',
                                style: TextStyle(
                                    color: const Color(0xffFFFFFF),
                                    fontSize: 14.5.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an account?",
                              style: TextStyle(
                                color: const Color(0xFF5A5D61),
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(width: 3.w),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            const CreateAccount()));
                              },
                              child: Text(
                                'Sign up',
                                style: TextStyle(
                                  color: const Color(0xFF85BE46),
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10.h),
                        const Column(
                          children: [
                            Text(
                              'Login as a guest',
                              style: TextStyle(
                                color: Color(0xFF85BE46),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        )
                      ]),
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
