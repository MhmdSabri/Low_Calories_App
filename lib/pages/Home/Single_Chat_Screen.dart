import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:low_calories_app/pages/NavBar/Custom_NavBar/NavBar.dart';

class SingleChatScreen extends StatelessWidget {
  const SingleChatScreen({super.key});

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
          "Customer Service",
          style: TextStyle(
            color: const Color(0xFF12161C),
            fontSize: 14.sp,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(10.w),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                  // padding: EdgeInsets.symmetric(vertical: 5.h),
                  children: [
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.all(1.r),
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.w, vertical: 10.h),
                            decoration: ShapeDecoration(
                              color: const Color(0xFFF1F4F4),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.w),
                              ),
                            ),
                            child: Text(
                              "Hey!",
                              style: TextStyle(
                                color: const Color(0xFF12161C),
                                fontSize: 12.25.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.all(1.r),
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.w, vertical: 10.h),
                            decoration: ShapeDecoration(
                              color: const Color(0xFFF1F4F4),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.w),
                              ),
                            ),
                            child: Text(
                              "How's your plan going?",
                              style: TextStyle(
                                color: const Color(0xFF12161C),
                                fontSize: 12.25.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            margin: EdgeInsets.all(1.r),
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.w, vertical: 10.h),
                            decoration: ShapeDecoration(
                              color: const Color(0xFF85BE46),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.w)),
                            ),
                            child: Text(
                              "Hi Mohamed!",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.25.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            margin: EdgeInsets.all(1.r),
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.w, vertical: 10.h),
                            decoration: ShapeDecoration(
                              color: const Color(0xFF85BE46),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.w)),
                            ),
                            child: Text(
                              "It's going well. Thanks for asking! ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.25.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.all(1.r),
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.w, vertical: 10.h),
                            decoration: ShapeDecoration(
                              color: const Color(0xFFF1F4F4),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.w),
                              ),
                            ),
                            child: Text(
                              "No worries. Let me know if you need any help",
                              style: TextStyle(
                                color: const Color(0xFF12161C),
                                fontSize: 12.25.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]),
            ),
            Row(
              children: [
                SizedBox(
                  height: 24.h,
                  width: 24.w,
                  child: SvgPicture.asset(
                      "Images/HomePage/Single Chat/chat.gallery.svg"),
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xFFF1F4F4),
                      suffixIcon: Padding(
                        padding: EdgeInsets.all(5.w),
                        child: Container(
                          width: 22.w,
                          height: 25.h,
                          padding: EdgeInsets.symmetric(
                              horizontal: 5.w, vertical: 1.h),
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF85BE46),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(34.w),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 15.h,
                                width: 16.w,
                                child: SvgPicture.asset(
                                    "Images/HomePage/Single Chat/Send Icon.svg"),
                              ),
                            ],
                          ),
                        ),
                      ),
                      prefixIconColor: const Color(0xff96979A),
                      hintText: "write a message",
                      contentPadding:
                          EdgeInsets.fromLTRB(25.w, 10.h, 20.w, 10.h),
                      hintStyle: TextStyle(
                        color: const Color(0xFF12161C),
                        fontSize: 12.5.sp,
                        fontWeight: FontWeight.w400,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60.w),
                          borderSide: const BorderSide(
                            color: Color(0xFFF1F4F4),
                          )),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60.r),
                        borderSide: const BorderSide(
                          color: Color(0xFFF1F4F4),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60.r),
                        borderSide: const BorderSide(
                          color: Color(0xFFF1F4F4),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
