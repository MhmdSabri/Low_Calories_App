import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:low_calories_app/pages/NavBar/Settings/My_Payment/Add_New_Payment.dart';
import 'package:low_calories_app/pages/NavBar/Settings/My_Payment/Change_Payment_Screen.dart';
import 'package:low_calories_app/pages/NavBar/Settings/Settings_Screen.dart';

class MyPaymentScreen extends StatefulWidget {
  const MyPaymentScreen({super.key});

  @override
  State<MyPaymentScreen> createState() => _MyPaymentScreenState();
}

class _MyPaymentScreenState extends State<MyPaymentScreen> {
  String? payment;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(10.w),
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  SizedBox(height: 30.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      Text(
                        "My Payment",
                        style: TextStyle(
                          color: const Color(0xFF12161C),
                          fontSize: 14.5.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const AddNewPayment()));
                        },
                        child: const Icon(
                          Icons.add_circle_outline_outlined,
                          color: Color(0xff5A5D61),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Container(
                    width: double.infinity,
                    height: 90.h,
                    padding: EdgeInsets.only(right: 8.r),
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
                          children: [
                            Theme(
                              data: ThemeData(
                                  unselectedWidgetColor:
                                      const Color(0xff5A5D61)),
                              child: Flexible(
                                fit: FlexFit.loose,
                                child: RadioListTile(
                                  activeColor: const Color(0xff85BE46),
                                  contentPadding: EdgeInsets.only(left: 15.w),
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                  title: Row(
                                    children: [
                                      SvgPicture.asset(
                                          "Images/HomePage/payNow/visa.svg"),
                                      SizedBox(
                                        width: 30.w,
                                      ),
                                      Text(
                                        '**** **** **** 2389',
                                        style: TextStyle(
                                          color: const Color(0xFF12161C),
                                          fontSize: 11.sp,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                  value: "visa",
                                  groupValue: payment,
                                  onChanged: (val) {
                                    setState(() {
                                      payment = val;
                                    });
                                  },
                                ),
                              ),
                            )
                          ],
                        ),
                        // SizedBox(height: 10.h),
                        Padding(
                          padding: EdgeInsets.only(left: 15.r),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              const ChangePaymentScreen()));
                                },
                                child: Text(
                                  'Edit Payment',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: const Color(0xFF85BE46),
                                    fontSize: 12.5.sp,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Container(
                    width: 340.w,
                    height: 80.h,
                    padding: EdgeInsets.only(right: 8.r),
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
                          children: [
                            Theme(
                              data: ThemeData(
                                  unselectedWidgetColor:
                                      const Color(0xff5A5D61)),
                              child: Flexible(
                                fit: FlexFit.loose,
                                child: RadioListTile(
                                  activeColor: const Color(0xff85BE46),
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                  contentPadding: EdgeInsets.only(left: 15.w),
                                  title: Row(
                                    children: [
                                      SvgPicture.asset(
                                          "Images/HomePage/payNow/mastercard.svg"),
                                      SizedBox(
                                        width: 30.w,
                                      ),
                                      Text(
                                        '**** **** **** 2389',
                                        style: TextStyle(
                                          color: const Color(0xFF12161C),
                                          fontSize: 11.sp,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                  value: "masterCard",
                                  groupValue: payment,
                                  onChanged: (val) {
                                    setState(() {
                                      payment = val;
                                    });
                                  },
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15.r),
                          child: Row(
                            children: [
                              Text(
                                'Edit Payment',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: const Color(0xFF85BE46),
                                  fontSize: 12.5.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
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
                        onPressed: () {},
                        color: const Color(0xFF85BE46),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.w)),
                        textColor: Colors.white,
                        height: 42.h,
                        minWidth: double.infinity,
                        child: Text(
                          'Select Cerd',
                          style: TextStyle(
                              color: const Color(0xffFFFFFF),
                              fontSize: 14.5.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
          ],
        ),
      ),
    );
  }
}
