import 'package:Low_Calories/pages/NavBar/Custom_NavBar/NavBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:Low_Calories/pages/Home/Pay_Now.dart';

class PackagesScreen extends StatefulWidget {
  const PackagesScreen({super.key});

  @override
  State<PackagesScreen> createState() => _PackagesScreenState();
}

class _PackagesScreenState extends State<PackagesScreen> {
  String? meal;
  String? moreMeals;
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
                      builder: (BuildContext context) => const NavBar()));
            },
            icon: const Icon(Icons.arrow_circle_left_outlined)),
        title: Text(
          'Packages',
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
                Container(
                  width: double.infinity,
                  height: 305.h,
                  padding: EdgeInsets.all(20.w),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.w)),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x26353535),
                        blurRadius: 0.1,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Essential Paleo',
                          style: TextStyle(
                            color: const Color(0xFF12161C),
                            fontSize: 28.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            SizedBox(
                              width: 265.w,
                              child: Text(
                                'Begin your Paleo journey with foundational foods, focusing on lean proteins, fruits, and vegetables',
                                style: TextStyle(
                                  color: const Color(0xFF5A5D61),
                                  fontSize: 11.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            SvgPicture.asset(
                                "Images/HomePage/Packages/Circle_Check.svg"),
                            SizedBox(width: 3.w),
                            SizedBox(
                              width: 265.w,
                              child: Text(
                                'Lean proteins (chicken, fish, eggs)',
                                style: TextStyle(
                                  color: const Color(0xFF5A5D61),
                                  fontSize: 12.5.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            SvgPicture.asset(
                                "Images/HomePage/Packages/Circle_Check.svg"),
                            SizedBox(width: 3.w),
                            SizedBox(
                              width: 265.w,
                              child: Text(
                                'Abundance of vegetables',
                                style: TextStyle(
                                  color: const Color(0xFF5A5D61),
                                  fontSize: 12.5.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            SvgPicture.asset(
                                "Images/HomePage/Packages/Circle_Check.svg"),
                            SizedBox(width: 3.w),
                            SizedBox(
                              width: 265.w,
                              child: Text(
                                'Limited fruit and nuts',
                                style: TextStyle(
                                  color: const Color(0xFF5A5D61),
                                  fontSize: 12.5.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            SvgPicture.asset(
                                "Images/HomePage/Packages/Circle_Check.svg"),
                            SizedBox(width: 3.w),
                            SizedBox(
                              width: 265.w,
                              child: Text(
                                'No grains or dairy',
                                style: TextStyle(
                                  color: const Color(0xFF5A5D61),
                                  fontSize: 12.5.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 290.w,
                                  height: 40.h,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFFDEEEE),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.w),
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Close this package',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: const Color(0xFFE92727),
                                          fontSize: 14.5.sp,
                                          fontFamily: 'Avenir',
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ]),
                ),
                SizedBox(height: 20.h),
                Row(
                  children: [
                    SvgPicture.asset("Images/HomePage/Packages/menu-board.svg"),
                    SizedBox(width: 5.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 265.w,
                          child: Text(
                            'Determine the number of meals you want daily',
                            style: TextStyle(
                              color: const Color(0xFF5A5D61),
                              fontSize: 11.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Theme(
                      data: ThemeData(
                          unselectedWidgetColor: const Color(0xff5A5D61)),
                      child: Flexible(
                        fit: FlexFit.loose,
                        child: RadioListTile(
                          activeColor: const Color(0xff85BE46),
                          contentPadding: EdgeInsets.zero,
                          title: Text(
                            'One meals',
                            style: TextStyle(
                              color: const Color(0xFF12161C),
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          value: "1m",
                          groupValue: meal,
                          onChanged: (val) {
                            setState(() {
                              meal = val;
                            });
                          },
                        ),
                      ),
                    )
                  ],
                ),
                // SizedBox(height: 10.h),
                Row(
                  children: [
                    Theme(
                      data: ThemeData(
                          unselectedWidgetColor: const Color(0xff5A5D61)),
                      child: Flexible(
                        fit: FlexFit.loose,
                        child: RadioListTile(
                          activeColor: const Color(0xff85BE46),
                          contentPadding: EdgeInsets.zero,
                          title: Text(
                            'Two meals',
                            style: TextStyle(
                              color: const Color(0xFF12161C),
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          value: "2m",
                          groupValue: meal,
                          onChanged: (val) {
                            setState(() {
                              meal = val;
                            });
                          },
                        ),
                      ),
                    )
                  ],
                ),
                // SizedBox(height: 10.h),
                Row(
                  children: [
                    Theme(
                      data: ThemeData(
                          unselectedWidgetColor: const Color(0xff5A5D61)),
                      child: Flexible(
                        fit: FlexFit.loose,
                        child: RadioListTile(
                          activeColor: const Color(0xff85BE46),
                          contentPadding: EdgeInsets.zero,
                          title: Text(
                            '3 meals',
                            style: TextStyle(
                              color: const Color(0xFF12161C),
                              fontSize: 11.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          value: "3m",
                          groupValue: meal,
                          onChanged: (val) {
                            setState(() {
                              meal = val;
                            });
                          },
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20.h),
                Row(
                  children: [
                    SvgPicture.asset("Images/HomePage/Packages/menu-board.svg"),
                    SizedBox(width: 5.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 265.w,
                          child: Text(
                            'Decide if you want to have more meals',
                            style: TextStyle(
                              color: const Color(0xFF5A5D61),
                              fontSize: 11.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Theme(
                      data: ThemeData(
                          unselectedWidgetColor: const Color(0xff5A5D61)),
                      child: Flexible(
                        fit: FlexFit.loose,
                        child: RadioListTile(
                          activeColor: const Color(0xff85BE46),
                          contentPadding: EdgeInsets.zero,
                          title: Text(
                            'I prefer more meat',
                            style: TextStyle(
                              color: const Color(0xFF12161C),
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          value: "1m",
                          groupValue: moreMeals,
                          onChanged: (val) {
                            setState(() {
                              moreMeals = val;
                            });
                          },
                        ),
                      ),
                    )
                  ],
                ),
                // SizedBox(height: 10.h),
                Row(
                  children: [
                    Theme(
                      data: ThemeData(
                          unselectedWidgetColor: const Color(0xff5A5D61)),
                      child: Flexible(
                        fit: FlexFit.loose,
                        child: RadioListTile(
                          activeColor: const Color(0xff85BE46),
                          contentPadding: EdgeInsets.zero,
                          title: Text(
                            'I prefer more chicken',
                            style: TextStyle(
                              color: const Color(0xFF12161C),
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          value: "2m",
                          groupValue: moreMeals,
                          onChanged: (val) {
                            setState(() {
                              moreMeals = val;
                            });
                          },
                        ),
                      ),
                    )
                  ],
                ),
                // SizedBox(height: 10.h),
                Row(
                  children: [
                    Theme(
                      data: ThemeData(
                          unselectedWidgetColor: const Color(0xff5A5D61)),
                      child: Flexible(
                        fit: FlexFit.loose,
                        child: RadioListTile(
                          activeColor: const Color(0xff85BE46),
                          contentPadding: EdgeInsets.zero,
                          title: Text(
                            'I prefer more fish',
                            style: TextStyle(
                              color: const Color(0xFF12161C),
                              fontSize: 11.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          value: "3m",
                          groupValue: moreMeals,
                          onChanged: (val) {
                            setState(() {
                              moreMeals = val;
                            });
                          },
                        ),
                      ),
                    )
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                                "Images/HomePage/Packages/people.svg")
                          ],
                        ),
                        SizedBox(width: 10.w),
                        Column(
                          children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text:
                                        'Determine the number of your orders\n',
                                    style: TextStyle(
                                      color: const Color(0xFF12161C),
                                      fontSize: 11.sp,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        '(one order is enough for one person)',
                                    style: TextStyle(
                                      color: const Color(0xFF5A5D61),
                                      fontSize: 11.sp,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 20.w,
                              height: 20.h,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 20.w,
                                    height: 20.h,
                                    child: SvgPicture.asset(
                                        "Images/HomePage/Packages/minus-square.svg"),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 5.06),
                            Text(
                              '2',
                              style: TextStyle(
                                color: const Color(0xFF12161C),
                                fontSize: 12.5.sp,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(width: 5.06),
                            SizedBox(
                              width: 20.w,
                              height: 20.h,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 20.w,
                                    height: 20.h,
                                    child: SvgPicture.asset(
                                        "Images/HomePage/Packages/add-square.svg"),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Text(
                      'Notes',
                      style: TextStyle(
                        color: const Color(0xFF12161C),
                        fontSize: 14.5.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                TextFormField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.r),
                        borderSide: const BorderSide(
                            width: 1, color: Color(0xFFEBEBEC))),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.r),
                        borderSide: const BorderSide(
                            width: 1, color: Color(0xFFC1C2C3))),
                    contentPadding: EdgeInsets.fromLTRB(10.w, 12.h, 15.w, 10.h),
                    hintText: "You can add notes here",
                    fillColor: const Color(0xffFFFFFF),
                    filled: true,
                    hintStyle: TextStyle(
                      color: const Color(0xFFC1C2C3),
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  maxLines: 4,
                ),
                SizedBox(height: 10.h),

                Row(
                  children: [
                    SvgPicture.asset("Images/HomePage/Packages/moneys.svg"),
                    SizedBox(width: 5.w),
                    Row(
                      children: [
                        Text(
                          'Total price',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: const Color(0xFF12161C),
                            fontSize: 12.5.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 5.w),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: '179 SAR',
                                style: TextStyle(
                                  color: const Color(0xFF85BE46),
                                  fontSize: 14.5.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              TextSpan(
                                text: '/month',
                                style: TextStyle(
                                  color: const Color(0xFF5A5D61),
                                  fontSize: 8.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const PayNowScreen()));
                  },
                  color: const Color(0xFF85BE46),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.r)),
                  textColor: Colors.white,
                  height: 42.h,
                  minWidth: double.infinity,
                  child: Text(
                    'Apply for payment',
                    style: TextStyle(
                        color: const Color(0xffFFFFFF),
                        fontSize: 14.5.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(height: 15.h),
                Divider(
                  color: const Color(0xFFC1C2C3),
                  height: 1.h,
                  thickness: 1.r,
                  indent: 3.w,
                  endIndent: 3.w,
                ),
                SizedBox(height: 10.h),
                Container(
                  width: double.infinity,
                  height: 305.h,
                  padding: EdgeInsets.all(20.w),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.w)),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x26353535),
                        blurRadius: 0.1,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Paleo Harmony',
                          style: TextStyle(
                            color: const Color(0xFF12161C),
                            fontSize: 28.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            SizedBox(
                              width: 265.w,
                              child: Text(
                                "Achieve balance with a mix of proteins, healthy fats, and a variety of colorful vegetables and fruit",
                                style: TextStyle(
                                  color: const Color(0xFF5A5D61),
                                  fontSize: 11.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            SvgPicture.asset(
                                "Images/HomePage/Packages/Circle_Check.svg"),
                            SizedBox(width: 3.w),
                            SizedBox(
                              width: 265.w,
                              child: Text(
                                "Diverse protein sources",
                                style: TextStyle(
                                  color: const Color(0xFF5A5D61),
                                  fontSize: 12.5.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            SvgPicture.asset(
                                "Images/HomePage/Packages/Circle_Check.svg"),
                            SizedBox(width: 3.w),
                            SizedBox(
                              width: 265.w,
                              child: Text(
                                "Healthy fats (avocado, olive oil)",
                                style: TextStyle(
                                  color: const Color(0xFF5A5D61),
                                  fontSize: 12.5.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            SvgPicture.asset(
                                "Images/HomePage/Packages/Circle_Check.svg"),
                            SizedBox(width: 3.w),
                            SizedBox(
                              width: 265.w,
                              child: Text(
                                'Limited fruit and nuts',
                                style: TextStyle(
                                  color: const Color(0xFF5A5D61),
                                  fontSize: 12.5.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            SvgPicture.asset(
                                "Images/HomePage/Packages/Circle_Check.svg"),
                            SizedBox(width: 3.w),
                            SizedBox(
                              width: 265.w,
                              child: Text(
                                "Colorful vegetables",
                                style: TextStyle(
                                  color: const Color(0xFF5A5D61),
                                  fontSize: 12.5.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 290.w,
                                  height: 40.h,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFEDF5E3),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.w),
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Occasional nuts and seeds",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: const Color(0xFF85BE46),
                                          fontSize: 14.5.sp,
                                          fontFamily: 'Avenir',
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ]),
                ),
                SizedBox(height: 10.h),
                Container(
                  width: double.infinity,
                  height: 380.h,
                  padding: EdgeInsets.all(20.w),
                  decoration: ShapeDecoration(
                    color: const Color(0xff85BE46),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.w)),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x26353535),
                        blurRadius: 0.1,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: 130.w,
                              height: 30.h,
                              decoration: ShapeDecoration(
                                color: const Color(0xFFEDF5E3),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.w),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'MOST POPULAR',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: const Color(0xFF85BE46),
                                      fontSize: 11.5.sp,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 30.h),
                        Text(
                          "Athlete's Paleo",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 29.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            SizedBox(
                              width: 265.w,
                              child: Text(
                                "Tailored for active individuals, this package provides the energy needed for intense workouts",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            SvgPicture.asset(
                                "Images/HomePage/Packages/Circle_Check.white.svg"),
                            SizedBox(width: 3.w),
                            SizedBox(
                              width: 265.w,
                              child: Text(
                                'High-quality protein sources',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            SvgPicture.asset(
                                "Images/HomePage/Packages/Circle_Check.white.svg"),
                            SizedBox(width: 3.w),
                            SizedBox(
                              width: 265.w,
                              child: Text(
                                'Complex carbs (potatoes, plantains)',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            SvgPicture.asset(
                                "Images/HomePage/Packages/Circle_Check.white.svg"),
                            SizedBox(width: 3.w),
                            SizedBox(
                              width: 265.w,
                              child: Text(
                                'Nutrient-dense vegetables',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            SvgPicture.asset(
                                "Images/HomePage/Packages/Circle_Check.white.svg"),
                            SizedBox(width: 3.w),
                            SizedBox(
                              width: 265.w,
                              child: Text(
                                'Moderate fruit and protein shakes',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 290.w,
                                  height: 40.h,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFEDF5E3),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.w),
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Choose the number of meals',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: const Color(0xFF85BE46),
                                          fontSize: 16.5.sp,
                                          fontFamily: 'Avenir',
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ]),
                ),
                SizedBox(height: 10.h),
                Container(
                  width: double.infinity,
                  height: 315.h,
                  padding: EdgeInsets.all(20.w),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.w)),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x26353535),
                        blurRadius: 0.1,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Whole30 Reboot',
                          style: TextStyle(
                            color: const Color(0xFF12161C),
                            fontSize: 28.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            SizedBox(
                              width: 265.w,
                              child: Text(
                                'A 30-day reset, eliminating potential allergens and focusing on whole, unprocessed foods',
                                style: TextStyle(
                                  color: const Color(0xFF5A5D61),
                                  fontSize: 11.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            SvgPicture.asset(
                                "Images/HomePage/Packages/Circle_Check.svg"),
                            SizedBox(width: 3.w),
                            SizedBox(
                              width: 265.w,
                              child: Text(
                                'No added sugars or sweeteners',
                                style: TextStyle(
                                  color: const Color(0xFF5A5D61),
                                  fontSize: 12.5.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            SvgPicture.asset(
                                "Images/HomePage/Packages/Circle_Check.svg"),
                            SizedBox(width: 3.w),
                            SizedBox(
                              width: 265.w,
                              child: Text(
                                'No grains, dairy, or legumes',
                                style: TextStyle(
                                  color: const Color(0xFF5A5D61),
                                  fontSize: 12.5.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            SvgPicture.asset(
                                "Images/HomePage/Packages/Circle_Check.svg"),
                            SizedBox(width: 3.w),
                            SizedBox(
                              width: 265.w,
                              child: Text(
                                'Emphasis on whole foods',
                                style: TextStyle(
                                  color: const Color(0xFF5A5D61),
                                  fontSize: 12.5.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            SvgPicture.asset(
                                "Images/HomePage/Packages/Circle_Check.svg"),
                            SizedBox(width: 3.w),
                            SizedBox(
                              width: 265.w,
                              child: Text(
                                'Support materials and recipes',
                                style: TextStyle(
                                  color: const Color(0xFF5A5D61),
                                  fontSize: 12.5.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 290.w,
                                  height: 40.h,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFEDF5E3),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.w),
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Choose the number of meals',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: const Color(0xFF85BE46),
                                          fontSize: 14.5.sp,
                                          fontFamily: 'Avenir',
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ]),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
