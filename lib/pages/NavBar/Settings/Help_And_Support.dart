import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:low_calories_app/pages/NavBar/Settings/Settings_Screen.dart';

class HelpAndSupport extends StatefulWidget {
  const HelpAndSupport({super.key});

  @override
  State<HelpAndSupport> createState() => _HelpAndSupportState();
}

class _HelpAndSupportState extends State<HelpAndSupport> {
  List items = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(12.w),
          child: Column(children: [
            SizedBox(height: 30.h),
            Row(
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.pop(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const SettingsScreen()));
                    },
                    child: const Icon(Icons.arrow_circle_left_outlined)),
                SizedBox(
                  width: 100.w,
                ),
                Text(
                  "Help & Support",
                  style: TextStyle(
                    color: const Color(0xFF12161C),
                    fontSize: 14.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.h),
            ExpansionTile(
                childrenPadding: EdgeInsets.zero,
                collapsedShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.w),
                    side: BorderSide(
                      color: const Color(0x19000000).withOpacity(0.05),
                    )),
                collapsedIconColor: const Color(0xff5A5D61),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.w),
                    side: BorderSide(
                      color: const Color(0x19000000).withOpacity(0.05),
                    )),
                title: Text(
                  'This is a collapse item title',
                  style: TextStyle(
                    color: const Color(0xFF12161C),
                    fontSize: 12.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                children: [
                  ListTile(
                    title: Text(
                      'This is a collapse item text. Professionally drive mission-critical imperatives rather than high standards in convergence.',
                      style: TextStyle(
                        color: const Color(0xFF5A5D61),
                        fontSize: 12.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )
                ]),
            SizedBox(height: 10.h),
            ExpansionTile(
                childrenPadding: EdgeInsets.zero,
                collapsedShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.w),
                    side: BorderSide(
                      color: const Color(0x19000000).withOpacity(0.05),
                    )),
                collapsedIconColor: const Color(0xff5A5D61),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.w),
                    side: BorderSide(
                      color: const Color(0x19000000).withOpacity(0.05),
                    )),
                title: Text(
                  'This is a collapse item title',
                  style: TextStyle(
                    color: const Color(0xFF12161C),
                    fontSize: 12.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                children: [
                  ListTile(
                    title: Text(
                      'This is a collapse item text. Professionally drive mission-critical imperatives rather than high standards in convergence.',
                      style: TextStyle(
                        color: const Color(0xFF5A5D61),
                        fontSize: 12.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )
                ]),
            SizedBox(height: 10.h),
            ExpansionTile(
                childrenPadding: EdgeInsets.zero,
                collapsedShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.w),
                    side: BorderSide(
                      color: const Color(0x19000000).withOpacity(0.05),
                    )),
                collapsedIconColor: const Color(0xff5A5D61),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.w),
                    side: BorderSide(
                      color: const Color(0x19000000).withOpacity(0.05),
                    )),
                title: Text(
                  'This is a collapse item title',
                  style: TextStyle(
                    color: const Color(0xFF12161C),
                    fontSize: 12.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                children: [
                  ListTile(
                    title: Text(
                      'This is a collapse item text. Professionally drive mission-critical imperatives rather than high standards in convergence.',
                      style: TextStyle(
                        color: const Color(0xFF5A5D61),
                        fontSize: 12.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )
                ]),
            SizedBox(height: 10.h),
            ExpansionTile(
                childrenPadding: EdgeInsets.zero,
                collapsedShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.w),
                    side: BorderSide(
                      color: const Color(0x19000000).withOpacity(0.05),
                    )),
                collapsedIconColor: const Color(0xff5A5D61),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.w),
                    side: BorderSide(
                      color: const Color(0x19000000).withOpacity(0.05),
                    )),
                title: Text(
                  'This is a collapse item title',
                  style: TextStyle(
                    color: const Color(0xFF12161C),
                    fontSize: 12.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                children: [
                  ListTile(
                    title: Text(
                      'This is a collapse item text. Professionally drive mission-critical imperatives rather than high standards in convergence.',
                      style: TextStyle(
                        color: const Color(0xFF5A5D61),
                        fontSize: 12.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )
                ]),
            SizedBox(height: 10.h),
            ExpansionTile(
                childrenPadding: EdgeInsets.zero,
                collapsedShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.w),
                    side: BorderSide(
                      color: const Color(0x19000000).withOpacity(0.05),
                    )),
                collapsedIconColor: const Color(0xff5A5D61),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.w),
                    side: BorderSide(
                      color: const Color(0x19000000).withOpacity(0.05),
                    )),
                title: Text(
                  'This is a collapse item title',
                  style: TextStyle(
                    color: const Color(0xFF12161C),
                    fontSize: 12.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                children: [
                  ListTile(
                    title: Text(
                      'This is a collapse item text. Professionally drive mission-critical imperatives rather than high standards in convergence.',
                      style: TextStyle(
                        color: const Color(0xFF5A5D61),
                        fontSize: 12.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )
                ]),
          ]),
        ),
      ),
    );
  }
}
