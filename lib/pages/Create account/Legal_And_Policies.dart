import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:low_calories_app/pages/Create%20account/Create_Account.dart';

class LegalAndPolicies extends StatefulWidget {
  const LegalAndPolicies({super.key});

  @override
  State<LegalAndPolicies> createState() => _LegalAndPoliciesState();
}

class _LegalAndPoliciesState extends State<LegalAndPolicies> {
  late bool secret = true;
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
                SizedBox(
                  height: 40.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(13.r),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const CreateAccount()));
                        },
                        child: const Icon(
                          Icons.arrow_circle_left_outlined,
                          size: 28,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 37.w,
                    ),
                    Column(
                      children: [
                        SizedBox(
                            width: 185.w,
                            child: SizedBox(
                              height: 110.h,
                              child: Image.asset(
                                  "Images/Create_Account/Legal and Policies/Legal and Policies.png"),
                            )),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
              top: 150.h,
              right: 0,
              left: 0,
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12.r),
                        topRight: Radius.circular(12.r)),
                    color: Colors.white),
                child: SizedBox(
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    padding: EdgeInsets.only(top: 5.r, bottom: 10.r),
                    children: [
                      Padding(
                        padding: EdgeInsets.all(13.w),
                        child: Column(children: [
                          Row(
                            children: [
                              Text(
                                'Legal and Policies',
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
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. At aliquet posuere duis tortor quam leo mollis feugiat consectetur. Adipiscing sodales suspendisse volutpat consequat, sed. Nunc ultricies habitant posuere a, quam aliquet mattis montes, pharetra. Adipiscing sed ultricies amet nunc. Imperdiet non ac, convallis morbi id molestie accumsan. Tincidunt enim mauris morbi lobortis eu elementum viverra lectus nunc. Cursus habitasse non euismod mollis amet pellentesque habitasse. Auctor sed elit, vitae lacus. Sit cursus ac eget mollis nisi, lectus sit. Sagittis nascetur eget sagittis nulla eget nulla leo sapien mattis. Aenean at faucibus ultricies amet.\nAt gravida sed tortor venenatis, phasellus faucibus sit pellentesque bibendum. Risus nisl erat turpis quam nisl, commodo. Elit nunc, feugiat risus phasellus fames sed. Integer feugiat luctus volutpat volutpat tristique. Lacus, enim sit eget molestie diam libero vitae. Sapien purus eget vel felis consectetur massa nulla elit.',
                              style: TextStyle(
                                  color: const Color(0xFF12161C),
                                  fontSize: 16.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 1.4),
                            ),
                          ),
                        ]),
                      ),
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
