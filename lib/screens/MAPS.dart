import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:medical_flutter_ui/constant/string_constant.dart';
import '../constant/color_constant.dart';
import 'bottom_nav.dart';
import 'bottom_sheet.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {

  final Set<Marker> _markers = {};
  final LatLng _center = const LatLng(18.922370, 72.834504);

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      _markers.add(
        Marker(
          markerId: const MarkerId('marker_1'),
          position: const LatLng(18.982990, 72.808954),
          onTap: () {
            showModalBottomSheet(
              barrierColor: Colors.transparent,
              backgroundColor: Colors.transparent,
              context: context,
              builder: (BuildContext context) {
                return const MyContainer(
                  subtitle: "Kiran Hospital",
                  desc: "101 Doctors ",
                  title: 'Hospital',
                  descr1: '16 Speciality',
                );
              },
            );
          },
        ),
      );
      _markers.add(
        Marker(
          markerId: const MarkerId('marker_2'),
          position: const LatLng(19.017049, 72.830228),
          onTap: () {
            showModalBottomSheet(
              barrierColor: Colors.transparent,
              backgroundColor: Colors.transparent,
              context: context,
              builder: (BuildContext context) {
                return const MyContainer(
                  subtitle: hospital1,
                  desc: "131 Doctors ",
                  title: 'Hospital',
                  descr1: '14 Speciality',
                );
              },
            );
          },
        ),
      );
      _markers.add(
        Marker(
          markerId:const MarkerId('marker_3'),
          position:const LatLng(19.099074, 72.826454),
          onTap: () {
            showModalBottomSheet(
              barrierColor: Colors.transparent,
              backgroundColor: Colors.transparent,
              context: context,
              builder: (BuildContext context) {
                return const MyContainer(
                  subtitle: "Mayapada Hospital",
                  desc: "189 Doctors ",
                  title: 'Hospital',
                  descr1: '14 Speciality',
                );
              },
            );
          },
        ),
      );
      _markers.add(
        Marker(
          markerId:const MarkerId('marker_4'),
          position:const LatLng(18.941693, 72.823619),
          onTap: () {
            showModalBottomSheet(
              barrierColor: Colors.transparent,
              backgroundColor: Colors.transparent,
              context: context,
              builder: (BuildContext context) {
                return const MyContainer(
                  subtitle: "VWAF Clinic",
                  desc: "131 Doctors ",
                  title: 'Clinic',
                  descr1: '8 Speciality',
                );
              },
            );
          },
        ),
      );
      _markers.add(
        Marker(
          markerId:const MarkerId('marker_5'),
          position:const LatLng(18.922370, 72.834504),
          onTap: () {
            showModalBottomSheet(
              barrierColor: Colors.transparent,
              backgroundColor: Colors.transparent,
              context: context,
              builder: (BuildContext context) {
                return  const MyContainer(
                  subtitle: "Shyamuba Hospital",
                  desc: "31 Doctors ",
                  title: 'Hospital',
                  descr1: '9 Speciality',
                );
              },
            );
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            mapType: MapType.normal,


            onMapCreated: _onMapCreated,
            markers: _markers,
            initialCameraPosition: CameraPosition(
              target: _center,
              zoom: 12.0,
            ),
          ),

          Positioned(
              left: 10.w,
              right: 10.w,
              top: 45.h,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                         onTap: (){
                           Navigator.push(
                             context,
                             MaterialPageRoute(
                               builder: (context) => BottomNavPage(),
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
                                offset: Offset.zero,
                              ),
                            ],
                            color: kWhiteColor,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.arrow_back,
                            color: kRedColor,
                            size: 25.h,
                          ),
                        ),
                      ),
                      Text(
                        " Search Your  \n Preferred Doctor",
                        style: TextStyle(fontFamily: "Montserrat", color: kBlackColor, fontSize: 30.sp, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),



                ],
              )  ),
        ],
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final String? desc;
  final String? descr1;

  const MyContainer({
    super.key,
    this.title,
    this.descr1,
    this.subtitle,
    this.desc ,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet<void>(
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          context: context,
          builder: (
              BuildContext context,
              ) {

            return const LiveButtonBottomSheet();
          },
        );
      },
      child: Padding(
        padding: EdgeInsets.only(right: 10.w, left: 10.w),
        child: Container(
          decoration: BoxDecoration(color: kWhiteColor, borderRadius: BorderRadius.circular(20.r)),
          padding: EdgeInsets.only(right: 20.w, left: 20.w, top: 30.h),
          margin: const EdgeInsets.all(5),
          height: 210.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: kTealColor,
                    radius: 11,
                    child: Text(
                      "H",
                      style: TextStyle(fontWeight: FontWeight.w700, fontFamily: "Montserrat", color: kWhiteColor, fontSize: 10.sp),
                    ),
                  ),
                  SizedBox(
                    width: 3.w,
                  ),
                  Text(
                    title!,
                    style: TextStyle(fontWeight: FontWeight.w700, fontFamily: "Montserrat", color: kTealColor, fontSize: 18.sp),
                  ),
                ],
              ),
              SizedBox(height: 8.h),
              Text(
                subtitle!,
                style: TextStyle(fontWeight: FontWeight.w900, fontFamily: "Montserrat", color: kBlackColor, fontSize: 28.sp),
              ),
              SizedBox(height: 8.h),
              Text(
                "Jl. Raya Gubeng No.70, Gubeng",
                style: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                "11,4km from your location",
                style: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 15.sp,
                  color: Colors.grey.shade500,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 8.h),
              Wrap(
                children: [
                  Text(
                    desc!,
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 18.sp,
                      color: kRedColor,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    " in ",
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      color: kBlackColor,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    descr1!,
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      color: kRedColor,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
