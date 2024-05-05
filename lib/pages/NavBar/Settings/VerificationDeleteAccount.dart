import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:low_calories_app/pages/NavBar/Settings/Settings_Screen.dart';
import 'package:otp_text_field/style.dart';
import 'package:otp_text_field/otp_text_field.dart';

class VerificationDeleteAccount extends StatelessWidget {
  const VerificationDeleteAccount({super.key});

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
                              "Images/Create_Account/Verification/Verification.png")),
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
                          'Enter OTP',
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
                        SizedBox(
                          width: double.infinity,
                          child: Text(
                            'We have just sent you 5 digit code via your phone number  ',
                            style: TextStyle(
                                color: const Color(0xFF5A5D61),
                                fontSize: 15.sp,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 1.4),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15.h),
                    OTPTextField(
                      otpFieldStyle: OtpFieldStyle(
                        borderColor: Colors.white,
                        enabledBorderColor: const Color(0xFFEBEBEC),
                        disabledBorderColor: Colors.black,
                        focusBorderColor: const Color(0xFFEBEBEC),
                      ),
                      fieldStyle: FieldStyle.box,
                      length: 5,
                      width: double.infinity,
                      fieldWidth: 50.w,
                      spaceBetween: 20,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF303645),
                      ),
                      textFieldAlignment: MainAxisAlignment.spaceBetween,
                      onCompleted: (pin) {},
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
                                        const SettingsScreen()));
                          },
                          color: const Color(0xFF85BE46),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.r)),
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
                    SizedBox(height: 15.h),
                    Column(
                      children: [
                        Text(
                          '37s',
                          style: TextStyle(
                            color: const Color(0xFF85BE46),
                            fontSize: 12.5.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Didn't receive code?",
                          style: TextStyle(
                            color: const Color(0xFF5A5D61),
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 3.w),
                        InkWell(
                          child: Text(
                            'Resend Code',
                            style: TextStyle(
                              color: const Color(0xFF85BE46),
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        )
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
