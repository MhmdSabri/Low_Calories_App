import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:low_calories_app/pages/NavBar/Custom_NavBar/Articles_Screen/Individual_Article.dart';

class ArticlesScreen extends StatefulWidget {
  const ArticlesScreen({super.key});

  @override
  State<ArticlesScreen> createState() => _ArticlesScreenState();
}

class _ArticlesScreenState extends State<ArticlesScreen> {
  List articleImage = [
    "Images/NavBar/Articles/Rectangle 1.png",
    "Images/NavBar/Articles/Rectangle 2.png",
    "Images/NavBar/Articles/Rectangle 3.png",
    "Images/NavBar/Articles/Rectangle 4.png",
    "Images/NavBar/Articles/Rectangle 5.png",
    "Images/NavBar/Articles/Rectangle 6.png",
    "Images/NavBar/Articles/Rectangle 7.png",
  ];
  List articlrTitle = [
    "Nutrition Essentials: A Guide to Healthy Eating Habits",
    "A Journey Through Balanced Nutritional Habits",
    "A Blueprint for Sustainable Weight Management",
    "Exploring the Power of Nutrient-Dense Foods",
    "Tailoring Your Diet for Optimal Well-being",
    "Long-Term Strategies for Nutritional Success",
    "Creating a Lifestyle of Nutritional Equilibrium",
  ];

  List narratorName = [
    "M.Elsherif",
    "M.Elsherif",
    "M.Elsherif",
    "M.Elsherif",
    "M.Elsherif",
    "M.Elsherif",
    "M.Elsherif",
  ];
  List narratorPhoto = [
    "Images/NavBar/Articles/Ellipse 1.png",
    "Images/NavBar/Articles/Ellipse 1.png",
    "Images/NavBar/Articles/Ellipse 1.png",
    "Images/NavBar/Articles/Ellipse 1.png",
    "Images/NavBar/Articles/Ellipse 1.png",
    "Images/NavBar/Articles/Ellipse 1.png",
    "Images/NavBar/Articles/Ellipse 1.png",
  ];

  List publicationDate = [
    "Nov 29, 2023",
    "Nov 29, 2023",
    "Nov 29, 2023",
    "Nov 29, 2023",
    "Nov 29, 2023",
    "Nov 29, 2023",
    "Nov 29, 2023",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(12.w),
        child: Column(
          children: [
            SizedBox(height: 30.h),
            Center(
              child: Text(
                'Articles',
                style: TextStyle(
                  color: const Color(0xFF12161C),
                  fontSize: 15.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 15.h),
            Expanded(
                child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 7,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const IndividualArticleScreen();
                        },
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 220.w,
                                child: Text(
                                  articlrTitle[index],
                                  style: TextStyle(
                                    color: const Color(0xFF12161C),
                                    fontSize: 12.5.sp,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              SizedBox(height: 5.h),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 24,
                                    height: 24,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 20.w,
                                          height: 20.h,
                                          decoration: ShapeDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  narratorPhoto[index]),
                                              fit: BoxFit.cover,
                                            ),
                                            shape: const OvalBorder(),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        narratorName[index],
                                        style: TextStyle(
                                          color: const Color(0xFF5A5D61),
                                          fontSize: 10.5.sp,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      SizedBox(width: 3.w),
                                      Text(
                                        '·',
                                        style: TextStyle(
                                          color: const Color(0xFF5A5D61),
                                          fontSize: 10.5.sp,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      SizedBox(width: 3.w),
                                      Text(
                                        publicationDate[index],
                                        style: TextStyle(
                                          color: const Color(0xFF5A5D61),
                                          fontSize: 10.5.sp,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            width: 106,
                            height: 80,
                            decoration: ShapeDecoration(
                              image: DecorationImage(
                                image: AssetImage(articleImage[index]),
                                fit: BoxFit.fill,
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Center(
                        child: Builder(
                          builder: (context) {
                            if (index != articleImage.length - 1) {
                              return Divider(
                                color: const Color(0xFFEBEBEC),
                                height: 1.h,
                                thickness: 1.r,
                                indent: 1.w,
                                endIndent: 1.w,
                              );
                            } else {
                              return SizedBox(
                                height: 1.h,
                              );
                            }
                          },
                        ),
                      ),
                      SizedBox(height: 10.h),
                    ],
                  ),
                );
              },
            )),
          ],
        ),
      ),
    );
  }
}
