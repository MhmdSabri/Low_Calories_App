import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:Low_Calories/pages/Home/Packages_screen.dart';
import 'package:Low_Calories/pages/NavBar/Daily_diet.dart';

class PayNowScreen extends StatefulWidget {
  const PayNowScreen({super.key});

  @override
  State<PayNowScreen> createState() => _PayNowScreenState();
}

class _PayNowScreenState extends State<PayNowScreen> {
  String? payment;
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
                          const PackagesScreen()));
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
            Row(
              children: [
                Text(
                  'Cusromer Info',
                  style: TextStyle(
                    color: const Color(0xFF12161C),
                    fontSize: 12.5.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Name',
                  style: TextStyle(
                    color: const Color(0xFF5A5D61),
                    fontSize: 12.5.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Mohamed Elsherif',
                  style: TextStyle(
                    color: const Color(0xFF12161C),
                    fontSize: 11.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0.12,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Email',
                  style: TextStyle(
                    color: const Color(0xFF5A5D61),
                    fontSize: 12.5.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'example@gmail.com',
                  style: TextStyle(
                    color: const Color(0xFF12161C),
                    fontSize: 11.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0.12,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Row(
              children: [
                Text(
                  'Order Info',
                  style: TextStyle(
                    color: const Color(0xFF12161C),
                    fontSize: 12.5.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Column(
              children: [
                Container(
                  width: 340.w,
                  height: 75.h,
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
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(5.w),
                            child: Container(
                              width: 60,
                              height: 60.h,
                              decoration: ShapeDecoration(
                                image: const DecorationImage(
                                  image: AssetImage(
                                      "Images/HomePage/My dietary plan/My dietary plan.png"),
                                  fit: BoxFit.fill,
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4.w))),
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
                                'Paleo Diet',
                                style: TextStyle(
                                  color: const Color(0xFF12161C),
                                  fontSize: 12.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 4.h),
                          Row(
                            children: [
                              SizedBox(
                                width: 240.w,
                                child: Text(
                                  'Stone Age-inspired, emphasizes meat, fish, fruits, vegetables',
                                  style: TextStyle(
                                    color: const Color(0xFF5A5D61),
                                    fontSize: 8.sp,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 4.h),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: '1200 SAR/',
                                  style: TextStyle(
                                    color: const Color(0xFF12161C),
                                    fontSize: 11.sp,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                TextSpan(
                                  text: 'month',
                                  style: TextStyle(
                                    color: const Color(0xFF5A5D61),
                                    fontSize: 8.sp,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.h),
            Divider(
              color: const Color(0xFFF1F4F4),
              height: 1.h,
              thickness: 1.r,
              indent: 3.w,
              endIndent: 3.w,
            ),
            SizedBox(height: 10.h),
            Row(
              children: [
                Text(
                  'Delivery location',
                  style: TextStyle(
                    color: const Color(0xFF12161C),
                    fontSize: 12.5.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Row(children: [
              SvgPicture.asset("Images/HomePage/user/location.svg"),
              SizedBox(
                width: 4.w,
              ),
              Text(
                'Riyadh City Boulevard, Riyadh',
                style: TextStyle(
                  color: const Color(0xFF12161C),
                  fontSize: 11.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ]),
            SizedBox(height: 15.h),
            Divider(
              color: const Color(0xFFF1F4F4),
              height: 1.h,
              thickness: 1.r,
              indent: 3.w,
              endIndent: 3.w,
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: TextStyle(
                    color: const Color(0xFF5A5D61),
                    fontSize: 12.5.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '1200 SAR',
                  style: TextStyle(
                    color: const Color(0xFF12161C),
                    fontSize: 11.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Row(
              children: [
                Text(
                  'Promo Code',
                  style: TextStyle(
                    color: const Color(0xFF12161C),
                    fontSize: 12.5.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            TextFormField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.r),
                    borderSide:
                        const BorderSide(width: 1, color: Color(0xFFEBEBEC))),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.r),
                    borderSide:
                        const BorderSide(width: 1, color: Color(0xFFEBEBEC))),
                contentPadding: EdgeInsets.fromLTRB(10.w, 12.h, 15.w, 10.h),
                hintText: 'Input code',
                fillColor: const Color(0xffFFFFFF),
                suffixIconConstraints: BoxConstraints(
                  minWidth: 70.h,
                  minHeight: 25.w,
                ),
                suffixIcon: Padding(
                  padding: EdgeInsets.only(right: 10.r),
                  child: MaterialButton(
                    onPressed: () {},
                    color: const Color(0xFF85BE46),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.r)),
                    textColor: Colors.white,
                    height: 25.h,
                    minWidth: 60.w,
                    child: Text(
                      'Apply',
                      style: TextStyle(
                          color: const Color(0xffFFFFFF),
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                filled: true,
                hintStyle: TextStyle(
                  color: const Color(0xFFC1C2C3),
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Promo',
                  style: TextStyle(
                    color: const Color(0xFF5A5D61),
                    fontSize: 12.5.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '-200 SAR',
                  style: TextStyle(
                    color: const Color(0xFFE92727),
                    fontSize: 10.5.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.h),
            Divider(
              color: const Color(0xFFF1F4F4),
              height: 1.h,
              thickness: 1.r,
              indent: 3.w,
              endIndent: 3.w,
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Pay',
                  style: TextStyle(
                    color: const Color(0xFF5A5D61),
                    fontSize: 12.5.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '1000 SAR',
                  style: TextStyle(
                    color: const Color(0xFF12161C),
                    fontSize: 11.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Payment Method',
                  style: TextStyle(
                    color: const Color(0xFF12161C),
                    fontSize: 12.5.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Add New',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFF85BE46),
                    fontSize: 10.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Container(
              width: double.infinity,
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
                children: [
                  Theme(
                    data: ThemeData(
                        unselectedWidgetColor: const Color(0xff5A5D61)),
                    child: Flexible(
                      fit: FlexFit.loose,
                      child: RadioListTile(
                        activeColor: const Color(0xff85BE46),
                        contentPadding: EdgeInsets.only(left: 15.w),
                        controlAffinity: ListTileControlAffinity.trailing,
                        title: Row(
                          children: [
                            SvgPicture.asset("Images/HomePage/payNow/visa.svg"),
                            SizedBox(
                              width: 30.w,
                            ),
                            Text(
                              '**** **** **** 2389',
                              style: TextStyle(
                                color: const Color(0xFF12161C),
                                fontSize: 11.sp,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        value: "visa",
                        groupValue: payment,
                        onChanged: (val) {
                          setState(() {
                            payment = val;
                          });
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10.h),
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
                children: [
                  Theme(
                    data: ThemeData(
                        unselectedWidgetColor: const Color(0xff5A5D61)),
                    child: Flexible(
                      fit: FlexFit.loose,
                      child: RadioListTile(
                        activeColor: const Color(0xff85BE46),
                        controlAffinity: ListTileControlAffinity.trailing,
                        contentPadding: EdgeInsets.only(left: 15.w),
                        title: Row(
                          children: [
                            SvgPicture.asset(
                                "Images/HomePage/payNow/mastercard.svg"),
                            SizedBox(
                              width: 30.w,
                            ),
                            Text(
                              '**** **** **** 2389',
                              style: TextStyle(
                                color: const Color(0xFF12161C),
                                fontSize: 11.sp,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        value: "masterCard",
                        groupValue: payment,
                        onChanged: (val) {
                          setState(() {
                            payment = val;
                          });
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10.h),
            MaterialButton(
              onPressed: () {
                showModalBottomSheet(
                  shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.w),
                          topRight: Radius.circular(15.w))),
                  context: context,
                  builder: (context) {
                    return SizedBox(
                      height:
                          MediaQuery.of(context).copyWith().size.height * 0.58,
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.all(10.w),
                        child: Column(children: [
                          Column(
                            children: [
                              Image.asset(
                                  "Images/HomePage/payNow/payCompleted.png"),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Payment completed successfully',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: const Color(0xFF12161C),
                                  fontSize: 20.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          SizedBox(
                            width: 280.w,
                            child: Text(
                              'Subscription to the dietary plan has been completed successfully',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: const Color(0xFF12161C),
                                fontSize: 12.5.sp,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          MaterialButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    insetPadding: EdgeInsets.all(10.r),
                                    content: SizedBox(
                                      height: 310.h,
                                      width: 250.w,
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 160.h,
                                            width: 160.w,
                                            child: Image.asset(
                                                "Images/Create_Account/Verification/Congratulations.png"),
                                          ),
                                          SizedBox(height: 15.h),
                                          Column(
                                            children: [
                                              Text(
                                                'Congratulations',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color:
                                                      const Color(0xFF12161C),
                                                  fontSize: 20.sp,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              SizedBox(height: 10.h),
                                              Text.rich(
                                                TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: 'You won ',
                                                      style: TextStyle(
                                                        color: const Color(
                                                            0xFF12161C),
                                                        fontSize: 23.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: '50',
                                                      style: TextStyle(
                                                        color: const Color(
                                                            0xFF85BE46),
                                                        fontSize: 23.sp,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: ' points',
                                                      style: TextStyle(
                                                        color: const Color(
                                                            0xFF12161C),
                                                        fontSize: 23.sp,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 15.h),
                                          MaterialButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (BuildContext
                                                              context) =>
                                                          const DailyDietScreen()));
                                            },
                                            color: const Color(0xff85BE46),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(6.r)),
                                            textColor: Colors.white,
                                            height: 45.h,
                                            minWidth: 300.w,
                                            child: Text(
                                              'Collect',
                                              style: TextStyle(
                                                color: const Color(0xffFFFFFF),
                                                fontSize: 14.5.sp,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    backgroundColor: const Color(0xffFFFFFF),
                                    contentPadding: EdgeInsets.fromLTRB(
                                        10.w, 10.h, 10.w, 10.h),
                                  );
                                },
                              );
                            },
                            color: const Color(0xFF85BE46),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.w)),
                            textColor: Colors.white,
                            height: 42.h,
                            minWidth: double.infinity,
                            child: Text(
                              'Continue',
                              style: TextStyle(
                                  color: const Color(0xffFFFFFF),
                                  fontSize: 14.5.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ]),
                      ),
                    );
                  },
                );
              },
              color: const Color(0xFF85BE46),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.r)),
              textColor: Colors.white,
              height: 42.h,
              minWidth: double.infinity,
              child: Text(
                'Pay Now',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.5.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
