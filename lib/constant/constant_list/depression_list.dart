import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:medical_flutter_ui/constant/string_constant.dart';
import '../color_constant.dart';


class DepressionListContainer extends StatelessWidget {
  const DepressionListContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:   AnimationLimiter(
        child: Column(
          children: AnimationConfiguration.toStaggeredList(
            duration: const Duration(seconds:2),
            childAnimationBuilder: (widget) => SlideAnimation(
              verticalOffset: MediaQuery.of(context).size.width / 2,
              child: FadeInAnimation(child: widget),
            ),
            children: [ SizedBox(
              height:380.h,
              child: ListView.builder(physics:  const AlwaysScrollableScrollPhysics(),
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      SizedBox(
                        height: 10.h,
                      ),
                      const DepressionList(
                        titles: que12,
                        subtitle: hour1,
                        desc1: replies1,
                        desc: "11",
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      const DepressionList(
                        desc: "9",
                        titles: que9,
                        desc1: replies2,
                        subtitle: hour2,
                      ),  SizedBox(
                        height: 10.h,
                      ),
                      const DepressionList(
                        desc: "8",
                        titles: que10,
                        desc1: replies1,
                        subtitle: hour1,
                      ),  SizedBox(
                        height: 10.h,
                      ),
                      const DepressionList(
                        desc: "15",
                        titles: que11,
                        desc1: replies2,
                        subtitle: hour2,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                    ],
                  );
                },
              ),
            ),],),),),
    );
  }
}

class DepressionList extends StatelessWidget {
  final String titles;

  final String subtitle;
  final String? desc;
  final String? desc1;

  const DepressionList({
    Key? key,
    required this.titles,
    required this.subtitle,
    this.desc,
    this.desc1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 20.w, left: 20.w, top: 20.h),
      width: 350.w,
      height: 170.h,
      decoration: BoxDecoration(color: kWhiteColor, borderRadius: BorderRadius.circular(30.r)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(depression,
                  style: TextStyle(
                    color: kTealColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 15.sp,
                  )),
              Icon(
                Icons.more_horiz_rounded,
                size: 20.h,
              ),
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          Text(titles,
              style: TextStyle(
                color: kBlackColor,
                fontWeight: FontWeight.w900,
                fontSize: 18.sp,
              )),
          SizedBox(
            height: 7.h,
          ),
          Text(subtitle,
              style: TextStyle(
                color: kGreyColor,
                fontWeight: FontWeight.w600,
                fontSize: 15.sp,
              )),
          SizedBox(
            height: 10.w,
          ),
          Row(
            children: [
              FavoriteButton(
                isFavorite: false,
                iconSize: 25.h,
                iconDisabledColor: kGreyColor,
                iconColor: kRedColor,
                valueChanged: (isFavorite) {},
              ),
              SizedBox(
                width: 8.w,
              ),
              Text(desc!,
                  style: TextStyle(
                    color: kBlackColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 15.sp,
                  )),
              SizedBox(
                width: 20.w,
              ),
              Icon(
                Icons.messenger_outline,
                size: 20.h,
                color: kGreyColor,
              ),
              Text(desc1!,
                  style: TextStyle(
                    color: kBlackColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 15.sp,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
