import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_flutter_ui/constant/string_constant.dart';
import '../color_constant.dart';
import '../image_constant.dart';

class ListContainer extends StatelessWidget {
  const ListContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          return Row(
            children: [
              SizedBox(
                width: 10.h,
              ),
              const DoctorList(
                titles: doc2,
                subtitle: dermatology,
                image: img1,
                desc: "4.9",
              ),
              SizedBox(
                width: 10.h,
              ),
              const DoctorList(
                desc: " 4.5",
                titles: doc3,
                subtitle: cardiology,
                image: img2,
              ),  SizedBox(
                width: 10.h,
              ),
              const DoctorList(
                desc: " 4.7",
                titles: doc1,
                subtitle: cardiology,
                image: img3,
              ),  SizedBox(
                width: 10.h,
              ),
              const DoctorList(
                desc: " 4.4",
                titles: doc4,
                subtitle: cardiology,
                image: img4,
              ),
            ],
          );
        },
      ),
    );
  }
}

class DoctorList extends StatelessWidget {
  final String titles;

  final String subtitle;
  final String? desc;
  final String? image;
  final String? address;

  const DoctorList({
    Key? key,
    required this.titles,
    required this.subtitle,
    this.desc,
    this.image,
    this.address,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10.h),
      height: 180.h,
      width: 150.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          20.r,
        ),
        color: kWhiteColor,
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  image.toString(),
                  height: 80.h,
                  width: 80.w,
                ),
                RichText(
                  text: TextSpan(
                    style: const TextStyle(color: kBlackColor),
                    children: <TextSpan>[
                      TextSpan(
                          text: "★",
                          style: TextStyle(
                            color: kRedColor,
                            fontSize: 20.sp,
                            fontFamily: "Montserrat",
                          )),
                      TextSpan(
                        text: desc,
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 15.sp,
                          color: kBlackColor,
                          fontFamily: "Montserrat",
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Text(
              titles,
              style: TextStyle(
                fontSize: 15.sp,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w900,
                color: kBlackColor,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              subtitle,
              style: TextStyle(
                fontSize: 14.sp,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600,
                color: kRedColor,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              hospital1,
              style: TextStyle(
                fontSize: 14.sp,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600,
                color: kGreyColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
