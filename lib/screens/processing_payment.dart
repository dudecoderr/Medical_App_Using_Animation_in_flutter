import 'package:circular_progress_stack/circular_progress_stack.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_flutter_ui/constant/color_constant.dart';

import 'bottom_nav.dart';

class ProcessingPaymentPage extends StatefulWidget {
  const ProcessingPaymentPage({Key? key}) : super(key: key);

  @override
  State<ProcessingPaymentPage> createState() => _ProcessingPaymentPageState();
}

class _ProcessingPaymentPageState extends State<ProcessingPaymentPage> {
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
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: FutureBuilder(
                future: Future.delayed(const Duration(seconds: 3)), // simulate a 3-second delay
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(10),
                              child: AnimatedStackCircularProgressBar(
                                size: 130,
                                progressStrokeWidth: 3,
                                backStrokeWidth: 3,
                                startAngle: 0,
                                backColor: const Color(0xffD7DEE7),
                                bars: [
                                  AnimatedBarValue(
                                    barColor: Colors.grey.shade500,
                                    barValues: 100,
                                    fullProgressColors: Colors.grey.shade300,
                                  ),
                                ],
                              ),
                             ),
                            Positioned(
                              left: 2,
                              right: 0.w,
                              top: 1,
                              bottom: 1,
                              child: FittedBox(
                                child: Container(
                                    margin: const EdgeInsets.all(10),
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: kTealColor,
                                    ),
                                    height: 120.h,
                                    width: 120.w,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.more_horiz_rounded, size: 50.sp, color: kWhiteColor),
                                      ],
                                    )),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          'Processing Your Payment',
                          style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "Montserrat", fontSize: 35.sp, color: kBlackColor),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    );
                  } else {
                    return Column(
                      key: ValueKey('text'),
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.grey.shade300, width: 2),
                          ),
                          width: 120.w,
                          height: 130.h,
                          child: Container(
                              margin: EdgeInsets.all(2),
                              decoration: const BoxDecoration(
                                color: kTealColor,
                                shape: BoxShape.circle,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.done, size: 50, color: kWhiteColor),
                                ],
                              )),
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          'Your Payment Success',
                          style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "Montserrat", fontSize: 35.sp, color: kBlackColor),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    );
                  }
                },
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            SizedBox(
              height: 55.h,
              width: 250.w,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BottomNavPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: kRedColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
                child: Text(
                  "Back to Home",
                  style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "Montserrat", fontSize: 15.sp, color: kWhiteColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
