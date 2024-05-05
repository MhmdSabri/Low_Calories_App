import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:low_calories_app/pages/NavBar/Custom_NavBar/Articles_Screen/Articles_screen.dart';

class IndividualArticleScreen extends StatelessWidget {
  const IndividualArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.w),
          child: Column(
            children: [
              SizedBox(height: 30.h),
              Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const ArticlesScreen()));
                      },
                      child: const Icon(Icons.arrow_circle_left_outlined)),
                  SizedBox(
                    width: 120.w,
                  ),
                  Text(
                    'Articles',
                    style: TextStyle(
                      color: const Color(0xFF12161C),
                      fontSize: 14.sp,
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
                    child: Image.asset(
                      "Images/NavBar/Articles/Rectangle 2 (7).png",
                      fit: BoxFit.cover,
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
                      'Nutrition Essentials: A Guide to Healthy Eating Habits',
                      style: TextStyle(
                        color: const Color(0xFF12161C),
                        fontSize: 13.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 20.w,
                        height: 20.h,
                        decoration: const ShapeDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "Images/NavBar/Articles/Ellipse 1.png"),
                            fit: BoxFit.cover,
                          ),
                          shape: OvalBorder(),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 7.w),
                  Text(
                    "M.Elsherif",
                    style: TextStyle(
                      color: const Color(0xFF5A5D61),
                      fontSize: 10.5.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: 4.w),
                  Text(
                    '·',
                    style: TextStyle(
                      color: const Color(0xFF5A5D61),
                      fontSize: 10.5.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    "Nov 29, 2023",
                    style: TextStyle(
                      color: const Color(0xFF5A5D61),
                      fontSize: 10.5.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              // Row(
              //   children: [
              //     SizedBox(
              //       width: 330.w,
              //       child: Text(
              //         "In our fast-paced lives, maintaining a nutritious diet is paramount. Understanding the fundamentals of healthy eating empowers individuals to make informed choices that promote overall well-being.",
              //         style: TextStyle(
              //           color: const Color(0xFF12161C),
              //           fontSize: 13.5.sp,
              //           fontFamily: 'Poppins',
              //           fontWeight: FontWeight.w400,
              //         ),
              //       ),
              //     )
              //   ],
              // )

              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 330.w,
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    'In our fast-paced lives, maintaining a nutritious diet is paramount. Understanding the fundamentals of healthy eating empowers individuals to make informed choices that promote overall well-being.\n\n',
                                style: TextStyle(
                                  color: const Color(0xFF12161C),
                                  fontSize: 12.5.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text:
                                    '1. The Foundation of a Balanced Diet: \n',
                                style: TextStyle(
                                  color: const Color(0xFF12161C),
                                  fontSize: 12.5.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              TextSpan(
                                text:
                                    'A balanced diet incorporates a variety of nutrient-dense foods. This includes a mix of fruits, vegetables, lean proteins, whole grains, and healthy fats. Striking the right balance ensures that the body receives the essential vitamins, minerals, and energy it needs.\n\n',
                                style: TextStyle(
                                  color: const Color(0xFF12161C),
                                  fontSize: 12.5.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text: '2. The Power of Portion Control: \n',
                                style: TextStyle(
                                  color: const Color(0xFF12161C),
                                  fontSize: 12.5.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              TextSpan(
                                text:
                                    'Controlling portion sizes is a key aspect of maintaining a healthy weight. Being mindful of serving sizes helps prevent overeating and allows individuals to enjoy a wide range of foods without excess calories.\n\n',
                                style: TextStyle(
                                  color: const Color(0xFF12161C),
                                  fontSize: 12.5.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text: '3. Quality Matters: \n',
                                style: TextStyle(
                                  color: const Color(0xFF12161C),
                                  fontSize: 12.5.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              TextSpan(
                                text:
                                    'Choosing Whole Foods: Whole, unprocessed foods are the cornerstones of a nutritious diet. Choosing foods in their natural state over processed alternatives provides a rich array of nutrients without added sugars, salt, and unhealthy fats.\n\n',
                                style: TextStyle(
                                  color: const Color(0xFF12161C),
                                  fontSize: 12.5.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text: '4. Hydration for Health: \n',
                                style: TextStyle(
                                  color: const Color(0xFF12161C),
                                  fontSize: 12.5.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              TextSpan(
                                text:
                                    'Proper hydration is often underestimated. Drinking an adequate amount of water supports digestion, nutrient absorption, and overall bodily functions. Choosing water over sugary beverages is a simple yet impactful step toward better health.\n\n',
                                style: TextStyle(
                                  color: const Color(0xFF12161C),
                                  fontSize: 12.5.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text:
                                    '5. Personalization and Individual Needs: \n',
                                style: TextStyle(
                                  color: const Color(0xFF12161C),
                                  fontSize: 12.5.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              TextSpan(
                                text:
                                    'Every person is unique, and nutritional requirements vary. Factors such as age, activity level, and health conditions influence dietary needs. Consulting with a healthcare professional or a registered dietitian can help tailor dietary choices to individual goals.\n\n',
                                style: TextStyle(
                                  color: const Color(0xFF12161C),
                                  fontSize: 12.5.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text: '6. Mindful Eating for Well-being: \n',
                                style: TextStyle(
                                  color: const Color(0xFF12161C),
                                  fontSize: 12.5.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              TextSpan(
                                text:
                                    'Mindful eating involves paying attention to hunger and fullness cues, savoring each bite, and avoiding distractions during meals. This practice fosters a healthier relationship with food and encourages better digestion.\n\n',
                                style: TextStyle(
                                  color: const Color(0xFF12161C),
                                  fontSize: 12.5.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text: '7. Regular Exercise and Nutrition: \n',
                                style: TextStyle(
                                  color: const Color(0xFF12161C),
                                  fontSize: 12.5.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              TextSpan(
                                text:
                                    'A nutritious diet complements an active lifestyle. Regular exercise supports weight management, cardiovascular health, and mental well-being. Combining healthy eating habits with physical activity creates a holistic approach to overall health.\n\n',
                                style: TextStyle(
                                  color: const Color(0xFF12161C),
                                  fontSize: 12.5.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text:
                                    '8. Cultivating Long-Term Healthy Habits: \n',
                                style: TextStyle(
                                  color: const Color(0xFF12161C),
                                  fontSize: 12.5.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              TextSpan(
                                text:
                                    'Rather than pursuing short-term fixes, focus on building sustainable habits. Gradual changes, such as incorporating more plant-based foods or adopting a regular exercise routine, contribute to lasting health improvements.\n\nIn conclusion, embracing nutrition essentials involves making mindful choices, prioritizing whole foods, staying hydrated, and customizing dietary habits to individual needs. By integrating these principles, individuals can embark on a journey towards a healthier and more fulfilling life.',
                                style: TextStyle(
                                  color: const Color(0xFF12161C),
                                  fontSize: 12.5.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
