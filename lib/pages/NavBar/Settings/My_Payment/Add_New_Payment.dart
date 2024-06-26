import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Low_Calories/pages/NavBar/Settings/My_Payment/CardExpirationFormatter.dart';
import 'package:Low_Calories/pages/NavBar/Settings/My_Payment/My_Payment_Screen.dart';

class AddNewPayment extends StatelessWidget {
  const AddNewPayment({super.key});

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
                          const MyPaymentScreen()));
            },
            icon: const Icon(Icons.arrow_circle_left_outlined)),
        title: Text(
          "Add New Payment",
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
            Row(
              children: [
                Text(
                  'Card Number',
                  style: TextStyle(
                    color: const Color(0xFF15181E),
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(16),
                    CardNumberInputFormatter()
                  ],
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.w),
                          borderSide:
                              const BorderSide(color: Color(0xFFEBEBEC))),
                      contentPadding:
                          EdgeInsets.fromLTRB(15.w, 12.h, 20.w, 10.h),
                      hintText: 'Enter Card Number',
                      fillColor: const Color(0xffFFFFFF),
                      filled: true,
                      hintStyle: TextStyle(
                        color: const Color(0xff96979A),
                        fontSize: 12.5.sp,
                        fontWeight: FontWeight.w400,
                      )),
                ),
              ],
            ),
            SizedBox(height: 15.h),
            Row(
              children: [
                Text(
                  'Card Number',
                  style: TextStyle(
                    color: const Color(0xFF15181E),
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: 5.h),
            Column(children: [
              TextFormField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.r),
                      borderSide: const BorderSide(color: Color(0xFFEBEBEC))),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.r),
                      borderSide:
                          const BorderSide(width: 1, color: Color(0xFFEBEBEC))),
                  contentPadding: EdgeInsets.fromLTRB(10.w, 12.h, 20.w, 10.h),
                  hintText: 'Enter your Name  ',
                  fillColor: const Color(0xffFFFFFF),
                  filled: true,
                  labelStyle: TextStyle(
                    color: const Color(0xff96979A),
                    fontSize: 12.5.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  hintStyle: TextStyle(
                      color: const Color(0xff96979A),
                      fontWeight: FontWeight.w400,
                      fontSize: 12.5.sp),
                ),
              ),
            ]),
            SizedBox(height: 15.h),
            Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Expired',
                          style: TextStyle(
                            color: const Color(0xFF12161C),
                            fontSize: 12.5.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // SizedBox(width: 100.w),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'CVV Code',
                          style: TextStyle(
                            color: const Color(0xFF12161C),
                            fontSize: 12.5.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
            SizedBox(height: 5.h),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(4),
                      CardExpirationFormatter()
                    ],
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4.w),
                            borderSide:
                                const BorderSide(color: Color(0xFFEBEBEC))),
                        contentPadding:
                            EdgeInsets.fromLTRB(15.w, 12.h, 20.w, 10.h),
                        hintText: 'MM/YY',
                        fillColor: const Color(0xffFFFFFF),
                        filled: true,
                        hintStyle: TextStyle(
                          color: const Color(0xFF5A5D61),
                          fontSize: 12.5.sp,
                          fontWeight: FontWeight.w400,
                        )),
                  ),
                ),
                SizedBox(width: 7.w),
                Expanded(
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(3)
                    ],
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4.w),
                            borderSide:
                                const BorderSide(color: Color(0xFFEBEBEC))),
                        contentPadding:
                            EdgeInsets.fromLTRB(15.w, 12.h, 20.w, 10.h),
                        hintText: 'CVV',
                        fillColor: const Color(0xffFFFFFF),
                        filled: true,
                        hintStyle: TextStyle(
                          color: const Color(0xFF5A5D61),
                          fontSize: 12.5.sp,
                          fontWeight: FontWeight.w400,
                        )),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.h),
            Column(
              children: [
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const MyPaymentScreen()));
                  },
                  color: const Color(0xFF85BE46),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.r)),
                  textColor: Colors.white,
                  height: 42.h,
                  minWidth: double.infinity,
                  child: Text(
                    'Add Card',
                    style: TextStyle(
                        color: const Color(0xffFFFFFF),
                        fontSize: 14.5.sp,
                        fontWeight: FontWeight.w500),
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

class CardNumberInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }
    String inputData = newValue.text;
    StringBuffer buffer = StringBuffer();

    for (var i = 0; i < inputData.length; i++) {
      buffer.write(inputData[i]);
      int index = i + 1;
      if (index % 4 == 0 && inputData.length != index) {
        buffer.write("  ");
      }
    }
    return TextEditingValue(
        text: buffer.toString(),
        selection: TextSelection.collapsed(
          offset: buffer.toString().length,
        ));
  }
}
