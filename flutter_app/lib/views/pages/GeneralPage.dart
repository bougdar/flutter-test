import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../widgets/bottom_nav_bar.dart';

class GeneralPage extends StatelessWidget {
  const GeneralPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F1F1),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: const BoxDecoration(
            color: Color(0xFF191F2F),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(0, 5),
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
      body: SingleChildScrollView(
        child: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 23.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: Text(
                  'AKCC Dashboard',
                  style: TextStyle(
                    color: const Color(0xFF1274CB),
                    fontSize: 30,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: Text(
                  'Your dashboard gives you views of key performance.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 13.h,
              ),
              Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        Get.toNamed('/BusinessPage');
                      },
                    child: Container(
                      margin: EdgeInsets.only(left: 15.w),
                      width: 107.w,
                      height: 31.h,
                      decoration: ShapeDecoration(
                        color: const Color(0x991274CB),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.w),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Business',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 8.w),
                    width: 107.w,
                    height: 31.h,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          color: const Color(0xFF1274CB),
                        ),
                        borderRadius: BorderRadius.circular(6.w),
                      ),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed('/Summary');
                      },
                      child: Center(
                        child: Text(
                          'Summary',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color(0xFF1274CB),
                            fontSize: 13,
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 82.w,
                  ),
                  Container(
                    width: 106.w,
                    height: 36.h,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFF6F6F6),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1.w,
                          color: const Color(0xFFE2E2E2),
                        ),
                        borderRadius: BorderRadius.circular(17.5.r),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 12.w),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/icons/Group157.svg',
                            width: 16.w,
                            height: 16.h,
                          ),
                          SizedBox(width: 12.w),
                          Text(
                            'Weekly',
                            style: TextStyle(
                              color: const Color(0xFF9A9FA3),
                              fontSize: 13.sp,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 9.h,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15.w),
                    width: 199.w,
                    height: 149.h,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0.w,
                          top: 0.h,
                          child: Container(
                            width: 199.w,
                            height: 149.h,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFF6F6F6),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              shadows: [
                                BoxShadow(
                                  color: Color(0x26000000),
                                  blurRadius: 3.5,
                                  offset: Offset(4.w, 5.h),
                                  spreadRadius: -3,
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 29.w,
                          top: 98.h,
                          child: Container(
                            width: 7.w,
                            height: 7.h,
                            decoration: ShapeDecoration(
                              shape: OvalBorder(
                                side: BorderSide(
                                  width: 0.50.w,
                                  color: const Color(0xFF02ED0A),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 30.w,
                          top: 39.h,
                          child: Text(
                            'Profit',
                            style: TextStyle(
                              color: const Color(0xFF9A9FA3),
                              fontSize: 14.sp,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 30.w,
                          top: 113.h,
                          child: Text(
                            'SAR 40.9M',
                            style: TextStyle(
                              color: const Color(0xFF9A9FA3),
                              fontSize: 8.sp,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 40.w,
                          top: 95.h,
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: '61.65% ',
                                  style: TextStyle(
                                    color: const Color(0xFF02ED0A),
                                    fontSize: 10.sp,
                                    fontFamily: 'DM Sans',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Since last year ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10.sp,
                                    fontFamily: 'DM Sans',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 30.w,
                          top: 59.h,
                          child: Text(
                            'SAR 81.3M',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.sp,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 154.w,
                          top: 16.h,
                          child: SvgPicture.asset(
                            'assets/icons/Group52.svg',
                            width: 30.w,
                            height: 30.h,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15.w),
                    width: 199.w,
                    height: 149.h,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0.w,
                          top: 0.h,
                          child: Container(
                            width: 199.w,
                            height: 149.h,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFF6F6F6),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              shadows: [
                                BoxShadow(
                                  color: Color(0x26000000),
                                  blurRadius: 3.5,
                                  offset: Offset(4.w, 5.h),
                                  spreadRadius: -3,
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 29.w,
                          top: 98.h,
                          child: Container(
                            width: 7.w,
                            height: 7.h,
                            decoration: ShapeDecoration(
                              shape: OvalBorder(
                                side: BorderSide(
                                  width: 0.50.w,
                                  color: const Color(0xFF02ED0A),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 30.w,
                          top: 39.h,
                          child: Text(
                            'Gross Profit',
                            style: TextStyle(
                              color: const Color(0xFF9A9FA3),
                              fontSize: 14.sp,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 30.w,
                          top: 113.h,
                          child: Text(
                            'SAR 115.1M',
                            style: TextStyle(
                              color: const Color(0xFF9A9FA3),
                              fontSize: 8.sp,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 40.w,
                          top: 95.h,
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: '61.65% ',
                                  style: TextStyle(
                                    color: const Color(0xFF02ED0A),
                                    fontSize: 10.sp,
                                    fontFamily: 'DM Sans',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Since last year ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10.sp,
                                    fontFamily: 'DM Sans',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 30.w,
                          top: 59.h,
                          child: Text(
                            'SAR 122.1M',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.sp,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 154.w,
                          top: 16.h,
                          child: SvgPicture.asset(
                            'assets/icons/Group113.svg',
                            width: 30.w,
                            height: 30.h,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12.h,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15.w),
                    width: 199.w,
                    height: 149.h,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0.w,
                          top: 0.h,
                          child: Container(
                            width: 199.w,
                            height: 149.h,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFF6F6F6),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              shadows: [
                                BoxShadow(
                                  color: Color(0x26000000),
                                  blurRadius: 3.5,
                                  offset: Offset(4.w, 5.h),
                                  spreadRadius: -3,
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 29.w,
                          top: 98.h,
                          child: Container(
                            width: 7.w,
                            height: 7.h,
                            decoration: ShapeDecoration(
                              shape: OvalBorder(
                                side: BorderSide(
                                  width: 0.50.w,
                                  color: const Color(0xFF02ED0A),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 30.w,
                          top: 39.h,
                          child: Text(
                            'Expenses',
                            style: TextStyle(
                              color: const Color(0xFF9A9FA3),
                              fontSize: 14.sp,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 30.w,
                          top: 113.h,
                          child: Text(
                            'SAR 121.6M',
                            style: TextStyle(
                              color: const Color(0xFF9A9FA3),
                              fontSize: 8.sp,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 40.w,
                          top: 95.h,
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: '2.86% ',
                                  style: TextStyle(
                                    color: const Color(0xFF02ED0A),
                                    fontSize: 10.sp,
                                    fontFamily: 'DM Sans',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Since last year ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10.sp,
                                    fontFamily: 'DM Sans',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 30.w,
                          top: 59.h,
                          child: Text(
                            'SAR 74M',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.sp,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 154.w,
                          top: 16.h,
                          child: SvgPicture.asset(
                            'assets/icons/Group85.svg',
                            width: 30.w,
                            height: 30.h,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15.w),
                    width: 199.w,
                    height: 149.h,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0.w,
                          top: 0.h,
                          child: Container(
                            width: 199.w,
                            height: 149.h,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFF6F6F6),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              shadows: [
                                BoxShadow(
                                  color: Color(0x26000000),
                                  blurRadius: 3.5,
                                  offset: Offset(4.w, 5.h),
                                  spreadRadius: -3,
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 29.w,
                          top: 98.h,
                          child: Container(
                            width: 7.w,
                            height: 7.h,
                            decoration: ShapeDecoration(
                              shape: OvalBorder(
                                side: BorderSide(
                                  width: 0.50.w,
                                  color: const Color(0xFF02ED0A),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 30.w,
                          top: 39.h,
                          child: Text(
                            'Sales',
                            style: TextStyle(
                              color: const Color(0xFF9A9FA3),
                              fontSize: 14.sp,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 30.w,
                          top: 113.h,
                          child: Text(
                            'SAR 162.5m',
                            style: TextStyle(
                              color: const Color(0xFF9A9FA3),
                              fontSize: 8.sp,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 40.w,
                          top: 95.h,
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: '27.06%',
                                  style: TextStyle(
                                    color: const Color(0xFF02ED0A),
                                    fontSize: 10.sp,
                                    fontFamily: 'DM Sans',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Since last year ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10.sp,
                                    fontFamily: 'DM Sans',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 30.w,
                          top: 59.h,
                          child: Text(
                            'SAR 155.3M',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.sp,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 154.w,
                          top: 16.h,
                          child: SvgPicture.asset(
                            'assets/icons/Group523.svg',
                            width: 30.w,
                            height: 30.h,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.w),
                child: Container(
                  width: 409.w,
                  height: 246.77.h,
                  decoration: BoxDecoration(
                    color: Color(0xFFF6F6F6),
                    borderRadius: BorderRadius.circular(10.r),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x26000000),
                        blurRadius: 4.5.r,
                        offset: Offset(4.w, 4.h),
                        spreadRadius: -2.r,
                      ),
                    ],
                  ),
                  padding: EdgeInsets.fromLTRB(30.w, 20.h, 20.w, 20.h),
                  child: LineChart(
                    LineChartData(
                      minY: 0,
                      maxY: 260,
                      gridData: FlGridData(show: false),
                      borderData: FlBorderData(show: false),
                      titlesData: FlTitlesData(
                        leftTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            reservedSize: 30.w,
                            getTitlesWidget: (value, _) {
                              switch (value.toInt()) {
                                case 250:
                                  return Text(
                                    '250k',
                                    style: TextStyle(
                                      fontSize: 6.sp,
                                      color: Color(0xFF9A9FA3),
                                      fontFamily: 'DM Sans',
                                    ),
                                  );
                                case 200:
                                  return Text(
                                    '200k',
                                    style: TextStyle(
                                      fontSize: 6.sp,
                                      color: Color(0xFF9A9FA3),
                                      fontFamily: 'DM Sans',
                                    ),
                                  );
                                case 150:
                                  return Text(
                                    '150k',
                                    style: TextStyle(
                                      fontSize: 6.sp,
                                      color: Color(0xFF9A9FA3),
                                      fontFamily: 'DM Sans',
                                    ),
                                  );
                                case 100:
                                  return Text(
                                    '100k',
                                    style: TextStyle(
                                      fontSize: 6.sp,
                                      color: Color(0xFF9A9FA3),
                                      fontFamily: 'DM Sans',
                                    ),
                                  );
                                case 50:
                                  return Text(
                                    '50k',
                                    style: TextStyle(
                                      fontSize: 6.sp,
                                      color: Color(0xFF9A9FA3),
                                      fontFamily: 'DM Sans',
                                    ),
                                  );
                                default:
                                  return SizedBox.shrink();
                              }
                            },
                            interval: 50,
                          ),
                        ),
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            reservedSize: 20.h,
                            getTitlesWidget: (value, _) {
                              switch (value.toInt()) {
                                case 1:
                                  return Text(
                                    'Hayyak',
                                    style: TextStyle(
                                        fontSize: 6.sp, fontFamily: 'DM Sans'),
                                  );
                                case 2:
                                  return Text(
                                    'Flynas',
                                    style: TextStyle(
                                      fontSize: 6.sp,
                                      color: Color(0xFF9A9FA3),
                                      fontFamily: 'DM Sans',
                                    ),
                                  );
                                case 3:
                                  return Text(
                                    'Eateria',
                                    style: TextStyle(
                                      fontSize: 6.sp,
                                      color: Color(0xFF9A9FA3),
                                      fontFamily: 'DM Sans',
                                    ),
                                  );
                                case 4:
                                  return Text(
                                    'Al Fursan',
                                    style: TextStyle(
                                      fontSize: 6.sp,
                                      color: Color(0xFF9A9FA3),
                                      fontFamily: 'DM Sans',
                                    ),
                                  );
                                case 5:
                                  return Text(
                                    'Haramain',
                                    style: TextStyle(
                                      fontSize: 6.sp,
                                      color: Color(0xFF9A9FA3),
                                      fontFamily: 'DM Sans',
                                    ),
                                  );
                                default:
                                  return SizedBox.shrink();
                              }
                            },
                            interval: 1,
                          ),
                        ),
                        topTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: false)),
                        rightTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: false)),
                      ),
                      lineBarsData: [
                        LineChartBarData(
                          spots: [
                            FlSpot(1, 237),
                            FlSpot(2, 220),
                            FlSpot(3, 50),
                            FlSpot(4, 100),
                            FlSpot(5, 70),
                          ],
                          isCurved: false,
                          barWidth: 2.w,
                          color: Color(0xFF1274CB),
                          dotData: FlDotData(
                            show: true,
                            getDotPainter: (spot, _, __, ___) =>
                                FlDotCirclePainter(
                              radius: 4.5.r,
                              strokeWidth: 2.w,
                              color: Colors.white,
                              strokeColor: Color(0xFF1274CB),
                            ),
                          ),
                          belowBarData: BarAreaData(
                            show: true,
                            gradient: LinearGradient(
                              colors: [
                                Color(0x441274CB),
                                Colors.transparent,
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            cutOffY: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12, blurRadius: 10, spreadRadius: 2),
                  ],
                ),
                child: PieChart(
                  PieChartData(
                    borderData: FlBorderData(show: false),
                    sectionsSpace: 4,
                    centerSpaceRadius: 40,
                    sections: [
                      PieChartSectionData(
                        color: Colors.blue,
                        value: 40,
                        title: '40%',
                        radius: 60,
                        titleStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      PieChartSectionData(
                        color: Colors.orange,
                        value: 30,
                        title: '30%',
                        radius: 60,
                        titleStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      PieChartSectionData(
                        color: Colors.green,
                        value: 15,
                        title: '15%',
                        radius: 60,
                        titleStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      PieChartSectionData(
                        color: Colors.red,
                        value: 15,
                        title: '15%',
                        radius: 60,
                        titleStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Padding(
                  padding: EdgeInsets.only(left: 15.w),
                  child: Container(
                    width: 409.w,
                    height: 297.h,
                    padding: EdgeInsets.fromLTRB(22.w, 19.h, 22.w, 19.h),
                    decoration: ShapeDecoration(
                      color: const Color(0xFFF6F6F6),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x26000000),
                          blurRadius: 4.5.r,
                          offset: Offset(4.w, 4.h),
                          spreadRadius: -2.r,
                        ),
                      ],
                    ),
                    child: Builder(
                      builder: (context) {
                        // Local helper function inside the builder
                        TableRow buildTableRow(String brand, int dotColorHex,
                            String location, String sales) {
                          final dotColor = Color(dotColorHex);
                          return TableRow(
                            children: [
                              TableCell(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8.h),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 22.w,
                                        height: 22.h,
                                        decoration: ShapeDecoration(
                                          color: dotColor,
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                      SizedBox(width: 8.w),
                                      Text(
                                        brand,
                                        style: TextStyle(
                                          color: const Color(0xFF9A9FA3),
                                          fontSize: 13.sp,
                                          fontFamily: 'DM Sans',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8.h),
                                  child: Text(
                                    location,
                                    style: TextStyle(
                                      color: const Color(0xFF9A9FA3),
                                      fontSize: 11.sp,
                                      fontFamily: 'DM Sans',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8.h),
                                  child: Text(
                                    sales,
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: const Color(0xFF9A9FA3),
                                      fontSize: 11.sp,
                                      fontFamily: 'DM Sans',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        }

                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Top 5 Lounges by Sales',
                              style: TextStyle(
                                color: const Color(0xFF1274CB),
                                fontSize: 15.sp,
                                fontFamily: 'DM Sans',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 20.h),
                            Expanded(
                              child: SingleChildScrollView(
                                child: Table(
                                  columnWidths: {
                                    0: FlexColumnWidth(3),
                                    1: FlexColumnWidth(2),
                                    2: FlexColumnWidth(1.5),
                                  },
                                  defaultVerticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  children: [
                                    TableRow(
                                      children: [
                                        TableCell(
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 5.h),
                                            child: Text(
                                              'Brand',
                                              style: TextStyle(
                                                color: const Color(0xFF9A9FA3),
                                                fontSize: 12.sp,
                                                fontFamily: 'DM Sans',
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                        ),
                                        TableCell(
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 5.h),
                                            child: Text(
                                              'Location',
                                              style: TextStyle(
                                                color: const Color(0xFF9A9FA3),
                                                fontSize: 12.sp,
                                                fontFamily: 'DM Sans',
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                        ),
                                        TableCell(
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 5.h),
                                            child: Text(
                                              'Sales',
                                              textAlign: TextAlign.right,
                                              style: TextStyle(
                                                color: const Color(0xFF9A9FA3),
                                                fontSize: 12.sp,
                                                fontFamily: 'DM Sans',
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    buildTableRow('Hayyak VIP Lounge',
                                        0xFFE28D47, 'RUH, Int T3', '134.4K'),
                                    buildTableRow('Hayyak Lounge', 0xFF918181,
                                        'RUH, Dom T5', '113.4K'),
                                    buildTableRow('Flynas Lounge', 0xFF0AB9B2,
                                        'JED, Dom', '87.2K'),
                                    buildTableRow('Al Fursan Lounge',
                                        0xFF204A28, 'RUH, Int T4', '54.3K'),
                                    buildTableRow('Flynas Lounge', 0xFF0AB9B2,
                                        'DMM, Dom', '34.1K'),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  )),
              SizedBox(
                height: 12.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 24.w),
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '© 2024',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: ' ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(
                        text: 'Gulfrange',
                        style: TextStyle(
                          color: const Color(0xFF575FF2),
                          fontSize: 12,
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text: ' All rights reserved',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 140.h,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
