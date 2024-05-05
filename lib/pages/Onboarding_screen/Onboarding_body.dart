import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:low_calories_app/pages/Create%20account/Create_Account.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BoardingModel {
  final String image;
  final String title;
  final String sub;
  final String buttonsub;

  BoardingModel({
    required this.image,
    required this.title,
    required this.sub,
    required this.buttonsub,
  });
}

bool isLast = false;

class OnboardingBody extends StatefulWidget {
  const OnboardingBody({super.key});

  @override
  State<OnboardingBody> createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {
  var controller = PageController();
  List<BoardingModel> boarding = [
    BoardingModel(
        image: "Images/Onboarding/Onboarding1/Onboarding1.png",
        title: 'Explore the Suitable Dietary Plan',
        sub:
            'Explore the appropriate dietary plan for your health and nutritional needs through healthy and delicious options available',
        buttonsub: "Next"),
    BoardingModel(
        image: "Images/Onboarding/Onboarding2/Onboarding2.png",
        title: "Available Diverse Meals",
        sub:
            "Enjoy a diverse experience of delicious meals and discover the available options to meet your varied dietary preferences",
        buttonsub: "Next"),
    BoardingModel(
        image: "Images/Onboarding/Onboarding3/Onboarding3.png",
        title: "Points and Rewards System",
        sub:
            "Earn points with orders, redeem for rewards, and enjoy exclusive discounts for a rewarding dining experience",
        buttonsub: "Next"),
    BoardingModel(
        image: "Images/Onboarding/Onboarding4/Onboarding4.png",
        title: "Alerts and Reminders System",
        sub:
            "Receive important alerts for meals of interest and health reminders to maintain well-being and achieve dietary goals",
        buttonsub: "Start")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff85BE46),
      body: Column(children: [
        SizedBox(
          height: 630.h,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.all(15.r),
            child: PageView.builder(
              controller: controller,
              onPageChanged: (int index) {
                if (index == boarding.length - 1) {
                  setState(() {
                    isLast = true;
                  });
                } else {
                  setState(() {
                    isLast = false;
                  });
                }
              },
              itemBuilder: (context, index) =>
                  buildBordingItem(boarding[index]),
              itemCount: boarding.length,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SmoothPageIndicator(
              controller: controller,
              count: boarding.length,
              axisDirection: Axis.horizontal,
              effect: ScaleEffect(
                  activePaintStyle: PaintingStyle.stroke,
                  activeDotColor: const Color(0xffFFFFFF),
                  dotColor: const Color(0xffFFFFFF),
                  dotHeight: 7.h,
                  dotWidth: 7.w,
                  radius: 25.r,
                  scale: 1.8),
            ),
          ],
        ),
      ]),
    );
  }

  Widget buildBordingItem(BoardingModel model) => Column(
        children: [
          SizedBox(
            height: 80.h,
          ),
          Padding(
            padding: EdgeInsets.all(15.r),
            child: SizedBox(
                height: 250.h, width: 280.w, child: Image.asset(model.image)),
          ),
          SizedBox(height: 20.h),
          Column(
            children: [
              Container(
                width: 320.w,
                height: 218.h,
                decoration: ShapeDecoration(
                  color: const Color(0xffFFFFFF),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.r)),
                ),
                child: Padding(
                  padding: EdgeInsets.all(15.r),
                  child: Column(children: [
                    Text(
                      model.title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color(0xFF12161C),
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: model.sub,
                        style: TextStyle(
                            color: const Color(0xFF5A5D61),
                            fontSize: 13.sp,
                            fontFamily: 'Segoe UI',
                            fontWeight: FontWeight.w400,
                            height: 1.1.h),
                        children: const <TextSpan>[],
                      ),
                    ),
                    SizedBox(height: 15.h),
                    MaterialButton(
                      onPressed: () {
                        if (isLast) {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const CreateAccount()));
                        } else {
                          controller.nextPage(
                              duration: const Duration(microseconds: 300),
                              curve: Curves.fastEaseInToSlowEaseOut);
                        }
                      },
                      color: const Color(0xFF85BE46),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.r)),
                      textColor: Colors.white,
                      height: 42.h,
                      minWidth: double.infinity,
                      child: Text(
                        model.buttonsub,
                        style: TextStyle(
                            color: const Color(0xffFFFFFF),
                            fontSize: 14.5.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 46.h,
                          padding: EdgeInsets.all(14.w),
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.w)),
                          ),
                          child: Row(
                            // mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              const CreateAccount()));
                                },
                                child: Text(
                                  'Skip',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: const Color(0xFF85BE46),
                                    fontSize: 14.5.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ]),
                ),
              ),
            ],
          )
        ],
      );
}
