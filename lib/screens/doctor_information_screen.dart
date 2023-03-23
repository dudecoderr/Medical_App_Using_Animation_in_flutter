import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_flutter_ui/constant/color_constant.dart';
import 'package:medical_flutter_ui/constant/string_constant.dart';

import '../constant/image_constant.dart';

class DoctorImformationPage extends StatefulWidget {
  const DoctorImformationPage({Key? key}) : super(key: key);

  @override
  State<DoctorImformationPage> createState() => _DoctorImformationPageState();
}

class _DoctorImformationPageState extends State<DoctorImformationPage> {




  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(begin: Alignment.centerLeft, tileMode: TileMode.mirror, end: Alignment.topRight, colors: [
        Color(0XFFfafcfe),
        Color(0XFFd9e9ea),
        Color(0XFFfafcfe),
        Color(0XFFfafcfe),
        Color(0XFFd9e9ea),
        Color(0XFFf6cac0),
        Color(0XFFf6ccc1),
      ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(right: 20.w, left: 20.w, top: 45.h),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: kTealColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: 200.h,
                      width: 350.w,
                      child: Padding(
                        padding:  EdgeInsets.only(top: 45.h,left: 20.w),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Text(
                            "dr.Theresa \n Webb",
                              style: TextStyle(fontFamily: "Montserrat", fontSize: 32.sp, fontWeight: FontWeight.w700,color: kWhiteColor),
                            ) ,
                            SizedBox(height: 10.h,),Text(
                            dermatology,
                              style: TextStyle(fontFamily: "Montserrat", fontSize: 15.sp, fontWeight: FontWeight.w600,color: kWhiteColor),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20.h,
                      left: 170.w,
                      child: Image.asset(img9, width: 200, height: 180.h),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
