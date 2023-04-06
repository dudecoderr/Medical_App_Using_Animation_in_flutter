import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:medical_flutter_ui/screens/bottom_nav.dart';
import 'package:visibility_detector/visibility_detector.dart';
import '../constant/color_constant.dart';
import '../constant/constant_list/chat_constant.dart';
import '../constant/string_constant.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key,}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> with AutomaticKeepAliveClientMixin, TickerProviderStateMixin {
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
    super.build(context);
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
                    child: Column(
                      children: AnimationConfiguration.toStaggeredList(
                        // duration: const Duration(seconds:2),
                        delay: Duration(seconds: 4),
                        childAnimationBuilder: (widget) =>
                            SlideAnimation(
                              verticalOffset: MediaQuery
                                  .of(context)
                                  .size
                                  .width / 2,
                              child: FadeInAnimation(child: widget),
                            ),
                        children: [
                          ChatConstantScreen(),
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
    });
  }
}

