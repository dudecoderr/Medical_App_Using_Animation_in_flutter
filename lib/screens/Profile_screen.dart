import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_flutter_ui/constant/string_constant.dart';

import '../constant/color_constant.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
        body: Column(
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
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    );
  }
}
