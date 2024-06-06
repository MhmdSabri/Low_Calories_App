import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Low_Calories/pages/Body_data/Age_screen.dart';
import 'package:Low_Calories/pages/Body_data/Height_screen.dart';
import 'package:animated_weight_picker/animated_weight_picker.dart';

class WeightScreen extends StatefulWidget {
  const WeightScreen({super.key});

  @override
  State<WeightScreen> createState() => _WeightScreenState();
}

class _WeightScreenState extends State<WeightScreen> {
  final double min = 0;
  final double max = 250;
  String selectedValue = '';
  @override
  void initState() {
    selectedValue = min.toString();
    super.initState();
  }

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
                              "Images/Create_Account/Body data/weight/weight.png")),
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
                                  '2 of 5',
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
                                  'What is your current weight?',
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
                                  'Choose your weight in kilograms',
                                  style: TextStyle(
                                    color: const Color(0xFF5A5D61),
                                    fontSize: 13.sp,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 40.h),
                            AnimatedWeightPicker(
                                dialColor: const Color(0xFF85BE46),
                                majorIntervalColor: const Color(0xFF85BE46),
                                majorIntervalThickness: 2,
                                dialThickness: 2,
                                suffixTextColor: Colors.black,
                                subIntervalColor: const Color(0xFF85BE46),
                                selectedValueStyle: TextStyle(
                                  color: const Color(0xFF12161C),
                                  fontSize: 22.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                                min: min,
                                max: max,
                                onChange: (newValue) {
                                  setState(() {
                                    selectedValue = newValue;
                                  });
                                }),
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
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                const AgeScreen()));
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
                                              const HeightScreen()));
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
