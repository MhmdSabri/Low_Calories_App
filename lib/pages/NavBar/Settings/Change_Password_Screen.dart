import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Low_Calories/pages/NavBar/Settings/ForgotYourPasswordSettings.dart';
import 'package:Low_Calories/pages/NavBar/Settings/Settings_Screen.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  late bool secret = true;
  late bool secret2 = true;
  late bool secret3 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          const SettingsScreen()));
            },
            icon: const Icon(Icons.arrow_circle_left_outlined)),
        title: Text(
          "Add New Payment",
          style: TextStyle(
            color: const Color(0xFF12161C),
            fontSize: 14.sp,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(left: 12.r, right: 12.r, bottom: 12.r),
        child: Column(children: [
          Row(
            children: [
              Text(
                'Current Password',
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
          Column(children: [
            TextFormField(
                obscureText: secret,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.r),
                      borderSide: const BorderSide(color: Color(0xFFEBEBEC))),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.r),
                      borderSide:
                          const BorderSide(width: 1, color: Color(0xFFEBEBEC))),
                  contentPadding: EdgeInsets.fromLTRB(10.w, 12.h, 20.w, 10.h),
                  hintText: 'Enter your password',
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          secret = !secret;
                        });
                      },
                      icon: Image.asset("Images/Create_Account/eye (1).png")),
                  fillColor: const Color(0xffFFFFFF),
                  filled: true,
                  labelStyle: TextStyle(
                    color: const Color(0xFF5A5D61),
                    fontSize: 12.5.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  hintStyle: TextStyle(
                    color: const Color(0xFF5A5D61),
                    fontSize: 12.5.sp,
                    fontWeight: FontWeight.w400,
                  ),
                )),
          ]),
          SizedBox(height: 10.h),
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
              obscureText: secret2,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.r),
                      borderSide: const BorderSide(color: Color(0xFFEBEBEC))),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.r),
                      borderSide:
                          const BorderSide(width: 1, color: Color(0xFFEBEBEC))),
                  contentPadding: EdgeInsets.fromLTRB(10.w, 12.h, 20.w, 10.h),
                  hintText: 'Enter your password',
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          secret2 = !secret2;
                        });
                      },
                      icon: Image.asset("Images/Create_Account/eye (1).png")),
                  fillColor: const Color(0xffFFFFFF),
                  filled: true,
                  labelStyle: TextStyle(
                    color: const Color(0xFF5A5D61),
                    fontSize: 12.5.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  hintStyle: TextStyle(
                    color: const Color(0xFF5A5D61),
                    fontSize: 12.5.sp,
                    fontWeight: FontWeight.w400,
                  )),
            ),
          ]),
          SizedBox(height: 10.h),
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
                obscureText: secret3,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.r),
                      borderSide: const BorderSide(color: Color(0xFFEBEBEC))),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.r),
                      borderSide:
                          const BorderSide(width: 1, color: Color(0xFFEBEBEC))),
                  contentPadding: EdgeInsets.fromLTRB(10.w, 12.h, 20.w, 10.h),
                  hintText: 'Enter your password',
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          secret3 = !secret3;
                        });
                      },
                      icon: Image.asset("Images/Create_Account/eye (1).png")),
                  fillColor: const Color(0xffFFFFFF),
                  filled: true,
                  labelStyle: TextStyle(
                    color: const Color(0xFF5A5D61),
                    fontSize: 12.5.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  hintStyle: TextStyle(
                    color: const Color(0xFF5A5D61),
                    fontSize: 12.5.sp,
                    fontWeight: FontWeight.w400,
                  ),
                )),
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
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const ForgotYourPasswordSettings()));
                },
                child: Text(
                  "Forgot Password",
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
