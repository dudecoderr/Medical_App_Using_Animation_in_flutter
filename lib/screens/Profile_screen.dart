import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:medical_flutter_ui/constant/image_constant.dart';
import 'package:medical_flutter_ui/constant/string_constant.dart';
import 'package:medical_flutter_ui/screens/bottom_nav.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../constant/color_constant.dart';
import '../constant/constant_list/profile_list.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}
class _ProfilePageState extends State<ProfilePage> with AutomaticKeepAliveClientMixin, TickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _animationController.forward(from: 0.5);
  }

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      selectedIndex.value;
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
          body: VisibilityDetector(
            key: UniqueKey(),
            onVisibilityChanged: (visiblityInfo) {
              if (visiblityInfo.visibleFraction > 0.8) {
                print('srat===========');
                _animationController.forward();
              } else {
                print('srat====2222=======');

                _animationController.reset();
              }
            },
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 65.h,
                      right: 20.w,
                      left: 20.w,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          profile,
                          style: TextStyle(fontFamily: "Montserrat", color: kBlackColor, fontSize: 30.sp, fontWeight: FontWeight.w700),
                        ),
                        Container(
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
                            Icons.settings_outlined,
                            color: kRedColor,
                            size: 25.h,
                          ),
                        ),
                      ],
                    ),
                  ),
                  AnimationLimiter(
                    child: Column(
                      children: AnimationConfiguration.toStaggeredList(
                        duration: const Duration(seconds: 1),
                        childAnimationBuilder: (widget) =>
                            SlideAnimation(
                              verticalOffset: MediaQuery
                                  .of(context)
                                  .size
                                  .width,
                              child: FadeInAnimation(child: widget),
                            ),
                        children: [ SizedBox(
                          height: 20.h,
                        ),
                          Column(
                            children: [
                              Image.asset(img1, height: 150.h, width: 120.w),
                              Text(
                                patient,
                                style: TextStyle(fontWeight: FontWeight.w900, fontFamily: "Montserrat", color: kBlackColor, fontSize: 15.sp),
                              ),
                              Text(
                                year1,
                                style: TextStyle(fontWeight: FontWeight.w700, fontFamily: "Montserrat", color: kGreyColor, fontSize: 13.sp),
                              ),
                            ],
                          ),
                        ],),),),
                  SizedBox(
                    height: 20.h,
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
                    Padding(
                      padding: EdgeInsets.only(
                        right: 20.w,
                        left: 20.w,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              padding: EdgeInsets.only(right: 20.w, left: 20.w, top: 20.h),
                              height: 80.h,
                              width: 140.w,
                              decoration: BoxDecoration(color: kWhiteColor, borderRadius: BorderRadius.circular(20.r)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: kTealColor,
                                        radius: 5,
                                      ),
                                      SizedBox(
                                        width: 3.w,
                                      ),
                                      Text(
                                        weight,
                                        style: TextStyle(fontWeight: FontWeight.w700, fontFamily: "Montserrat", color: kBlackColor, fontSize: 13.sp),
                                      )
                                    ],
                                  ),
                                  Text(
                                    kg,
                                    style: TextStyle(fontWeight: FontWeight.w700, fontFamily: "Montserrat", color: kBlackColor, fontSize: 25.sp),
                                  )
                                ],
                              )),
                          Container(
                              padding: EdgeInsets.only(right: 20.w, left: 20.w, top: 20.h),
                              height: 80.h,
                              width: 140.w,
                              decoration: BoxDecoration(color: kWhiteColor, borderRadius: BorderRadius.circular(20.r)),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: kTealColor,
                                        radius: 5.r,
                                      ),
                                      SizedBox(
                                        width: 3.w,
                                      ),
                                      Text(
                                        height,
                                        style: TextStyle(fontWeight: FontWeight.w700, fontFamily: "Montserrat", color: kBlackColor, fontSize: 13.sp),
                                      )
                                    ],
                                  ),
                                  Text(
                                    cm,
                                    style: TextStyle(fontWeight: FontWeight.w700, fontFamily: "Montserrat", color: kBlackColor, fontSize: 25.sp),
                                  )
                                ],
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Container(
                    height: 450.h,
                    width: 360.w,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade50,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.r),
                          topRight: Radius.circular(30.r),
                        )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 20.h,
                            left: 20.w,
                            right: 20.w,
                          ),
                          child: Text(
                            yourRecentThread,
                            style: TextStyle(
                              fontSize: 26.sp,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w600,
                              color: kBlackColor,
                            ),
                          ),
                        ),

                        ///============constant ProfileList=====================
                        SizedBox(
                          height: 10.h,
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
                      const ProfileListContainer(),
                    ],
                  ),
                ),
              ),

                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
