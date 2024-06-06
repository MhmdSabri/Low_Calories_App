import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Low_Calories/pages/NavBar/Settings/Settings_Screen.dart';

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
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          const SettingsScreen()));
            },
            icon: const Icon(Icons.arrow_circle_left_outlined)),
        title: Text(
          "Profile Settings",
          style: TextStyle(
            color: const Color(0xFF12161C),
            fontSize: 14.sp,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 12.r, right: 12.r, bottom: 12.r),
          child: Column(children: [
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
