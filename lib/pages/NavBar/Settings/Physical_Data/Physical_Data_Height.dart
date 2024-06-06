import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:Low_Calories/pages/NavBar/Settings/Physical_Data/PhysicalDataWeight.dart';
import 'package:vertical_weight_slider/vertical_weight_slider.dart';

class PhysicalDataHeight extends StatefulWidget {
  const PhysicalDataHeight({super.key});

  @override
  State<PhysicalDataHeight> createState() => _PhysicalDataHeightState();
}

class _PhysicalDataHeightState extends State<PhysicalDataHeight> {
  late WeightSliderController controller;
  double height = 170.0;

  @override
  void initState() {
    super.initState();
    controller = WeightSliderController(
        initialWeight: height, minWeight: 0, interval: 0.1);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
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
                              "Images/Create_Account/Body data/height/height.png")),
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
                                  '1 of 5',
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
                                  'What is your height?',
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
                                  'Choose your height in centimeters',
                                  style: TextStyle(
                                    color: const Color(0xFF5A5D61),
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height: 100.0,
                                  alignment: Alignment.center,
                                  child: Text(
                                    "${height.toStringAsFixed(1)} cm",
                                    style: TextStyle(
                                        fontSize: 23.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                SizedBox(
                                  width: 150.w,
                                  child: VerticalWeightSlider(
                                    controller: controller,
                                    decoration: PointerDecoration(
                                      width: 80.w,
                                      height: 2.h,
                                      largeColor: const Color(0xFF85BE46),
                                      mediumColor: const Color(0xFF85BE46),
                                      smallColor: const Color(0xFF85BE46),
                                      gap: 20.0,
                                    ),
                                    onChanged: (double value) {
                                      setState(() {
                                        height = value;
                                      });
                                    },
                                    indicator: Container(
                                      height: 3.0,
                                      width: 120.0,
                                      alignment: Alignment.centerLeft,
                                      color: const Color(0xFF85BE46),
                                    ),
                                  ),
                                ),
                              ],
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
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                const PhysicalDataWeight()));
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
