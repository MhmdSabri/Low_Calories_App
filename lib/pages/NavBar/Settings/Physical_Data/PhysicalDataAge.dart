// import 'package:datepicker_dropdown/order_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:low_calories_app/pages/NavBar/Settings/Physical_Data/PhysicalDataWeight.dart';
import 'package:low_calories_app/pages/NavBar/Settings/Physical_Data/Physical_Data_Gender.dart';

// import 'package:datepicker_dropdown/datepicker_dropdown.dart';

class PhysicalDataAge extends StatefulWidget {
  const PhysicalDataAge({super.key});

  @override
  State<PhysicalDataAge> createState() => _PhysicalDataAgeState();
}

class _PhysicalDataAgeState extends State<PhysicalDataAge> {
  DateTime date = DateTime.now();
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
                          child: Image.asset("Images/Body_data/age.png")),
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
                                  '3 of 5',
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
                                  "What's your birthday?",
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
                                  'Select your date of birth',
                                  style: TextStyle(
                                    color: const Color(0xFF5A5D61),
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10.h),
                            Column(
                              children: [
                                Text('${date.day}/${date.month}/${date.year}'),
                                SizedBox(height: 10.h),
                                MaterialButton(
                                  onPressed: () async {
                                    DateTime? newDate = await showDatePicker(
                                        builder: (BuildContext context,
                                            Widget? child) {
                                          return Theme(
                                            data: ThemeData(
                                              splashColor: Colors.black,
                                              textTheme: const TextTheme(),
                                              colorScheme:
                                                  const ColorScheme.light(
                                                primary: Color(0xFF85BE46),
                                                //
                                              ),
                                            ),
                                            child: child ?? const Text(""),
                                          );
                                        },
                                        context: context,
                                        firstDate: DateTime(1950),
                                        lastDate: DateTime(2100));

                                    if (newDate == null) return;
                                    setState(() {
                                      date = newDate;
                                    });
                                  },
                                  color: const Color(0xFF85BE46),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6.r)),
                                  textColor: Colors.white,
                                  height: 42.h,
                                  minWidth: 150.w,
                                  child: Text(
                                    'Select a date',
                                    style: TextStyle(
                                        color: const Color(0xffFFFFFF),
                                        fontSize: 14.5.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            )
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
                                                const PhysicalDataGender()));
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
                                              const PhysicalDataWeight()));
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
