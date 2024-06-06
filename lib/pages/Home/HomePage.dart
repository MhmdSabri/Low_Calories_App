import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:Low_Calories/pages/Home/Medical_Instructions.dart';
import 'package:Low_Calories/pages/Home/Packages_screen.dart';
import 'package:Low_Calories/pages/Home/Single_Chat_Screen.dart';
import 'package:Low_Calories/pages/Map_Screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List meals = [
    "Images/HomePage/meals/Center Background.png",
    "Images/HomePage/meals/Right Background.png",
    "Images/HomePage/meals/Left Background.png"
  ];
  List restaurantImages = [
    "Images/HomePage/restaurantImages/1Gastronome's.png",
    "Images/HomePage/restaurantImages/2Zen Garden Sushi Lounge.png",
    "Images/HomePage/restaurantImages/3Sunset Serenity Cafe.png",
  ];
  List restaurantName = [
    "Gastronome's Haven",
    "Zen Garden Sushi Lounge",
    "Sunset Serenity Cafe",
  ];
  List dietaryPlansImages = [
    "Images/HomePage/dietaryPlansImages/1dietaryPlansImages.png",
    "Images/HomePage/dietaryPlansImages/2dietaryPlansImages.png",
    "Images/HomePage/dietaryPlansImages/2dietaryPlansImages.png",
    "Images/HomePage/dietaryPlansImages/2dietaryPlansImages.png",
    "Images/HomePage/dietaryPlansImages/2dietaryPlansImages.png",
  ];
  List cardHeadine = [
    "Paleo Diet",
    "Clean Eating",
    "Paleo Diet",
    "Paleo Diet",
    "Paleo Diet",
  ];
  List bodyContent = [
    "Stone Age-inspired nutrition",
    "Natural, unprocessed foods",
    "Stone Age-inspired nutrition",
    "Stone Age-inspired nutrition",
    "Stone Age-inspired nutrition",
  ];

  List price = [
    "1200 SAR",
    "1200 SAR",
    "1200 SAR",
    "1200 SAR",
    "1200 SAR",
  ];

  List dietPlanDetails = [
    "Images/HomePage/dietPlanDetails2/Rectangle1.png",
    "Images/HomePage/dietPlanDetails2/Rectangle2.png",
    "Images/HomePage/dietPlanDetails2/Rectangle3.png",
    "Images/HomePage/dietPlanDetails2/Rectangle4.png",
  ];

  List dietPlanDetails2 = [
    "Images/HomePage/dietPlanDetails/LV1.png",
    "Images/HomePage/dietPlanDetails/LV2.png",
    "Images/HomePage/dietPlanDetails/LV3.png",
    "Images/HomePage/dietPlanDetails/LV4.png",
  ];

  var controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 60.w,
        leading: Padding(
          padding: EdgeInsets.only(left: 10.r, top: 5.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 40.w,
                height: 38.h,
                decoration: ShapeDecoration(
                  image: const DecorationImage(
                    image: AssetImage("Images/HomePage/user/userImage.png"),
                    fit: BoxFit.fill,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.w),
                  ),
                ),
              ),
            ],
          ),
        ),
        centerTitle: false,
        titleSpacing: 0,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Hi, Mohamed Elsherif',
                  style: TextStyle(
                    color: const Color(0xFF12161C),
                    fontSize: 12.5.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Row(children: [
              SvgPicture.asset("Images/HomePage/user/location.svg"),
              SizedBox(
                width: 1.w,
              ),
              Text(
                'Riyadh City Boulevard, Riyadh',
                style: TextStyle(
                  color: const Color(0xFF12161C),
                  fontSize: 10.5.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ]),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(10.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 25.h,
                  width: 62.w,
                  padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
                  decoration: ShapeDecoration(
                    color: const Color(0x66FBCF04),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.w)),
                  ),
                  child: Row(children: [
                    SizedBox(
                      height: 21.h,
                      width: 49.w,
                      child: Row(
                        children: [
                          SvgPicture.asset("Images/HomePage/user/box.svg"),
                          SizedBox(width: 7.w),
                          Text(
                            '218',
                            style: TextStyle(
                              color: const Color(0xFFD28800),
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    )
                  ]),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: const Color(0xff85BE46),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => const SingleChatScreen()));
        },
        child: Image.asset("Images/HomePage/messagefab/message.png"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.w),
          child: Column(children: [
            // SizedBox(
            //   height: 30.h,
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Row(
            //       children: [
            //         Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           mainAxisAlignment: MainAxisAlignment.start,
            //           children: [
            //             Container(
            //               width: 38.w,
            //               height: 38.h,
            //               decoration: ShapeDecoration(
            //                 image: const DecorationImage(
            //                   image: AssetImage(
            //                       "Images/HomePage/user/userImage.png"),
            //                   fit: BoxFit.fill,
            //                 ),
            //                 shape: RoundedRectangleBorder(
            //                   borderRadius: BorderRadius.circular(4.w),
            //                 ),
            //               ),
            //             ),
            //           ],
            //         ),
            //         SizedBox(width: 10.w),
            //         Column(
            //           mainAxisAlignment: MainAxisAlignment.start,
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Row(
            //               children: [
            //                 Text(
            //                   'Hi, Mohamed Elsherif',
            //                   style: TextStyle(
            //                     color: const Color(0xFF12161C),
            //                     fontSize: 12.5.sp,
            //                     fontWeight: FontWeight.w500,
            //                   ),
            //                 ),
            //               ],
            //             ),
            //             Row(children: [
            //               SvgPicture.asset("Images/HomePage/user/location.svg"),
            //               SizedBox(
            //                 width: 1.w,
            //               ),
            //               Text(
            //                 'Riyadh City Boulevard, Riyadh',
            //                 style: TextStyle(
            //                   color: const Color(0xFF12161C),
            //                   fontSize: 10.5.sp,
            //                   fontFamily: 'Poppins',
            //                   fontWeight: FontWeight.w400,
            //                 ),
            //               ),
            //             ]),
            //           ],
            //         )
            //       ],
            //     ),
            //     Column(
            //       mainAxisAlignment: MainAxisAlignment.start,
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Container(
            //           height: 25.h,
            //           width: 62.w,
            //           padding:
            //               EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
            //           decoration: ShapeDecoration(
            //             color: const Color(0x66FBCF04),
            //             shape: RoundedRectangleBorder(
            //                 borderRadius: BorderRadius.circular(4.w)),
            //           ),
            //           child: Row(children: [
            //             SizedBox(
            //               height: 21.h,
            //               width: 49.w,
            //               child: Row(
            //                 children: [
            //                   SvgPicture.asset("Images/HomePage/user/box.svg"),
            //                   SizedBox(width: 7.w),
            //                   Text(
            //                     '218',
            //                     style: TextStyle(
            //                       color: const Color(0xFFD28800),
            //                       fontSize: 11.sp,
            //                       fontWeight: FontWeight.w500,
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //             )
            //           ]),
            //         ),
            //       ],
            //     ),
            //   ],
            // ),
            // SizedBox(height: 10.h),
            SizedBox(
              height: 170.h,
              width: double.infinity,
              child: PageView.builder(
                physics: const RangeMaintainingScrollPhysics(),
                itemCount: meals.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: SizedBox(
                      height: 170.h,
                      child: Image.asset(
                        meals[index],
                        fit: BoxFit.fill,
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 10.h),
            Row(
              children: [
                Text(
                  'Restaurant branches',
                  style: TextStyle(
                    color: const Color(0xFF12161C),
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            SizedBox(
              height: 75.h,
              child: ListView.builder(
                itemCount: restaurantImages.length,
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(right: 7.w),
                    child: Stack(
                      children: [
                        GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                              shape: ContinuousRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15.w),
                                      topRight: Radius.circular(15.w))),
                              context: context,
                              isScrollControlled: true,
                              builder: (context) {
                                return SizedBox(
                                  height: MediaQuery.of(context)
                                          .copyWith()
                                          .size
                                          .height *
                                      0.84,
                                  width: double.infinity,
                                  child: Padding(
                                    padding: EdgeInsets.all(10.w),
                                    child: Column(
                                      children: [
                                        SizedBox(height: 10.h),
                                        SizedBox(
                                          height: 170.h,
                                          width: double.infinity,
                                          child: Stack(
                                            children: [
                                              PageView.builder(
                                                controller: controller,
                                                physics:
                                                    const RangeMaintainingScrollPhysics(),
                                                itemCount:
                                                    dietPlanDetails.length,
                                                itemBuilder: (context, index) {
                                                  return Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 5.w),
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
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    SmoothPageIndicator(
                                                      controller: controller,
                                                      count: dietPlanDetails
                                                          .length,
                                                      axisDirection:
                                                          Axis.horizontal,
                                                      effect: WormEffect(
                                                        activeDotColor:
                                                            const Color(
                                                                0xffFFFFFF),
                                                        dotColor: const Color(
                                                                0xffFFFFFF)
                                                            .withOpacity(0.50),
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
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "Gastronome's Haven",
                                              style: TextStyle(
                                                color: const Color(0xFF12161C),
                                                fontSize: 22.sp,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Column(
                                          children: [
                                            SizedBox(
                                              width: double.infinity,
                                              child: Text(
                                                "Experience culinary excellence at Gastronome's Haven, where each dish is a masterpiece crafted with passion. Our elegant ambiance and diverse menu promise a memorable dining adventure, blending flavors from around the world. Immerse yourself in a sophisticated atmosphere that elevates your dining experience to new heights.",
                                                style: TextStyle(
                                                  color:
                                                      const Color(0xFF5A5D61),
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.5,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 8.h,
                                        ),
                                        Row(children: [
                                          SvgPicture.asset(
                                              "Images/HomePage/user/location.svg"),
                                          SizedBox(
                                            width: 2.w,
                                          ),
                                          Text(
                                            'Riyadh City Boulevard, Riyadh',
                                            style: TextStyle(
                                              color: const Color(0xFF12161C),
                                              fontSize: 10.5.sp,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ]),
                                        SizedBox(
                                          height: 8.h,
                                        ),
                                        const MapScreen()
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: Column(children: [
                            Container(
                              height: 75.h,
                              width: 110.w,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.w)),
                              ),
                              child: Image.asset(
                                restaurantImages[index],
                                fit: BoxFit.fill,
                              ),
                            ),
                          ]),
                        ),
                        Positioned(
                          top: 40.h,
                          right: 10.w,
                          child: SizedBox(
                            width: 95.w,
                            child: Text(
                              restaurantName[index],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 15.h),
            Column(
              children: [
                Container(
                  width: 340.w,
                  height: 60.h,
                  padding: EdgeInsets.only(right: 8.r),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.w)),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x26353535),
                        blurRadius: 2,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 75,
                                height: 60.h,
                                decoration: ShapeDecoration(
                                  image: const DecorationImage(
                                    image: AssetImage(
                                        "Images/HomePage/My dietary plan/My dietary plan.png"),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(4.w),
                                      bottomLeft: Radius.circular(4.w),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'My dietary plan',
                                    style: TextStyle(
                                      color: const Color(0xFF12161C),
                                      fontSize: 12.5.sp,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    '“Paleo Diet”',
                                    style: TextStyle(
                                      color: const Color(0xFF12161C),
                                      fontSize: 12.5.sp,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 8.h),
                              Row(
                                children: [
                                  Text(
                                    'Know the details of your meals',
                                    style: TextStyle(
                                      color: const Color(0xFF5A5D61),
                                      fontSize: 10.5.sp,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 24.w,
                            height: 24.h,
                            child: SvgPicture.asset(
                                "Images/HomePage/Restaurant branches/Group 1000006063.svg"),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15.h),
                Row(
                  children: [
                    Text(
                      'Explore Dietary Plans',
                      style: TextStyle(
                        color: const Color(0xFF12161C),
                        fontSize: 12.5.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 7.h),
                Row(
                  children: [
                    Text(
                      'Choose the dietary plan that suits you',
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
                SizedBox(
                  height: 200.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemCount: dietaryPlansImages.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(right: 7.r),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                showModalBottomSheet(
                                  shape: ContinuousRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15.w),
                                          topRight: Radius.circular(15.w))),
                                  isScrollControlled: true,
                                  context: context,
                                  builder: (context) {
                                    return SizedBox(
                                        height: MediaQuery.of(context)
                                                .copyWith()
                                                .size
                                                .height *
                                            0.59,
                                        width: double.infinity,
                                        child: Padding(
                                          padding: EdgeInsets.all(10.w),
                                          child: Column(
                                            children: [
                                              SizedBox(height: 10.h),
                                              SizedBox(
                                                height: 170.h,
                                                width: double.infinity,
                                                child: Stack(
                                                  children: [
                                                    PageView.builder(
                                                      controller: controller,
                                                      physics:
                                                          const RangeMaintainingScrollPhysics(),
                                                      itemCount:
                                                          dietPlanDetails2
                                                              .length,
                                                      itemBuilder:
                                                          (context, index) {
                                                        return Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  right: 7.w),
                                                          child: SizedBox(
                                                            height: 170.h,
                                                            child: Image.asset(
                                                              dietPlanDetails2[
                                                                  index],
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
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          SmoothPageIndicator(
                                                            controller:
                                                                controller,
                                                            count:
                                                                dietPlanDetails
                                                                    .length,
                                                            axisDirection:
                                                                Axis.horizontal,
                                                            effect: WormEffect(
                                                              activeDotColor:
                                                                  const Color(
                                                                      0xffFFFFFF),
                                                              dotColor: const Color(
                                                                      0xffFFFFFF)
                                                                  .withOpacity(
                                                                      0.50),
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
                                              SizedBox(
                                                height: 10.h,
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    "Paleo Diet",
                                                    style: TextStyle(
                                                      color: const Color(
                                                          0xFF12161C),
                                                      fontSize: 22.sp,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 5.h,
                                              ),
                                              Column(
                                                children: [
                                                  SizedBox(
                                                    width: double.infinity,
                                                    child: Text(
                                                      "The Paleo Diet, short for the Paleolithic Diet, is a nutritional approach that aims to mimic the dietary patterns of our ancestors during the Stone Age. The fundamental concept is to consume foods that would have been available to hunter-gatherer communities, predating the advent of agriculture..",
                                                      style: TextStyle(
                                                        color: const Color(
                                                            0xFF5A5D61),
                                                        fontSize: 12.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height: 1.5,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 8.h,
                                              ),
                                              SizedBox(
                                                height: 8.h,
                                              ),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    flex: 2,
                                                    child: Column(children: [
                                                      MaterialButton(
                                                        onPressed: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder: (BuildContext
                                                                          context) =>
                                                                      const PackagesScreen()));
                                                        },
                                                        color: const Color(
                                                            0xFF85BE46),
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        6.r)),
                                                        textColor: Colors.white,
                                                        height: 42.h,
                                                        minWidth:
                                                            double.infinity,
                                                        child: Text(
                                                          'Pay now',
                                                          style: TextStyle(
                                                              color: const Color(
                                                                  0xffFFFFFF),
                                                              fontSize: 14.5.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                        ),
                                                      ),
                                                    ]),
                                                  ),
                                                  SizedBox(width: 5.w),
                                                  Expanded(
                                                    flex: 1,
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          'The price is',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            color: const Color(
                                                                0xFF12161C),
                                                            fontSize: 13.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 10.h,
                                                        ),
                                                        Text.rich(
                                                          TextSpan(
                                                            children: [
                                                              TextSpan(
                                                                text:
                                                                    '1200 SAR',
                                                                style:
                                                                    TextStyle(
                                                                  color: const Color(
                                                                      0xFF85BE46),
                                                                  fontSize:
                                                                      14.5.sp,
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  height: 0.09,
                                                                ),
                                                              ),
                                                              TextSpan(
                                                                text: '/',
                                                                style:
                                                                    TextStyle(
                                                                  color: const Color(
                                                                      0xFF85BE46),
                                                                  fontSize:
                                                                      11.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                ),
                                                              ),
                                                              TextSpan(
                                                                text: 'month',
                                                                style:
                                                                    TextStyle(
                                                                  color: const Color(
                                                                      0xFF12161C),
                                                                  fontSize:
                                                                      11.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ));
                                  },
                                );
                              },
                              child: Container(
                                width: 122.w,
                                height: 188.h,
                                padding: EdgeInsets.all(8.w),
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4)),
                                  shadows: const [
                                    BoxShadow(
                                      color: Color(0x26353535),
                                      blurRadius: 2,
                                      offset: Offset(0, 0),
                                      spreadRadius: 0,
                                    )
                                  ],
                                ),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 105.w,
                                        height: 100.h,
                                        decoration: ShapeDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                dietaryPlansImages[index]),
                                            fit: BoxFit.cover,
                                          ),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4.w)),
                                        ),
                                      ),
                                      SizedBox(height: 5.h),
                                      Row(
                                        children: [
                                          Text(
                                            cardHeadine[index],
                                            style: TextStyle(
                                              color: const Color(0xFF12161C),
                                              fontSize: 10.5.sp,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 100.w,
                                            child: Text(
                                              bodyContent[index],
                                              style: TextStyle(
                                                color: const Color(0xFF5A5D61),
                                                fontSize: 8.sp,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            price[index],
                                            style: TextStyle(
                                              color: const Color(0xFF12161C),
                                              fontSize: 10.5.sp,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      )
                                    ]),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                // SizedBox(
                //   height: 10.h,
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Medical instructions',
                      style: TextStyle(
                        color: const Color(0xFF12161C),
                        fontSize: 12.5.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const MedicalInstructions()));
                      },
                      child: Text(
                        'See All',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color(0xFF85BE46),
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Column(
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
                            blurRadius: 2,
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
                              image: const DecorationImage(
                                image: AssetImage(
                                    "Images/HomePage/Medical instructionsHOME/Hydrate Regularly.png"),
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
                                      'Hydrate Regularly',
                                      style: TextStyle(
                                        color: const Color(0xFF12161C),
                                        fontSize: 12.5.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5.h),
                                  SizedBox(
                                    width: double.infinity,
                                    child: Text(
                                      'Drink water for optimal bodily function and hydration balance',
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
                SizedBox(
                  height: 10.h,
                ),
                Column(
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
                            blurRadius: 2,
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
                              image: const DecorationImage(
                                image: AssetImage(
                                    "Images/HomePage/Medical instructionsHOME/Exercise Daily.png"),
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
                                      'Exercise Daily',
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
                                      'Regular physical activity enhances overall health and well-being',
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
              ],
            )
          ]),
        ),
      ),
    );
  }
}
