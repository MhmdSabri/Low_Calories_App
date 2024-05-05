import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:low_calories_app/pages/NavBar/Settings/My_Address/My_Address.dart';

class NewAddressScreen extends StatefulWidget {
  const NewAddressScreen({super.key});

  @override
  State<NewAddressScreen> createState() => _NewAddressScreenState();
}

class _NewAddressScreenState extends State<NewAddressScreen> {
  String? country;
  String? city;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
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
                                const MyAddressScreen()));
                  },
                  child: const Icon(Icons.arrow_circle_left_outlined)),
              SizedBox(
                width: 100.w,
              ),
              Text(
                "New Address",
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
          Row(
            children: [
              Text(
                'Address Name',
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
          Column(children: [
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
                contentPadding: EdgeInsets.fromLTRB(10.r, 12.r, 15.r, 10.r),
                hintText: 'Ex: Home',
                fillColor: const Color(0xffFFFFFF),
                filled: true,
                hintStyle: TextStyle(
                  color: const Color(0xFF5A5D61),
                  fontSize: 12.5.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ]),
          SizedBox(height: 15.h),
          Row(
            children: [
              Text(
                'Country',
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
          Column(children: [
            Container(
              width: double.infinity,
              height: 40.h,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Color(0xFFDCDCDD)),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(right: 5.w, left: 10.w),
                child: DropdownButton(
                  isExpanded: true,
                  underline: const Divider(
                    thickness: 0,
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(10.r),
                  iconEnabledColor: const Color(0xff5A5D61),
                  iconSize: 30,
                  hint: Text(
                    'Select Country',
                    style: TextStyle(
                      color: const Color(0xFFC1C2C3),
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  items: ["egy", "ksa", "usa", "uk"]
                      .map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(e),
                          ))
                      .toList(),
                  onChanged: (val) {
                    setState(() {
                      country = val;
                    });
                  },
                  value: country,
                ),
              ),
            ),
          ]),
          SizedBox(height: 10.h),
          Row(
            children: [
              Text(
                'City',
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
          Column(children: [
            Container(
              width: double.infinity,
              height: 40.h,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Color(0xFFDCDCDD)),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(right: 5.w, left: 10.w),
                child: DropdownButton(
                  isExpanded: true,
                  underline: const Divider(
                    thickness: 0,
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(10.r),
                  iconEnabledColor: const Color(0xff5A5D61),
                  iconSize: 30,
                  hint: Text(
                    'Select Country',
                    style: TextStyle(
                      color: const Color(0xFFC1C2C3),
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  items: ["cairo", "mekka", "new york", "london"]
                      .map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(e),
                          ))
                      .toList(),
                  onChanged: (val) {
                    setState(() {
                      city = val;
                    });
                  },
                  value: city,
                ),
              ),
            ),
          ]),
          SizedBox(height: 15.h),
          Column(
            children: [
              MaterialButton(
                onPressed: () {
                  Navigator.pop(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const MyAddressScreen()));
                },
                color: const Color(0xFF85BE46),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.r)),
                textColor: Colors.white,
                height: 42.h,
                minWidth: double.infinity,
                child: Text(
                  'Add Address',
                  style: TextStyle(
                      color: const Color(0xffFFFFFF),
                      fontSize: 14.5.sp,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
