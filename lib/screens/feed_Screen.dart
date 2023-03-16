import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/color_constant.dart';
import '../constant/feed_list.dart';
import '../constant/string_constant.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  int timeIndexSelected = 1;

  final List<String> time = [
    all,
    general,
    covid,
    allergies,
    cardiology,
  ];

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
                      "  Community \n  Forum",
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
                        Icons.border_color_outlined,
                        color: kRedColor,
                        size: 25.h,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.w, right: 20.w),
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: kWhiteColor,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                    hintText: searchTopic,
                    hintStyle: const TextStyle(color: kGreyColor, fontWeight: FontWeight.bold),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: kGreyColor,
                      size: 24,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              SizedBox(
                height: 35.h,
                width: 495,
                child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          timeIndexSelected = index;
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.w),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              border: Border.all(
                                color: index == timeIndexSelected ? kRedColor : kWhiteColor,
                              ),
                              color: timeIndexSelected == index ? kWhiteColor : kWhiteColor),
                          child: Center(
                              child: Text(time[index],
                                  style: TextStyle(
                                      color: index == timeIndexSelected ? kRedColor : kGreyColor,
                                      fontSize: 16.sp,
                                      fontFamily: "TT-Norms-Fonts",
                                      fontWeight: FontWeight.w700))),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.w, right: 20.w),
                child: FeedListContainer(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
