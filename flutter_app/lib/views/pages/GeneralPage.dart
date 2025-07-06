import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/bottom_nav_bar.dart';

class GeneralPage extends StatelessWidget {
  const GeneralPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: const BoxDecoration(
            color: Color(0xFF191F2F),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(0, 2),
                blurRadius: 4.0,
              ),
            ],
          ),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  'assets/icons/Group39.svg',
                  height: 30.w,
                  width: 32.h,
                ),
                const SizedBox(width: 16),
                SvgPicture.asset(
                  'assets/icons/Group108.svg',
                  height: 31.w,
                  width: 31.h,
                ),
              ],
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: SvgPicture.asset(
                  'assets/icons/Group159.svg',
                  height: 36.w,
                  width: 36.h,
                ),
              ),
            ],
          ),
        ),
      ),
      body: const Center(child: Text('General Page Content')),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
