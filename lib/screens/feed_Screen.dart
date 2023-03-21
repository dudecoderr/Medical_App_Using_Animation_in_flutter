import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_flutter_ui/constant/constant_list/profile_list.dart';
import '../constant/color_constant.dart';
import '../constant/constant_list/all_list_container.dart';
import '../constant/constant_list/allergies_list.dart';
import '../constant/constant_list/cardiology_list.dart';
import '../constant/constant_list/depression_list.dart';
import '../constant/constant_list/feed_list.dart';
import '../constant/string_constant.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  int timeIndexSelected = 1;
  int currentPage = 0;
  late TabController _tabController;
  final List<String> time = [all, general, covid, allergies, cardiology, accidentsInjuries];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(begin: Alignment.centerLeft, tileMode: TileMode.mirror, end: Alignment.topRight, colors: [
        Color(0XFFfafcfe),
        Color(0XFFd9e9ea),
        Color(0XFFfafcfe),
        Color(0XFFd9e9ea),
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
              SizedBox(height: 16),
              SizedBox(
                width: 500,
                height: 500,
                child: DefaultTabController(
                  length: 7,
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
                            text: general,
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
                      const Expanded(
                        child: TabBarView(
                          children: <Widget>[
                            Center(
                              child: AllListContainer(),
                            ),
                            Center(
                              child: AllListContainer(),
                            ),
                            Center(
                              child: AllergiesListContainer(),
                            ),
                            Center(
                              child: CardiologyListContainer(),
                            ),
                            Center(
                              child: FeedListContainer(),
                            ),
                            Center(
                              child: DepressionListContainer(),
                            ),
                            Center(
                              child: ProfileListContainer(),
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
      ),
    );
  }
}
