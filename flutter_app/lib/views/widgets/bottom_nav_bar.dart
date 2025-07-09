import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import '../../controllers/nav_controller.dart';

class BottomNavBar extends StatelessWidget {
  final NavController navController = Get.find();

  final List<String> labels = [
    'Profile',
    'It',
    'General',
    'Card',
    'Manage',
  ];

  final List<Widget> navItems = [
    Padding(
      padding: EdgeInsets.all(1.sp), // Adjust padding as needed
      child: Image.asset(
        'assets/icons/Group3.png',
        height: 45.sp,
      ),
    ),
    Padding(
      padding: EdgeInsets.all(8.sp),
      child: SvgPicture.asset('assets/icons/Layers.svg',
          height: 27.sp, color: Colors.white),
    ),
    Padding(
      padding: EdgeInsets.all(8.sp),
      child: SvgPicture.asset('assets/icons/DashboardIcon.svg',
          height: 27.sp, color: Colors.white),
    ),
    Padding(
      padding: EdgeInsets.all(8.sp),
      child: SvgPicture.asset('assets/icons/Card.svg',
          height: 27.sp, color: Colors.white),
    ),
    Padding(
      padding: EdgeInsets.all(8.sp),
      child: SvgPicture.asset('assets/icons/Manage.svg',
          height: 27.sp, color: Colors.white),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final currentIndex = navController.currentIndex.value;
      final screenWidth = 1.sw;
      final itemWidth = screenWidth / labels.length;
      final labelLeft = itemWidth * currentIndex + itemWidth / 2;

      return SizedBox(
        height: 1.h,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              bottom: 15.h,
              left: 0,
              right: 0,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CurvedNavigationBar(
                    index: currentIndex,
                    onTap: navController.navigateTo,
                    backgroundColor: const Color.fromARGB(0, 243, 42, 42),
                    color: const Color(0xFF191F2F),
                    items: navItems,
                    height: 81.h,
                  ),
                  Positioned(
                    bottom: 5,
                    left: labelLeft - 30.w,
                    child: SizedBox(
                      width: 60.w,
                      child: Center(
                        child: Text(
                          labels[currentIndex],
                          style: TextStyle(
                            color: const Color(0xFFCED3D8),
                            fontWeight: FontWeight.bold,
                            fontSize: 12.sp,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0, // or right: 0, or set width accordingly
              child: Container(
                width: 440.w,
                height: 15.h,
                color: const Color(0xFF191F2F),
              ),
            ),
          ],
        ),
      );
    });
  }
}
