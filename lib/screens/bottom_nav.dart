import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_flutter_ui/constant/color_constant.dart';
import 'MAPS.dart';
import 'Profile_screen.dart';
import 'chat_screen.dart';
import 'feed_Screen.dart';
import 'home_screen.dart';


class BottomNavPage extends StatefulWidget {
  const BottomNavPage({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}
RxInt selectedIndex = 0.obs;
class _BottomNavPageState extends State<BottomNavPage> {



  Future<bool> showExitPopup(context) async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: SizedBox(
              height: 90.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Do you want to exit?",
                    style: TextStyle(fontFamily: "Montserrat", fontSize: 18.sp, fontWeight: FontWeight.w800, color: kBlackColor),
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            exit(0);
                          },
                          style: ElevatedButton.styleFrom(backgroundColor: kRedColor),
                          child: Text(
                            "Yes",
                            style: TextStyle(fontFamily: "Montserrat", fontSize: 15.sp, fontWeight: FontWeight.w800, color: kWhiteColor),
                          ),
                        ),
                      ),
                      SizedBox(width: 15.w),
                      Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: kWhiteColor,
                            ),
                            child: Text(
                              "No",
                              style: TextStyle(fontFamily: "Montserrat", fontSize: 15.sp, fontWeight: FontWeight.w800, color: kBlackColor),
                            ),
                          ))
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => showExitPopup(context),
      child: Scaffold(
        body:
        Obx(() {
          return IndexedStack(
            index: selectedIndex.value,
            children: [
              const HomePage(),
              const FeedPage(),
              const SizedBox(),
              const ChatScreen(),
              const ProfilePage(),
            ],
          );
        }),
        bottomNavigationBar: Obx(() {
          return BottomNavigationBar(
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            selectedIconTheme: const IconThemeData(color: kRedColor),
            selectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 6,
            ),
            showSelectedLabels: true,
            showUnselectedLabels: false,
            items: <BottomNavigationBarItem>[
              const BottomNavigationBarItem(
                activeIcon: Icon(Icons.home, size: 30),
                icon: Icon(
                  Icons.home_outlined,
                  size: 28,
                ),
                label: '🔴',
              ),
              const BottomNavigationBarItem(
                activeIcon: Icon(Icons.feed, size: 30),
                icon: Icon(
                  Icons.feed_outlined,
                  size: 28,
                ),
                label: '🔴',
              ),
              BottomNavigationBarItem(
                icon: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MapScreen(),
                      ),
                    );
                  },
                  child: Container(
                    height: 56,
                    width: 56,
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: kRedColor,
                          blurRadius: 5,
                          offset: Offset.zero, // changes position of shadow
                        ),
                      ],
                      color: kWhiteColor,
                      shape: BoxShape.circle,
                    ),
                    padding: const EdgeInsets.all(10),
                    child: const Icon(
                      Icons.add,
                      color: kRedColor,
                    ),
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                activeIcon: const Icon(Icons.chat_bubble, size: 30),
                icon: Container(
                  padding: const EdgeInsets.all(0.8),
                  child: const Icon(
                    Icons.chat_bubble_outline_rounded,
                    size: 28,
                  ),
                  // ),
                ),
                label: '🔴',
              ),
              BottomNavigationBarItem(
                activeIcon: const Icon(Icons.account_circle, size: 30),
                icon: Container(
                  padding: const EdgeInsets.all(0.8),
                  child: const Icon(
                    Icons.account_circle_outlined,
                    size: 28,
                  ),
                ),
                label: '🔴',
              ),
            ],
            onTap: (index) {
              selectedIndex.value = index;

              debugPrint('current index is $index');
            },
            currentIndex: selectedIndex.value,
          );
        }),
      ),
    );
  }
}
