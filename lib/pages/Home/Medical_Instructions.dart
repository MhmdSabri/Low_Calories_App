import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:low_calories_app/pages/NavBar/Custom_NavBar/NavBar.dart';

class MedicalInstructions extends StatefulWidget {
  const MedicalInstructions({super.key});

  @override
  State<MedicalInstructions> createState() => _MedicalInstructionsState();
}

class _MedicalInstructionsState extends State<MedicalInstructions> {
  List images = [
    "Images/HomePage/Medical instructionsHOME/Hydrate Regularly.png",
    "Images/HomePage/Medical instructionsHOME/Exercise Daily.png",
    "Images/HomePage/MedicalInstructionsSCREEN/3.png",
    "Images/HomePage/MedicalInstructionsSCREEN/4.png",
    "Images/HomePage/MedicalInstructionsSCREEN/5.png",
    "Images/HomePage/MedicalInstructionsSCREEN/6.png",
    "Images/HomePage/MedicalInstructionsSCREEN/7.png",
    "Images/HomePage/MedicalInstructionsSCREEN/8.png",
  ];

  List cardHeadline = [
    "Hydrate Regularly",
    "Exercise Daily",
    "Eat Nutrient-Rich",
    "Sleep Sufficiently",
    "Manage Stress",
    "Limit Sugar",
    "Stay Active",
    "Maintain Weight"
  ];
  List cardSubject = [
    "Drink water for optimal bodily function and hydration balance",
    "Regular physical activity enhances overall health and well-being",
    "Consume foods high in vitamins and minerals for wellness",
    "Ensure proper rest for mental and physical health maintenance",
    "Implement stress-relief techniques to promote mental well-being",
    "Reduce added sugar intake for better metabolic health",
    "Engage in regular physical activities for cardiovascular health",
    "Manage a healthy weight for optimal physical well-being",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10.w),
        child: Column(children: [
          SizedBox(height: 30.h),
          Row(
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => const NavBar()));
                  },
                  child: const Icon(Icons.arrow_circle_left_outlined)),
              SizedBox(
                width: 90.w,
              ),
              Text(
                'Medical instructions',
                style: TextStyle(
                  color: const Color(0xFF12161C),
                  fontSize: 14.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          SizedBox(height: 15.h),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 8.w),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 70.h,
                        padding: const EdgeInsets.all(8),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.w)),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x19000000),
                              blurRadius: 0,
                              offset: Offset(0, 0),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 60.w,
                              height: 60.h,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: AssetImage(images[index]),
                                  fit: BoxFit.fill,
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2.w)),
                              ),
                            ),
                            SizedBox(width: 8.w),
                            Expanded(
                              child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 180.w,
                                      child: Text(
                                        cardHeadline[index],
                                        style: TextStyle(
                                          color: const Color(0xFF12161C),
                                          fontSize: 12.5.sp,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 4.h),
                                    SizedBox(
                                      width: double.infinity,
                                      child: Text(
                                        cardSubject[index],
                                        style: TextStyle(
                                            color: const Color(0xFF5A5D61),
                                            fontSize: 10.5.sp,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                            height: 1.5),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ]),
      ),
    );
  }
}
