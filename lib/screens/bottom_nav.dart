import 'package:flutter/material.dart';
import 'package:medical_flutter_ui/constant/color_constant.dart';

import 'Profile_screen.dart';
import 'chat_screen.dart';
import 'feed_Screen.dart';
import 'home_screen.dart';

class AnimatedBarExample extends StatefulWidget {
  const AnimatedBarExample({
    Key? key,
  }) : super(key: key);

  @override
  State<AnimatedBarExample> createState() => _AnimatedBarExampleState();
}

class _AnimatedBarExampleState extends State<AnimatedBarExample> {
  int selectedIndex = 0;

  List<Widget> widgets = [
    const HomePage(),
    const FeedPage(),
    const SizedBox(),
    const ChatScreen(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   body: IndexedStack(
     index: selectedIndex,
      children: widgets,
    ),
      bottomNavigationBar: BottomNavigationBar(
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
            icon: Container(
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
          setState(() {
            selectedIndex = index;
          });
          debugPrint('current index is $index');
        },
        currentIndex: selectedIndex,
      ),
    );
  }
}
