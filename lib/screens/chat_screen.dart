import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import '../constant/color_constant.dart';
import '../constant/constant_list/chat_constant.dart';
import '../constant/string_constant.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
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
                      consultation,
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
                        Icons.maps_ugc,
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
                    hintText: searchChat,
                    hintStyle: const TextStyle(color: kGreyColor, fontWeight: FontWeight.w600),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: kGreyColor,
                      size: 24,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              AnimationLimiter(
                child: AnimationConfiguration.staggeredList(
                  position: Random().nextInt(10),
                  delay:const Duration(seconds: 4),
                  duration: const Duration(seconds: 4),
                  child: SlideAnimation(
                    duration:const Duration(seconds: 4),
                    delay: const Duration(seconds: 4),
                    verticalOffset: MediaQuery.of(context).size.width / 2,
                    child: const FadeInAnimation(
                      delay: Duration(seconds: 4),
                      duration: Duration(seconds: 4),
                      child: ChatConstantScreen(),
                    ),
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
