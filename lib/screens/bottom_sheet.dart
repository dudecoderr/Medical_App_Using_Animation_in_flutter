import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import '../constant/color_constant.dart';
import '../constant/constant_list/doctor_list.dart';
import '../constant/string_constant.dart';

class LiveButtonBottomSheet extends StatefulWidget {
  const LiveButtonBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  State<LiveButtonBottomSheet> createState() => _LiveButtonBottomSheetState();
}

class _LiveButtonBottomSheetState extends State<LiveButtonBottomSheet> {
  bool showLiveButton = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 650.h,
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(60.r),
            topRight: Radius.circular(60.r),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50.h, left: 20.w, right: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 260.w,
                    height: 55.h,
                    child: TextFormField(
                      onTap: () {
                        //   Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //           builder: (context) =>
                        //               Filter_page()));
                      },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: kWhiteColor,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none,
                        ),
                        hintText: searchDoctorName,
                        hintStyle: const TextStyle(
                          color: kGreyColor,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Montserrat",
                        ),
                        prefixIcon: const Icon(
                          Icons.search,
                          color: kGreyColor,
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 51.h,
                    width: 55.w,
                    child: Container(
                      decoration: BoxDecoration(color: kWhiteColor, borderRadius: BorderRadius.circular(20)),
                      child: const Icon(
                        Icons.tune,
                        color: kGreyColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            DoctorListContainer(),
            AnimationLimiter(
              child: Column(
                children: AnimationConfiguration.toStaggeredList(
                  duration: const Duration(seconds: 3),
                  childAnimationBuilder: (widget) => SlideAnimation(
                    verticalOffset: MediaQuery.of(context).size.width / 2,
                    child: FadeInAnimation(child: widget),
                  ),
                  children: [
                    DefaultTabController(
                      length: 6,
                      child: Column(
                        children: <Widget>[
                          ButtonsTabBar(
                            backgroundColor: kWhiteColor,
                            unselectedBackgroundColor: kWhiteColor,
                            unselectedLabelStyle: TextStyle(
                              color: kGreyColor,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Montserrat",
                            ),
                            labelStyle: TextStyle(
                              color: kRedColor,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Montserrat",
                            ),
                            tabs: const [
                              Tab(
                                text: all,
                              ),
                              Tab(
                                text: allergies,
                              ),
                              Tab(
                                text: cardiology,
                              ),
                              Tab(
                                text: covid,
                              ),
                              Tab(
                                text: depression,
                              ),
                              Tab(
                                text: accidentsInjuries,
                              ),
                            ],
                          ),
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
    );
  }
}
