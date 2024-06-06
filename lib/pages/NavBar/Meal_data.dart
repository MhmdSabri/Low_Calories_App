import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Low_Calories/pages/NavBar/Daily_diet.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MealDataScreen extends StatefulWidget {
  const MealDataScreen({super.key});

  @override
  State<MealDataScreen> createState() => _MealDataScreenState();
}

class _MealDataScreenState extends State<MealDataScreen> {
  List dietPlanDetails = [
    "Images/HomePage/Daily diet.Screen/Meal data/MD1.png",
    "Images/HomePage/Daily diet.Screen/Meal data/MD2.png",
    "Images/HomePage/Daily diet.Screen/Meal data/MD3.png",
    "Images/HomePage/Daily diet.Screen/Meal data/MD4.png",
  ];

  var controller = PageController();
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
                          const DailyDietScreen()));
            },
            icon: const Icon(Icons.arrow_circle_left_outlined)),
        title: Text(
          'Medical instructions',
          style: TextStyle(
            color: const Color(0xFF12161C),
            fontSize: 14.sp,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 12.r, right: 12.r, bottom: 12.r),
          child: Column(children: [
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
                  'Breakfast',
                  style: TextStyle(
                    color: const Color(0xFF12161C),
                    fontSize: 20.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Row(
              children: [
                SizedBox(
                  width: 330.w,
                  child: Text(
                    'Scrambled Eggs with Vegetables and Avocado:',
                    style: TextStyle(
                      color: const Color(0xFF12161C),
                      fontSize: 10.5.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 76.h,
                  padding: const EdgeInsets.only(
                      top: 16, left: 8, right: 8, bottom: 8),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.w)),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x26353535),
                        blurRadius: 0.50,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: SizedBox(
                            width: 60.w,
                            child: Column(
                              children: [
                                Image.asset(
                                    "Images/HomePage/Daily diet.Screen/Meal data/Calories.png"),
                                SizedBox(height: 7.h),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 60.w,
                                      child: Text(
                                        'Calories',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: const Color(0xFF12161C),
                                          fontSize: 12.5.sp,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 5.h),
                                    Text.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: '357',
                                            style: TextStyle(
                                              color: const Color(0xFF5A5D61),
                                              fontSize: 11.5.sp,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'kcal',
                                            style: TextStyle(
                                              color: const Color(0xFF5A5D61),
                                              fontSize: 8.sp,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            width: 60.w,
                            child: Column(
                              children: [
                                Image.asset(
                                    "Images/HomePage/Daily diet.Screen/Meal data/Protein.png"),
                                SizedBox(height: 7.h),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 60.w,
                                      child: Text(
                                        'Protein',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: const Color(0xFF12161C),
                                          fontSize: 12.5.sp,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 5.h),
                                    Text.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: '21',
                                            style: TextStyle(
                                              color: const Color(0xFF5A5D61),
                                              fontSize: 11.5.sp,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'g',
                                            style: TextStyle(
                                              color: const Color(0xFF5A5D61),
                                              fontSize: 8.sp,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            width: 60.w,
                            child: Column(
                              children: [
                                Image.asset(
                                    "Images/HomePage/Daily diet.Screen/Meal data/Fats.png"),
                                SizedBox(height: 7.h),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 60.w,
                                      child: Text(
                                        'Fats',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: const Color(0xFF12161C),
                                          fontSize: 12.5.sp,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 5.h),
                                    Text.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: '32',
                                            style: TextStyle(
                                              color: const Color(0xFF5A5D61),
                                              fontSize: 11.5.sp,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'g',
                                            style: TextStyle(
                                              color: const Color(0xFF5A5D61),
                                              fontSize: 8.sp,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            width: 60.w,
                            child: Column(
                              children: [
                                Image.asset(
                                    "Images/HomePage/Daily diet.Screen/Meal data/Carbos.png"),
                                SizedBox(height: 7.h),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 60.w,
                                      child: Text(
                                        'Carbos',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: const Color(0xFF12161C),
                                          fontSize: 12.5.sp,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 5.h),
                                    Text.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: '19',
                                            style: TextStyle(
                                              color: const Color(0xFF5A5D61),
                                              fontSize: 11.5.sp,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'g',
                                            style: TextStyle(
                                              color: const Color(0xFF5A5D61),
                                              fontSize: 8.sp,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ]),
                )
              ],
            ),
            SizedBox(height: 10.h),
            Row(
              children: [
                Image.asset(
                    "Images/HomePage/Daily diet.Screen/Meal data/vegetables.png"),
                SizedBox(width: 5.w),
                SizedBox(
                  width: 290.w,
                  child: Text(
                    'Ingredients',
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
            SizedBox(height: 10.h),
            Column(
              children: [
                SizedBox(
                  width: 330.w,
                  child: Text(
                    '3 large eggs\n1/2 cup diced bell peppers (assorted colors)\n1/4 cup diced red onion\n1/2 cup cherry tomatoes, halved\n1 tablespoon olive oil or coconut oil\nSalt and pepper to taste\n1/2 avocado, sliced (for topping)',
                    style: TextStyle(
                        color: const Color(0xFF12161C),
                        fontSize: 10.5.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 1.5),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.h),
            Divider(
              color: const Color(0xFFEBEBEC),
              height: 1.h,
              thickness: 1.r,
              indent: 3.w,
              endIndent: 3.w,
            ),
            SizedBox(height: 10.h),
            Row(
              children: [
                Image.asset(
                    "Images/HomePage/Daily diet.Screen/Meal data/alarm.png"),
                SizedBox(width: 5.w),
                SizedBox(
                  width: 300.w,
                  child: Text(
                    'Suitable hours for eating',
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
            SizedBox(height: 10.h),
            Column(
              children: [
                SizedBox(
                  width: 343,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Wake Up at 6:00 AM:\n',
                          style: TextStyle(
                            color: const Color(0xFF12161C),
                            fontSize: 11.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 1.4,
                          ),
                        ),
                        TextSpan(
                          text: 'Have breakfast between 7:00 AM and 9:00 AM.\n',
                          style: TextStyle(
                            color: const Color(0xFF12161C),
                            fontSize: 11.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 1.4,
                          ),
                        ),
                        TextSpan(
                          text: 'Wake Up at 7:00 AM:\n',
                          style: TextStyle(
                            color: const Color(0xFF12161C),
                            fontSize: 11.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 1.4,
                          ),
                        ),
                        TextSpan(
                          text:
                              'Have breakfast between 8:00 AM and 10:00 AM.\n',
                          style: TextStyle(
                            color: const Color(0xFF12161C),
                            fontSize: 11.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 1.4,
                          ),
                        ),
                        TextSpan(
                          text: 'Wake Up at 8:00 AM:\n',
                          style: TextStyle(
                            color: const Color(0xFF12161C),
                            fontSize: 11.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 1.4,
                          ),
                        ),
                        TextSpan(
                          text: 'Have breakfast between 9:00 AM and 11:00 AM.',
                          style: TextStyle(
                            color: const Color(0xFF12161C),
                            fontSize: 11.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 1.4,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.h),
            Divider(
              color: const Color(0xFFEBEBEC),
              height: 1.h,
              thickness: 1.r,
              indent: 3.w,
              endIndent: 3.w,
            ),
            SizedBox(height: 10.h),
            Row(
              children: [
                Image.asset(
                    "Images/HomePage/Daily diet.Screen/Meal data/menu.png"),
                SizedBox(width: 5.w),
                SizedBox(
                  width: 300.w,
                  child: Text(
                    'Instructions',
                    style: TextStyle(
                      color: const Color(0xFF85BE46),
                      fontSize: 12.5.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 1.4,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Column(
              children: [
                SizedBox(
                  width: 330.w,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Prepare Vegetables:\n',
                          style: TextStyle(
                            color: const Color(0xFF12161C),
                            fontSize: 11.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 1.4,
                          ),
                        ),
                        TextSpan(
                          text:
                              'Heat olive oil in a pan over medium heat.\nAdd diced bell peppers and red onion, sauté until softened (about 3-4 minutes).\nAdd cherry tomatoes and cook for an additional 2 minutes.\n',
                          style: TextStyle(
                            color: const Color(0xFF12161C),
                            fontSize: 11.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 1.4,
                          ),
                        ),
                        TextSpan(
                          text: 'Scramble Eggs:\n',
                          style: TextStyle(
                            color: const Color(0xFF12161C),
                            fontSize: 11.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 1.4,
                          ),
                        ),
                        TextSpan(
                          text:
                              'In a bowl, whisk the eggs together.\nPour the whisked eggs into the pan with the sauteed vegetables.\n',
                          style: TextStyle(
                            color: const Color(0xFF12161C),
                            fontSize: 11.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 1.4,
                          ),
                        ),
                        TextSpan(
                          text: 'Cook Eggs:\n',
                          style: TextStyle(
                            color: const Color(0xFF12161C),
                            fontSize: 11.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 1.4,
                          ),
                        ),
                        TextSpan(
                          text:
                              'Stir gently and cook until the eggs are scrambled and cooked through.\nSeason with salt and pepper to taste.\n',
                          style: TextStyle(
                            color: const Color(0xFF12161C),
                            fontSize: 11.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 1.4,
                          ),
                        ),
                        TextSpan(
                          text: 'Serve:\n',
                          style: TextStyle(
                            color: const Color(0xFF12161C),
                            fontSize: 11.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 1.4,
                          ),
                        ),
                        TextSpan(
                          text:
                              'Plate the scrambled eggs and vegetable mixture.\nTop with sliced avocado for added creaminess and nutrition.',
                          style: TextStyle(
                            color: const Color(0xFF12161C),
                            fontSize: 11.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 1.4,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
