import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:medical_flutter_ui/constant/image_constant.dart';
import 'package:medical_flutter_ui/constant/string_constant.dart';
import '../../screens/doctor_information_screen.dart';
import '../color_constant.dart';

class DoctorListContainer extends StatelessWidget {
  const DoctorListContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: AnimationLimiter(
        child: Column(
          children: AnimationConfiguration.toStaggeredList(
            duration: const Duration(seconds:2),
            childAnimationBuilder: (widget) => SlideAnimation(
              verticalOffset: MediaQuery.of(context).size.width / 2,
              child: FadeInAnimation(child: widget),
            ),
            children: [  SizedBox(
              height: 480.h,
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      SizedBox(
                        height: 10.h,
                      ),
                      const DoctorList(
                        image_location: img6,
                        titles: doc6,
                        subtitle: available1,
                        desc: dermatology,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      const DoctorList(
                        image_location: img5,
                        desc: cardiology,
                        titles: doc5,
                        subtitle: available3,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      const DoctorList(
                        image_location: img4,
                        desc: dentistry,
                        titles: doc3,
                        subtitle: available2,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      const DoctorList(
                        image_location: img3,
                        desc: dermatology,
                        titles: doc1,
                        subtitle: available1,
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

class DoctorList extends StatelessWidget {
  final String titles;
  final String? image_location;
  final String subtitle;
  final String? desc;

  const DoctorList({
    Key? key,
    required this.titles,
    required this.subtitle,
    this.desc,
    this.image_location,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20.w, left: 20.w),
      child: InkWell(
        onTap: () {
          showModalBottomSheet<void>(
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            context: context,
            builder: (
                BuildContext context,
                ) {

              return const DoctorImformationPage();
            },
          );
        },
        child: Container(
            padding: EdgeInsets.only(left: 10.w, right: 10.w),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color:kWhiteColor
            ),
            height: 120.h,
            width: 450.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(image_location.toString(), height: 80.h, width: 70.w),
                    SizedBox(
                      width: 20.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          titles,
                          style: TextStyle(fontFamily: "Montserrat", fontSize: 15.sp, fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          desc!,
                          style: TextStyle(fontSize: 14.sp, color: kGreyColor, fontFamily: "Montserrat", fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
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
                        text: subtitle,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 13.sp,
                          color: kGreyColor,
                          fontFamily: "Montserrat",
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
