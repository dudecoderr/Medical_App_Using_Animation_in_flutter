import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weekly_date_picker/weekly_date_picker.dart';
import 'package:time_range/time_range.dart';
import '../constant/color_constant.dart';
import 'booking_overview.dart';

class SelectSchedulePage extends StatefulWidget {
  const SelectSchedulePage({Key? key}) : super(key: key);

  @override
  State<SelectSchedulePage> createState() => _SelectSchedulePageState();
}

class _SelectSchedulePageState extends State<SelectSchedulePage> {
  TimeOfDay? _selectedStartTime;
  TimeOfDay? _selectedEndTime;

  void _navigateToResultScreen() {
    if (_selectedStartTime != null && _selectedEndTime != null) {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => BookingOverviewPage(
                startTime: _selectedStartTime!,
                endTime: _selectedEndTime!,
                selectedDay: _selectedDay,
              )));
    } else {
      const SizedBox();
    }
  }

  int timeIndexSelected = 1;

  DateTime _selectedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.w,
      height: 330.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey.shade100,
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10.h, left: 10.w, right: 10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Select \nSchedule",
                  style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "Montserrat", fontSize: 35.sp, color: kBlackColor),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
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
                      Icons.close_rounded,
                      color: kRedColor,
                      size: 25.h,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          WeeklyDatePicker(
            selectedDigitColor: kWhiteColor,
            selectedBackgroundColor: kTealColor,
            backgroundColor: Colors.transparent,
            selectedDay: _selectedDay,
            changeDay: (value) => setState(() {
              _selectedDay = value;
            }),
            enableWeeknumberText: false,
            weeknumberColor: kBlackColor,
            weeknumberTextColor: kBlackColor,
            weekdayTextColor: kBlackColor,
            digitsColor: kBlackColor,
            weekdays: const ["Mon", "Tue", "Wed", "Thr", "Fri", "Sat", "Sun"],
            daysInWeek: 7,
          ),
          SizedBox(height: 10.h),
          TimeRange(
            titlePadding: 10,
            textStyle: const TextStyle(
              fontWeight: FontWeight.w700,
              color: kGreyColor,
              fontFamily: "Montserrat",
            ),
            activeTextStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontFamily: "Montserrat",
            ),
            borderColor: kWhiteColor,
            backgroundColor: kWhiteColor,
            activeBackgroundColor: kRedColor,
            firstTime: const TimeOfDay(hour: 10, minute: 00),
            lastTime: const TimeOfDay(hour: 20, minute: 00),
            timeStep: 30,
            timeBlock: 30,
            onRangeCompleted: (range) => setState(() {
              _selectedStartTime = range!.start;
              _selectedEndTime = range.end;
            }),
          ),
          SizedBox(height: 15.h),
          Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.w),
            child: SizedBox(
              height: 39.h,
              width: 350.w,
              child: ElevatedButton(
                onPressed: _navigateToResultScreen,
                style: ElevatedButton.styleFrom(
                  backgroundColor: kRedColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
                child: Text(
                  "Create Appointment",
                  style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "Montserrat", fontSize: 15.sp, color: kWhiteColor),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
