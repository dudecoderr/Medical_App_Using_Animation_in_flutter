import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:medical_flutter_ui/constant/color_constant.dart';
import 'package:medical_flutter_ui/constant/string_constant.dart';
import 'package:medical_flutter_ui/screens/select_schedule_Screen.dart';

import '../constant/image_constant.dart';

class DoctorImformationPage extends StatefulWidget {
  const DoctorImformationPage({Key? key}) : super(key: key);

  @override
  State<DoctorImformationPage> createState() => _DoctorImformationPageState();
}

class _DoctorImformationPageState extends State<DoctorImformationPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 640.h,
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.r),
            topRight: Radius.circular(30.r),
          ),
        ),
        padding: EdgeInsets.only(right: 20.w, left: 20.w, top: 45.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AnimationLimiter(
              child: Column(
                children: AnimationConfiguration.toStaggeredList(
                  duration: const Duration(seconds: 1),
                  childAnimationBuilder: (widget) => SlideAnimation(
                    verticalOffset: MediaQuery.of(context).size.width / 2,
                    child: FadeInAnimation(child: widget),
                  ),
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
                            padding: EdgeInsets.only(top: 45.h, left: 20.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "dr.Theresa \nWebb",
                                  style: TextStyle(fontFamily: "Montserrat", fontSize: 32.sp, fontWeight: FontWeight.w700, color: kWhiteColor),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Text(
                                  dermatology,
                                  style: TextStyle(fontFamily: "Montserrat", fontSize: 15.sp, fontWeight: FontWeight.w500, color: kWhiteColor),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                RatingBar.builder(
                                  itemSize: 23,
                                  initialRating: 3,
                                  unratedColor: Colors.white54,
                                  minRating: 1,
                                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: kWhiteColor,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
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
                    ),
                  ],
                ),
              ),
            ),
            AnimationLimiter(
              child: Column(
                children: AnimationConfiguration.toStaggeredList(
                  duration: const Duration(seconds: 2),
                  childAnimationBuilder: (widget) => SlideAnimation(
                    verticalOffset: MediaQuery.of(context).size.width / 2,
                    child: FadeInAnimation(child: widget),
                  ),
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 5.w, top: 10.h),
                          height: 60.h,
                          width: 100.w,
                          decoration: BoxDecoration(color: kWhiteColor, borderRadius: BorderRadius.circular(20.r)),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: kTealColor,
                                    radius: 5,
                                  ),
                                  SizedBox(
                                    width: 5.h,
                                  ),
                                  Text(
                                    "language",
                                    style: TextStyle(fontFamily: "Montserrat", fontSize: 15.sp, fontWeight: FontWeight.w500, color: kBlackColor),
                                  )
                                ],
                              ),
                              Text(
                                "Eng",
                                style: TextStyle(fontFamily: "Montserrat", fontSize: 15.sp, fontWeight: FontWeight.w600, color: kBlackColor),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10.w, top: 10.h),
                          height: 60.h,
                          width: 110.w,
                          decoration: BoxDecoration(color: kWhiteColor, borderRadius: BorderRadius.circular(20.r)),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: kTealColor,
                                    radius: 4.r,
                                  ),
                                  SizedBox(
                                    width: 5.h,
                                  ),
                                  Text(
                                    "Experiance",
                                    style: TextStyle(fontFamily: "Montserrat", fontSize: 15.sp, fontWeight: FontWeight.w500, color: kBlackColor),
                                  )
                                ],
                              ),
                              Text(
                                "18yrs",
                                style: TextStyle(fontFamily: "Montserrat", fontSize: 15.sp, fontWeight: FontWeight.w600, color: kBlackColor),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10.w, top: 10.h),
                          height: 60.h,
                          width: 90.w,
                          decoration: BoxDecoration(color: kWhiteColor, borderRadius: BorderRadius.circular(20.r)),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: kTealColor,
                                    radius: 5,
                                  ),
                                  SizedBox(
                                    width: 5.h,
                                  ),
                                  Text(
                                    "Patient",
                                    style: TextStyle(fontFamily: "Montserrat", fontSize: 15.sp, fontWeight: FontWeight.w500, color: kBlackColor),
                                  )
                                ],
                              ),
                              Text(
                                "891",
                                style: TextStyle(fontFamily: "Montserrat", fontSize: 15.sp, fontWeight: FontWeight.w600, color: kBlackColor),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            AnimationLimiter(
              child: Column(
                children: AnimationConfiguration.toStaggeredList(
                  duration: const Duration(seconds: 3),
                  childAnimationBuilder: (widget) => SlideAnimation(
                    verticalOffset: MediaQuery.of(context).size.width / 2,
                    child: FadeInAnimation(child: widget),
                  ),
                  children: [
                    Text(
                        "Dr.Theresa webb is  Assitant  cheif quality officer at Massachusetts General Hospital , "
                            "Assistant Professor of Emergency medicine at harvad Medical School  an attending physics... ",
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: kBlackColor,
                        )),
                    Text("read more",
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w700,
                          color: kRedColor,
                        )),
                  ],
                ),
              ),
            ),
            AnimationLimiter(
              child: Column(
                children: AnimationConfiguration.toStaggeredList(
                  duration: const Duration(seconds: 3),
                  childAnimationBuilder: (widget) => SlideAnimation(
                    verticalOffset: MediaQuery.of(context).size.width / 2,
                    child: FadeInAnimation(child: widget),
                  ),
                  children: [
                    SizedBox(
                      height: 15.h,
                    ),
                    Container(
                      height: 130.h,
                      width: 400.w,
                      decoration: BoxDecoration(color: kWhiteColor, borderRadius: BorderRadius.circular(20.r)),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20.r),
                                  bottomLeft: Radius.circular(20.r),
                                ),
                                image: DecorationImage(image: AssetImage(img10), fit: BoxFit.cover),
                                color: Colors.yellow),
                            height: 130.h,
                            width: 120.w,
                          ),
                          AnimationLimiter(
                            child: Column(
                              children: AnimationConfiguration.toStaggeredList(
                                duration: const Duration(seconds: 3),
                                childAnimationBuilder: (widget) => SlideAnimation(
                                  horizontalOffset: MediaQuery.of(context).size.width / 2,
                                  child: FadeInAnimation(child: widget),
                                ),
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 20.h, left: 20.w),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(hospital1,
                                            style: TextStyle(
                                              fontFamily: "Montserrat",
                                              fontSize: 18.sp,
                                              fontWeight: FontWeight.w700,
                                              color: kBlackColor,
                                            )),
                                        Text("Surabaya",
                                            style: TextStyle(
                                              fontFamily: "Montserrat",
                                              fontSize: 18.sp,
                                              fontWeight: FontWeight.w700,
                                              color: kBlackColor,
                                            )),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Text("Jt.Raya Gubeng No.70",
                                            style: TextStyle(
                                              fontFamily: "Montserrat",
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w700,
                                              color: kGreyColor,
                                            )),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Text("open in google maps ↗",
                                            style: TextStyle(
                                              fontFamily: "Montserrat",
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w700,
                                              color: kRedColor,
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            AnimationLimiter(
              child: Column(
                children: AnimationConfiguration.toStaggeredList(
                  duration: const Duration(seconds: 3),
                  childAnimationBuilder: (widget) => SlideAnimation(
                    verticalOffset: MediaQuery.of(context).size.width / 2,
                    child: FadeInAnimation(child: widget),
                  ),
                  children: [
                    SizedBox(
                      height: 15.h,
                    ),
                    SizedBox(
                      height: 39.h,
                      width: 350.w,
                      child: ElevatedButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return Padding(
                                  padding: EdgeInsets.only(top: 220.h),
                                  child: AlertDialog(
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
                                      titlePadding: EdgeInsets.zero,
                                      insetPadding: EdgeInsets.all(20),
                                      actionsPadding: EdgeInsets.zero,
                                      buttonPadding: EdgeInsets.zero,
                                      contentPadding: EdgeInsets.zero,
                                      content: SelectSchedulePage()),
                                );
                              });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: kRedColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                        ),
                        child: Text(
                          "Create Appointment",
                          style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "Montserrat", fontSize: 15.sp, color: kWhiteColor),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
