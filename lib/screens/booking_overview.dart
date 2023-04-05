import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:medical_flutter_ui/screens/processing_payment.dart';
import '../constant/color_constant.dart';
import '../constant/image_constant.dart';
import '../constant/string_constant.dart';

class BookingOverviewPage extends StatefulWidget {
  final DateTime selectedDay;
  final TimeOfDay startTime;
  final TimeOfDay endTime;

  const BookingOverviewPage({
    Key? key,
    required this.selectedDay,
    required this.startTime,
    required this.endTime,
  }) : super(key: key);

  @override
  State<BookingOverviewPage> createState() => _BookingOverviewPageState();
}

class _BookingOverviewPageState extends State<BookingOverviewPage> {
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
        body: Container(
          padding: EdgeInsets.only(top: 45.h, right: 20.w, left: 20.w),
          child: Column(
            children: [
              AnimationLimiter(
                child: Column(
                  children: AnimationConfiguration.toStaggeredList(
                    duration: const Duration(seconds: 2),
                    childAnimationBuilder: (widget) => SlideAnimation(
                      horizontalOffset: MediaQuery.of(context).size.width / 2,
                      child: FadeInAnimation(child: widget),
                    ),
                    children: [
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              height: 56,
                              width: 56,
                              decoration: const BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: kRedColor,
                                    blurRadius: 5,
                                    offset: Offset.zero,
                                  ),
                                ],
                                color: kWhiteColor,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.arrow_back,
                                color: kRedColor,
                                size: 25.h,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Text(
                            bookingOverview,
                            style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "Montserrat", fontSize: 35.sp, color: kBlackColor),
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
                        height: 30.w,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          shape: BoxShape.circle,
                          border: Border.all(color: kTealColor, width: 2),
                        ),
                        width: 130.w,
                        height: 130.h,
                        child: Container(
                          margin: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: kTealColor,
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(top: 45.h),
                            child: Column(
                              children: [
                                Text(
                                  ' ${widget.selectedDay.day.toString()}',
                                  style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "Montserrat", fontSize: 25.sp, color: kWhiteColor),
                                ),
                                //
                              ],
                            ),
                          ),
                        ),
                      ),
                      Text('${widget.startTime.format(context)} - ${widget.endTime.format(context)}',
                          style: TextStyle(color: kGreyColor, fontSize: 14.sp, fontFamily: "Montserrat", fontWeight: FontWeight.w700)),
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
                        height: 45.h,
                      ),
                      Container(
                          padding: EdgeInsets.only(left: 10.w,  top: 10.h),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: kWhiteColor),
                          height: 120.h,
                          width: 450.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Image.asset(img6, height: 90.h, width: 80.w),
                                  SizedBox(
                                    width: 20.w,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        doc4,
                                        style: TextStyle(fontFamily: "Montserrat", fontSize: 22.sp, fontWeight: FontWeight.w900),
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Text(
                                        dermatology,
                                        style: TextStyle(fontSize: 16.sp, color: kGreyColor, fontFamily: "Montserrat", fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
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
                        height:10.h,
                      ),
                      Container(
                        height: 100.h,
                        width: 450.w,
                        padding: EdgeInsets.only(left: 20.w, right: 10.w, top: 25.h),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: kWhiteColor),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              hospital1,
                              style: TextStyle(fontFamily: "Montserrat", fontSize: 20.sp, fontWeight: FontWeight.w600),
                            ), Text(
                              "Jt.Raya Gubeng No.70 , Gubeng",
                              style: TextStyle(fontFamily: "Montserrat", fontSize: 15.sp, fontWeight: FontWeight.w600,color: kGreyColor),
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
                      verticalOffset: MediaQuery.of(context).size.width ,
                      child: FadeInAnimation(child: widget),
                    ),
                    children: [
                      SizedBox(
                        height: 25.h,
                      ),
                      SizedBox(
                        height: 55.h,
                        width: 350.w,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ProcessingPaymentPage(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: kRedColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                          ),
                          child: Text(
                            "Book Appointment",
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
      ),
    );
  }
}
