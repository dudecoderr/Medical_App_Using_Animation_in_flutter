import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:medical_flutter_ui/constant/color_constant.dart';
import 'package:visibility_detector/visibility_detector.dart';
import '../constant/constant_list/allergies_list.dart';
import '../constant/constant_list/list_constant.dart';
import '../constant/string_constant.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key,}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>with AutomaticKeepAliveClientMixin, TickerProviderStateMixin {

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
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(begin: Alignment.centerLeft, end: Alignment.topRight, colors: [
        Color(0XFFfafcfe),
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
                        home,
                        style: TextStyle(fontFamily: "Montserrat", color: kBlackColor, fontSize: 35.sp, fontWeight: FontWeight.w700,),
                      ),
                      Stack(
                        children: [
                          Container(
                            height: 56.h,
                            width: 56.w,
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
                            child: const Icon(
                              Icons.notifications_none_outlined,
                              color: kRedColor,
                            ),
                          ),
                          const Positioned(
                            bottom: 40,
                            right: 0,
                            child: CircleAvatar(
                              backgroundColor: kRedColor,
                              radius: 5,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                AnimationLimiter(
                  child: Column(
                    children: AnimationConfiguration.toStaggeredList(
                      // duration: const Duration(seconds:2),
                      delay: Duration(seconds: 4),
                      childAnimationBuilder: (widget) => SlideAnimation(
                        verticalOffset: MediaQuery.of(context).size.width / 2,
                        child: FadeInAnimation(child: widget),
                      ),
                      children: [

                        Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                right: 20.w,
                                left: 20.w,
                              ),
                              child: Container(
                                height: 200.h,
                                width: 350.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.r),
                                  color: kWhiteColor,
                                ),
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
                                        nextAppointment,
                                        style: TextStyle(
                                          fontSize: 15.sp,
                                          fontFamily: "Montserrat",
                                          fontWeight: FontWeight.w600,
                                          color: Colors.teal,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 20.w,
                                        right: 20.w,
                                      ),
                                      child: Text(
                                        date1,
                                        style: TextStyle(
                                          fontSize: 21.sp,
                                          fontFamily: "Montserrat",
                                          fontWeight: FontWeight.w600,
                                          color: kBlackColor,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 20.w,
                                        right: 20.w,
                                      ),
                                      child: RichText(
                                        text: TextSpan(
                                          style: const TextStyle(color: kBlackColor),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: "➜",
                                                style: TextStyle(
                                                  color: kRedColor,
                                                  fontSize: 15.sp,
                                                  fontFamily: "Montserrat",
                                                )),
                                            TextSpan(
                                              text: time1,
                                              style: TextStyle(
                                                fontWeight: FontWeight.w800,
                                                fontSize: 13.sp,
                                                color: kBlackColor,
                                                fontFamily: "Montserrat",
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    Container(
                                      width: 350.w,
                                      height: 70.h,
                                      decoration: BoxDecoration(
                                        color: kRedColor,
                                        borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(30.r),
                                          bottomLeft: Radius.circular(30.r),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          top: 18.h,
                                          left: 20.w,
                                          right: 20.w,
                                        ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              doc1,
                                              style: TextStyle(
                                                fontSize: 15.sp,
                                                fontFamily: "Montserrat",
                                                fontWeight: FontWeight.w600,
                                                color: kWhiteColor,
                                              ),
                                            ),
                                            Text(
                                              desc1,
                                              style: TextStyle(
                                                fontSize: 13.sp,
                                                fontFamily: "Montserrat",
                                                color: kWhiteColor,
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
                            Positioned(
                              bottom: 45.h,
                              right: 35.w,
                              child: Container(
                                height: 56.h,
                                width: 56.w,
                                decoration: const BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: kWhiteColor,
                                      blurRadius: 6,
                                      blurStyle: BlurStyle.normal,
                                      offset: Offset.zero,
                                    ),
                                  ],
                                  color: kRedColor,
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  Icons.arrow_forward,
                                  color: kWhiteColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Container(
                  height: 270.h,
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
                      AnimationLimiter(
                        child: Column(
                          children: AnimationConfiguration.toStaggeredList(
                            duration: const Duration(seconds: 2),
                            delay: Duration(seconds: 4),
                            childAnimationBuilder: (widget) => SlideAnimation(
                              verticalOffset: MediaQuery.of(context).size.width,
                              child: FadeInAnimation(child: widget),
                            ),
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 20.h,
                                  left: 20.w,
                                  right: 20.w,
                                ),
                                child: Text(
                                  nearbyDoctor,
                                  style: TextStyle(
                                    fontSize: 24.sp,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w600,
                                    color: kBlackColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      ///============constant DoctorList=====================
                      SizedBox(
                        height: 20.h,
                      ),
                      AnimationLimiter(
                        child: Column(
                          children: AnimationConfiguration.toStaggeredList(
                            duration: const Duration(seconds: 2),
                            delay: Duration(seconds: 4),
                            childAnimationBuilder: (widget) => SlideAnimation(
                              horizontalOffset: MediaQuery.of(context).size.height,
                              child: FadeInAnimation(child: widget),
                            ),
                            children: [
                              const ListContainer(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                AnimationLimiter(
                  child: Column(
                    children: AnimationConfiguration.toStaggeredList(
                      duration: const Duration(seconds: 2),
                      delay: Duration(seconds: 4),
                      childAnimationBuilder: (widget) => SlideAnimation(
                        verticalOffset: MediaQuery.of(context).size.width / 2,
                        child: FadeInAnimation(child: widget),
                      ),
                      children: [
                        SizedBox(
                          height: 10.h,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 20.w),
                              child: Text(
                                threadYouMight,
                                style: TextStyle(
                                  fontSize: 24.sp,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w600,
                                  color: kBlackColor,
                                ),
                              ),
                            ),
                            AllergiesListContainer(),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
