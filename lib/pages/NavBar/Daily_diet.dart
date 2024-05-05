import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:low_calories_app/pages/NavBar/Meal_data.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';

class DailyDietScreen extends StatefulWidget {
  const DailyDietScreen({super.key});

  @override
  State<DailyDietScreen> createState() => _DailyDietScreenState();
}

class _DailyDietScreenState extends State<DailyDietScreen> {
  List dietPlanDetails = [
    "Images/HomePage/Diet Plan details2/Rectangle 7 (10).png",
    "Images/HomePage/Diet Plan details2/Rectangle 7 (11).png",
    "Images/HomePage/Diet Plan details2/Rectangle 7 (12).png",
    "Images/HomePage/Diet Plan details2/Rectangle 7 (13).png",
  ];

  List contBackground = [
    "Images/HomePage/Daily diet.Screen/Frame one.png",
    "Images/HomePage/Daily diet.Screen/Frame two.png",
    "Images/HomePage/Daily diet.Screen/Frame three.png",
    "Images/HomePage/Daily diet.Screen/Frame four.png",
  ];
  List mealImage = [
    "Images/HomePage/Daily diet.Screen/Toast with egg.png",
    "Images/HomePage/Daily diet.Screen/mac.png",
    "Images/HomePage/Daily diet.Screen/bread.png",
    "Images/HomePage/Daily diet.Screen/dessert.png",
  ];

  List mealNmae = [
    "Breakfast",
    "Lunch",
    "Dinner",
    "Dinner",
  ];

  List mealaDescription = [
    "Protein-rich, whole foods",
    "Meat, veggies, healthy fats",
    "Lean protein, veggies, nuts",
    "Nuts, fruits, lean protein",
  ];

  List mealKcal = [
    "375",
    "620",
    "479",
    "201",
  ];

  var controller = PageController();
  DatePickerController dp = DatePickerController();

  DateTime selectedValue = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.w),
          child: Column(children: [
            SizedBox(height: 30.h),
            Center(
              child: Text(
                'Paleo Diet',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFF12161C),
                  fontSize: 14.5.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 15.h),
            Column(
              children: [
                SizedBox(
                  height: 170.h,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      PageView.builder(
                        controller: controller,
                        physics: const RangeMaintainingScrollPhysics(),
                        itemCount: dietPlanDetails.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5.w),
                            child: SizedBox(
                              height: 170.h,
                              child: Image.asset(
                                dietPlanDetails[index],
                                fit: BoxFit.fill,
                              ),
                            ),
                          );
                        },
                      ),
                      Positioned(
                        bottom: 10.h,
                        right: 150.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SmoothPageIndicator(
                              controller: controller,
                              count: dietPlanDetails.length,
                              axisDirection: Axis.horizontal,
                              effect: WormEffect(
                                activeDotColor: const Color(0xffFFFFFF),
                                dotColor:
                                    const Color(0xffFFFFFF).withOpacity(0.50),
                                dotHeight: 7.h,
                                dotWidth: 7.w,
                                radius: 25.r,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Row(
              children: [
                Text(
                  'Paleo Diet',
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

            // Center(
            //   child: Column(
            //     children: [datePickerMethod()],
            //   ),
            // ),

            Row(
              children: [
                SizedBox(
                  width: 330.w,
                  child: Text(
                    'The Paleo Diet, short for the Paleolithic Diet, is a nutritional approach that aims to mimic the dietary patterns of our ancestors during the Stone Age. The fundamental concept is to consume foods that would have been available to hunter-gatherer communities, predating the advent of agriculture.',
                    style: TextStyle(
                        color: const Color(0xFF5A5D61),
                        fontSize: 12.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 1.4),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                DatePicker(
                  DateTime.now(),
                  initialSelectedDate: DateTime.now(),
                  selectionColor: const Color(0xFF85BE46),
                  selectedTextColor: Colors.white,
                  height: 80.h,
                  width: 55.w,
                  dayTextStyle: TextStyle(
                    color: const Color(0xFF85BE46),
                    fontSize: 9.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  monthTextStyle: TextStyle(
                    color: const Color(0xFF85BE46),
                    fontSize: 9.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  dateTextStyle: TextStyle(
                    color: const Color(0xFF85BE46),
                    fontSize: 19.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  deactivatedColor: const Color(0xFF85BE46),
                  calendarType: CalendarType.gregorianDate,
                  onDateChange: (date) {
                    setState(() {
                      selectedValue = date;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 10.h),

            Row(
              children: [
                Text(
                  'Meals of the day',
                  style: TextStyle(
                    color: const Color(0xFF12161C),
                    fontSize: 12.5.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Column(
              children: [
                SizedBox(
                  height: 170.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemCount: contBackground.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const MealDataScreen();
                              },
                            ),
                          );
                        },
                        child: Padding(
                          padding: EdgeInsets.only(right: 10.r),
                          child: Container(
                            width: 125.w,
                            height: 155.h,
                            decoration: ShapeDecoration(
                              image: DecorationImage(
                                image: AssetImage(contBackground[index]),
                                fit: BoxFit.fill,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.w),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(5.w),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                          height: 40.h,
                                          width: 45.w,
                                          child: Image.asset(mealImage[index])),
                                    ],
                                  ),
                                  SizedBox(height: 25.h),
                                  Row(
                                    children: [
                                      Text(
                                        mealNmae[index],
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14.5.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 7.h),
                                  SizedBox(
                                    width: 120.w,
                                    child: Text(
                                      mealaDescription[index],
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 8.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 12.h),
                                  Row(
                                    children: [
                                      Text.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                              text: mealKcal[index],
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 29.sp,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            TextSpan(
                                              text: 'Kcal',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }

  // DatePicker datePickerMethod() {
  //   return DatePicker(
  //     DateTime.now(),
  //     controller: dp,
  //     initialSelectedDate: DateTime.now(),
  //     selectionColor: Colors.blueAccent,
  //     selectedTextColor: Colors.white,
  //   );
  // }
}
