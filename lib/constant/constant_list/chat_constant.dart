import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import '../color_constant.dart';
import '../image_constant.dart';
import '../string_constant.dart';

class ChatConstantScreen extends StatefulWidget {
  const ChatConstantScreen({Key? key}) : super(key: key);

  @override
  State<ChatConstantScreen> createState() => _ChatConstantScreenState();
}

class _ChatConstantScreenState extends State<ChatConstantScreen> {
  @override
  Widget build(BuildContext context) {
    return  AnimationLimiter(
      child: Column(
        children: AnimationConfiguration.toStaggeredList(
          duration: const Duration(seconds:4),
          childAnimationBuilder: (widget) => SlideAnimation(
            verticalOffset: MediaQuery.of(context).size.width / 2,
            child: FadeInAnimation(child: widget),
          ),
          children: [  SizedBox(
          height: 520.h,
          width: 500.w,
          child: ListView.builder(
            physics: const AlwaysScrollableScrollPhysics(),
            itemCount: 2,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.w, right: 20.w),
                    child: Container(
                      height: 80.h,
                      margin: EdgeInsets.only(bottom: 10.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: kWhiteColor,
                      ),
                      padding: EdgeInsets.only(left: 10.w, right: 10.w),
                      child: Row(
                        children: [
                          Image.asset(img1, height: 80.h, width: 55.w),
                          //=============== navigat screen =================
                          Padding(
                            padding: EdgeInsets.only(top: 20.h, left: 15.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  doc1,
                                  style: TextStyle(fontFamily: "Montserrat", fontSize: 15.sp, fontWeight: FontWeight.w900),
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                Text(
                                  desc4,
                                  style: TextStyle(fontSize: 12.sp, color: kGreyColor, fontFamily: "Montserrat", fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: EdgeInsets.only(top: 20.h),
                            child: Column(
                              children: [
                                Text(
                                  "11.59",
                                  style: TextStyle(fontFamily: "Montserrat", fontSize: 13.sp, fontWeight: FontWeight.w600, color: kGreyColor),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.w, right: 20.w),
                    child: Container(
                      height: 100.h,
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: kWhiteColor,
                      ),
                      padding: EdgeInsets.only(left: 10.w, right: 10.w),
                      child: Row(
                        children: [
                          Image.asset(img2, height: 80.h, width: 55.w),
                          //=============== navigat screen =================
                          Padding(
                            padding: EdgeInsets.only(top: 20.h, left: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  doc4,
                                  style: TextStyle(fontFamily: "Montserrat", fontSize: 15.sp, fontWeight: FontWeight.w900),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  "Saya agak sedikit nyeri di \nbagian punggung gitu dok kn...",
                                  style: TextStyle(fontSize: 12.sp, color: kGreyColor, fontFamily: "Montserrat", fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Column(
                              children: [
                                Text(
                                  "11.59",
                                  style: TextStyle(fontFamily: "Montserrat", fontSize: 13.sp, fontWeight: FontWeight.w600, color: kGreyColor),
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                Icon(
                                  Icons.done_all,
                                  size: 15.sp,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.w, right: 20.w),
                    child: Container(
                      height: 80.h,
                      margin: EdgeInsets.only(bottom: 10.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: kWhiteColor,
                      ),
                      padding: EdgeInsets.only(left: 10.w, right: 10.w),
                      child: Row(
                        children: [
                          Stack(
                            children: [
                              Image.asset(img3, height: 80.h, width: 55.w),
                              const Positioned(
                                bottom: 23,
                                right: 4,
                                child: CircleAvatar(
                                  backgroundColor: kRedColor,
                                  radius: 5,
                                ),
                              ),
                            ],
                          ),
                          //=============== navigat screen =================
                          Padding(
                            padding: EdgeInsets.only(top: 20.h, left: 15.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  doc5,
                                  style: TextStyle(fontFamily: "Montserrat", fontSize: 15.sp, fontWeight: FontWeight.w900),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  desc6,
                                  style: TextStyle(fontSize: 12.sp, color: kGreyColor, fontFamily: "Montserrat", fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: EdgeInsets.only(top: 20.h),
                            child: Column(
                              children: [
                                Text(
                                  "11.59",
                                  style: TextStyle(fontFamily: "Montserrat", fontSize: 13.sp, fontWeight: FontWeight.w600, color: kGreyColor),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                CircleAvatar(
                                  backgroundColor: kTealColor,
                                  radius: 10,
                                  child: Text(
                                    "2",
                                    style: TextStyle(fontFamily: "Montserrat", fontSize: 12.sp, fontWeight: FontWeight.w600),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.w, right: 20.w),
                    child: Container(
                      height: 80.h,
                      margin: EdgeInsets.only(bottom: 10.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: kWhiteColor,
                      ),
                      padding: EdgeInsets.only(left: 10.w, right: 10.w),
                      child: Row(
                        children: [
                          Stack(
                            children: [
                              Image.asset(img4, height: 80.h, width: 55.w),
                              Positioned(
                                bottom: 23.h,
                                right: 4.w,
                                child: CircleAvatar(
                                  backgroundColor: kRedColor,
                                  radius: 5.r,
                                ),
                              ),
                            ],
                          ),
                          //=============== navigat screen =================
                          Padding(
                            padding: EdgeInsets.only(top: 20.h, left: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  doc6,
                                  style: TextStyle(fontFamily: "Montserrat", fontSize: 15.sp, fontWeight: FontWeight.w900),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  desc7,
                                  style: TextStyle(fontSize: 12.sp, color: kGreyColor, fontFamily: "Montserrat", fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding:EdgeInsets.only(top: 20.h),
                            child: Column(
                              children: [
                                Text(
                                  "11.59",
                                  style: TextStyle(fontFamily: "Montserrat", fontSize: 13.sp, fontWeight: FontWeight.w600, color: kGreyColor),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                CircleAvatar(
                                  backgroundColor: kTealColor,
                                  radius: 10.r,
                                  child: Text(
                                    "9",
                                    style: TextStyle(fontFamily: "Montserrat", fontSize: 12.sp, fontWeight: FontWeight.w600),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),],),),);
  }
}
