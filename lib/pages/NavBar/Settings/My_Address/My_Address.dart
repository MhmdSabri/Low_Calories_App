import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Low_Calories/pages/NavBar/Settings/My_Address/Change_Address_Screen.dart';
import 'package:Low_Calories/pages/NavBar/Settings/My_Address/New_Address_Screen.dart';
import 'package:Low_Calories/pages/NavBar/Settings/Settings_Screen.dart';

class MyAddressScreen extends StatefulWidget {
  const MyAddressScreen({super.key});

  @override
  State<MyAddressScreen> createState() => _MyAddressScreenState();
}

class _MyAddressScreenState extends State<MyAddressScreen> {
  String? address;
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
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const NewAddressScreen()));
              },
              icon: const Icon(
                Icons.add_circle_outline,
                color: Color(0xff5A5D61),
              ))
        ],
        title: Text(
          "My Payment",
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
        padding: EdgeInsets.only(left: 12.r, right: 12.r, bottom: 12.r),
        child: Column(
          children: [
            Expanded(
              child: Column(children: [
                Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 97.h,
                      // padding: EdgeInsets.only(right: 8.r),
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Theme(
                            data: ThemeData(
                              unselectedWidgetColor: const Color(0xFF5A5D61),
                            ),
                            child: Flexible(
                              fit: FlexFit.loose,
                              child: RadioListTile(
                                activeColor: const Color(0xff85BE46),
                                contentPadding: EdgeInsets.only(left: 10.w),
                                controlAffinity:
                                    ListTileControlAffinity.trailing,
                                title: Row(
                                  children: [
                                    Text(
                                      'Work',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFF12161C),
                                        fontSize: 12.5.sp,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                value: "Adress1",
                                groupValue: address,
                                onChanged: (val) {
                                  setState(() {
                                    address = val;
                                  });
                                },
                              ),
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Padding(
                            padding: EdgeInsets.only(left: 10.r, bottom: 10.r),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Riyadh City Boulevard, Riyadh',
                                      style: TextStyle(
                                        color: const Color(0xFF12161C),
                                        fontSize: 12.5.sp,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10.h),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (BuildContext
                                                        context) =>
                                                    const ChangeAddressScreen()));
                                      },
                                      child: Text(
                                        'Change Address',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: const Color(0xFF85BE46),
                                          fontSize: 14.5.sp,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10.h),
                Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 97.h,
                      // padding: EdgeInsets.only(right: 8.r),
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Theme(
                            data: ThemeData(
                                unselectedWidgetColor: const Color(0xff5A5D61)),
                            child: Flexible(
                              fit: FlexFit.loose,
                              child: RadioListTile(
                                activeColor: const Color(0xff85BE46),
                                contentPadding: EdgeInsets.only(left: 10.w),
                                controlAffinity:
                                    ListTileControlAffinity.trailing,
                                title: Row(
                                  children: [
                                    Text(
                                      'Work',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFF12161C),
                                        fontSize: 12.5.sp,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                value: "Adress2",
                                groupValue: address,
                                onChanged: (val) {
                                  setState(() {
                                    address = val;
                                  });
                                },
                              ),
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Padding(
                            padding: EdgeInsets.only(left: 10.r, bottom: 10.r),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Riyadh City Boulevard, Riyadh',
                                      style: TextStyle(
                                        color: const Color(0xFF12161C),
                                        fontSize: 12.5.sp,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10.h),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (BuildContext
                                                        context) =>
                                                    const ChangeAddressScreen()));
                                      },
                                      child: Text(
                                        'Change Address',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: const Color(0xFF85BE46),
                                          fontSize: 14.5.sp,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10.h),
                Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 97.h,
                      // padding: EdgeInsets.only(right: 8.r),
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Theme(
                            data: ThemeData(
                                unselectedWidgetColor: const Color(0xff5A5D61)),
                            child: Flexible(
                              fit: FlexFit.loose,
                              child: RadioListTile(
                                activeColor: const Color(0xff85BE46),
                                contentPadding: EdgeInsets.only(left: 10.w),
                                controlAffinity:
                                    ListTileControlAffinity.trailing,
                                title: Row(
                                  children: [
                                    Text(
                                      'Work',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFF12161C),
                                        fontSize: 12.5.sp,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                value: "Adress3",
                                groupValue: address,
                                onChanged: (val) {
                                  setState(() {
                                    address = val;
                                  });
                                },
                              ),
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Padding(
                            padding: EdgeInsets.only(left: 10.r, bottom: 10.r),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Riyadh City Boulevard, Riyadh',
                                      style: TextStyle(
                                        color: const Color(0xFF12161C),
                                        fontSize: 12.5.sp,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10.h),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (BuildContext
                                                        context) =>
                                                    const ChangeAddressScreen()));
                                      },
                                      child: Text(
                                        'Change Address',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: const Color(0xFF85BE46),
                                          fontSize: 14.5.sp,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10.h),
                Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 97.h,
                      // padding: EdgeInsets.only(right: 8.r),
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Theme(
                            data: ThemeData(
                                unselectedWidgetColor: const Color(0xff5A5D61)),
                            child: Flexible(
                              fit: FlexFit.loose,
                              child: RadioListTile(
                                activeColor: const Color(0xff85BE46),
                                contentPadding: EdgeInsets.only(left: 10.w),
                                controlAffinity:
                                    ListTileControlAffinity.trailing,
                                title: Row(
                                  children: [
                                    Text(
                                      'Work',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFF12161C),
                                        fontSize: 12.5.sp,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                value: "Adress4",
                                groupValue: address,
                                onChanged: (val) {
                                  setState(() {
                                    address = val;
                                  });
                                },
                              ),
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Padding(
                            padding: EdgeInsets.only(left: 10.r, bottom: 10.r),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Riyadh City Boulevard, Riyadh',
                                      style: TextStyle(
                                        color: const Color(0xFF12161C),
                                        fontSize: 12.5.sp,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10.h),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (BuildContext
                                                        context) =>
                                                    const ChangeAddressScreen()));
                                      },
                                      child: Text(
                                        'Change Address',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: const Color(0xFF85BE46),
                                          fontSize: 14.5.sp,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10.h),
                Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 97.h,
                      // padding: EdgeInsets.only(right: 8.r),
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Theme(
                            data: ThemeData(
                                unselectedWidgetColor: const Color(0xff5A5D61)),
                            child: Flexible(
                              fit: FlexFit.loose,
                              child: RadioListTile(
                                activeColor: const Color(0xff85BE46),
                                contentPadding: EdgeInsets.only(left: 10.w),
                                controlAffinity:
                                    ListTileControlAffinity.trailing,
                                title: Row(
                                  children: [
                                    Text(
                                      'Work',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFF12161C),
                                        fontSize: 12.5.sp,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                value: "Adress5",
                                groupValue: address,
                                onChanged: (val) {
                                  setState(() {
                                    address = val;
                                  });
                                },
                              ),
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Padding(
                            padding: EdgeInsets.only(left: 10.r, bottom: 10.r),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Riyadh City Boulevard, Riyadh',
                                      style: TextStyle(
                                        color: const Color(0xFF12161C),
                                        fontSize: 12.5.sp,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10.h),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (BuildContext
                                                        context) =>
                                                    const ChangeAddressScreen()));
                                      },
                                      child: Text(
                                        'Change Address',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: const Color(0xFF85BE46),
                                          fontSize: 14.5.sp,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ]),
            ),
            Column(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    children: [
                      MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const SettingsScreen()));
                        },
                        color: const Color(0xFF85BE46),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.r)),
                        textColor: Colors.white,
                        height: 42.h,
                        minWidth: double.infinity,
                        child: Text(
                          'Select Address',
                          style: TextStyle(
                              color: const Color(0xffFFFFFF),
                              fontSize: 14.5.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
          ],
        ),
      ),
    );
  }
}
