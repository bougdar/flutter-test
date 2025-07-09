import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class BusinessPage extends StatelessWidget {
  const BusinessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color(0xFFF1F1F1),
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
              leading: IconButton(
                icon: SvgPicture.asset(
                  'assets/icons/Vector7.svg',
                  height: 16.h,
                  width: 8.w,
                ),
                onPressed: () {
                  Get.offAllNamed('/');
                },
              ),
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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 13.h,
            ),
            Center(
              child: Text(
                'Eateria',
                style: TextStyle(
                  color: const Color(0xFF1274CB),
                  fontSize: 30,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(
              height: 13.h,
            ),

            Center(
              child: Text(
                'Lorem Ipsum Lorem Ipsum Lorem Ipsum',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            //chart 1
            Center(
              child: Container(
                width: 408.w,
                height: 41.h,
                decoration: ShapeDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9)),
                ),
                child: TabBar(
                  isScrollable: false,
                  indicator: BoxDecoration(
                    color: const Color(0x991274CB),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  indicatorSize: TabBarIndicatorSize.label,
                  labelPadding: EdgeInsets.zero,
                  labelColor: Colors.white, // Selected text color
                  unselectedLabelColor: const Color(0xFFA5A9AD),
                  labelStyle: TextStyle(
                    fontSize: 13,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w500,
                  ),
                  unselectedLabelStyle: TextStyle(
                    fontSize: 13,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w500,
                  ),
                  tabs: [
                    Container(
                      width: 136.w,
                      height: 35.h,
                      alignment: Alignment.center,
                      child: Text('Eateria'),
                    ),
                    Container(
                      width: 136.w,
                      height: 35.h,
                      alignment: Alignment.center,
                      child: Text('Eateria'),
                    ),
                    Container(
                      width: 136.w,
                      height: 35.h,
                      alignment: Alignment.center,
                      child: Text('Eateria'),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 13.h,
            ),

            Expanded(
              child: TabBarView(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 15.w),
                          child: Container(
                            width: 409.w,
                            height: 499.h,
                            decoration: BoxDecoration(
                              color: const Color(0xFFF6F6F6),
                              borderRadius: BorderRadius.circular(10.r),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x26000000),
                                  blurRadius: 4.5.r,
                                  offset: Offset(4.w, 4.h),
                                  spreadRadius: -2.r,
                                ),
                              ],
                            ),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Container(
                                width: 1400.w,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 30.w, vertical: 30.h),
                                child: Stack(
                                  children: [
                                    LineChart(
                                      LineChartData(
                                        minY: 0,
                                        maxY: 30,
                                        gridData: FlGridData(show: false),
                                        borderData: FlBorderData(show: false),
                                        lineBarsData: [
                                          LineChartBarData(
                                            isCurved: false,
                                            color: const Color(0xFF1274CB),
                                            barWidth: 2.w,
                                            spots: [
                                              FlSpot(1, 28),
                                              FlSpot(2, 25),
                                              FlSpot(3, 20),
                                              FlSpot(4, 18),
                                              FlSpot(5, 16),
                                              FlSpot(6, 14),
                                              FlSpot(7, 12),
                                              FlSpot(8, 9),
                                              FlSpot(9, 7),
                                              FlSpot(10, 5),
                                              FlSpot(11, 4),
                                              FlSpot(12, 2),
                                            ],
                                            dotData: FlDotData(
                                              show: true,
                                              getDotPainter:
                                                  (spot, _, __, ___) =>
                                                      FlDotCirclePainter(
                                                radius: 5.r,
                                                strokeWidth: 2.5.r,
                                                color: Colors.white,
                                                strokeColor:
                                                    const Color(0xFF1274CB),
                                              ),
                                            ),
                                            belowBarData: BarAreaData(
                                              show: true,
                                              gradient: LinearGradient(
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                                colors: [
                                                  const Color(0xFF1274CB),
                                                  const Color.fromARGB(
                                                      0, 255, 255, 255),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                        titlesData: FlTitlesData(
                                          topTitles: AxisTitles(
                                            sideTitles:
                                                SideTitles(showTitles: false),
                                          ),
                                          rightTitles: AxisTitles(
                                            sideTitles:
                                                SideTitles(showTitles: false),
                                          ),
                                          leftTitles: AxisTitles(
                                            sideTitles: SideTitles(
                                              showTitles: true,
                                              reservedSize: 50.w,
                                              interval: 3,
                                              getTitlesWidget: (value, _) {
                                                switch (value.toInt()) {
                                                  case 0:
                                                    return Text('0 SAR',
                                                        style: TextStyle(
                                                          color: const Color(
                                                              0xFF9A9FA3),
                                                          fontSize: 10.sp,
                                                          fontFamily: 'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ));
                                                  case 3:
                                                    return Text('3 SAR',
                                                        style: TextStyle(
                                                          color: const Color(
                                                              0xFF9A9FA3),
                                                          fontSize: 10.sp,
                                                          fontFamily: 'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ));
                                                  case 6:
                                                    return Text('6 SAR',
                                                        style: TextStyle(
                                                          color: const Color(
                                                              0xFF9A9FA3),
                                                          fontSize: 10.sp,
                                                          fontFamily: 'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ));
                                                  case 12:
                                                    return Text('12 SAR',
                                                        style: TextStyle(
                                                          color: const Color(
                                                              0xFF9A9FA3),
                                                          fontSize: 10.sp,
                                                          fontFamily: 'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ));
                                                  case 18:
                                                    return Text('18 SAR',
                                                        style: TextStyle(
                                                          color: const Color(
                                                              0xFF9A9FA3),
                                                          fontSize: 10.sp,
                                                          fontFamily: 'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ));
                                                  case 24:
                                                    return Text('24 SAR',
                                                        style: TextStyle(
                                                          color: const Color(
                                                              0xFF9A9FA3),
                                                          fontSize: 10.sp,
                                                          fontFamily: 'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ));

                                                  default:
                                                    return const SizedBox
                                                        .shrink();
                                                }
                                              },
                                            ),
                                          ),
                                          bottomTitles: AxisTitles(
                                            sideTitles: SideTitles(
                                              showTitles: true,
                                              reservedSize: 30.h,
                                              interval: 1,
                                              getTitlesWidget: (value, _) {
                                                const months = [
                                                  '',
                                                  'JAN',
                                                  'FEB',
                                                  'MAR',
                                                  'APR',
                                                  'MAY',
                                                  'JUN',
                                                  'JULY',
                                                  'AUG',
                                                  'SEP',
                                                  'OCT',
                                                  'NOV',
                                                  'DEC'
                                                ];
                                                if (value.toInt() >= 1 &&
                                                    value.toInt() <= 12) {
                                                  final text =
                                                      months[value.toInt()];
                                                  final isHighlighted =
                                                      text == 'FEB';
                                                  return Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 8.h),
                                                    child: Text(
                                                      text,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        color: const Color(
                                                            0xFF9A9FA3),
                                                        fontSize: 12.sp,
                                                        fontFamily: 'DM Sans',
                                                        fontWeight:
                                                            isHighlighted
                                                                ? FontWeight
                                                                    .w700
                                                                : FontWeight
                                                                    .w500,
                                                      ),
                                                    ),
                                                  );
                                                }
                                                return const SizedBox.shrink();
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                        top: 0,
                                        left: 0,
                                        child: Text(
                                          'Sales by Month',
                                          style: TextStyle(
                                            color: const Color(0xFF9A9FA3),
                                            fontSize: 15,
                                            fontFamily: 'DM Sans',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 15.h),
                        //chart 2
                        Padding(
                          padding: EdgeInsets.only(left: 15.w),
                          child: Container(
                            width: 409.w,
                            height: 499.h,
                            decoration: BoxDecoration(
                              color: const Color(0xFFF6F6F6),
                              borderRadius: BorderRadius.circular(10.r),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x26000000),
                                  blurRadius: 4.5.r,
                                  offset: Offset(4.w, 4.h),
                                  spreadRadius: -2.r,
                                ),
                              ],
                            ),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Container(
                                width: 1400.w,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 30.w, vertical: 30.h),
                                child: Stack(
                                  children: [
                                    LineChart(
                                      LineChartData(
                                        minY: 0,
                                        maxY: 30,
                                        gridData: FlGridData(show: false),
                                        borderData: FlBorderData(show: false),
                                        lineBarsData: [
                                          LineChartBarData(
                                            isCurved: false,
                                            color: const Color(0xFF30A34C),
                                            barWidth: 2.w,
                                            spots: [
                                              FlSpot(1, 28),
                                              FlSpot(2, 25),
                                              FlSpot(3, 20),
                                              FlSpot(4, 18),
                                              FlSpot(5, 16),
                                              FlSpot(6, 14),
                                              FlSpot(7, 12),
                                              FlSpot(8, 9),
                                              FlSpot(9, 7),
                                              FlSpot(10, 5),
                                              FlSpot(11, 4),
                                              FlSpot(12, 2),
                                            ],
                                            dotData: FlDotData(
                                              show: true,
                                              getDotPainter:
                                                  (spot, _, __, ___) =>
                                                      FlDotCirclePainter(
                                                radius: 5.r,
                                                strokeWidth: 2.5.r,
                                                color: Colors.white,
                                                strokeColor:
                                                    const Color(0xFF30A34C),
                                              ),
                                            ),
                                            belowBarData: BarAreaData(
                                              show: true,
                                              gradient: LinearGradient(
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                                colors: [
                                                  const Color(0xFF30A34C),
                                                  const Color.fromARGB(
                                                      0, 255, 255, 255),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                        titlesData: FlTitlesData(
                                          topTitles: AxisTitles(
                                            sideTitles:
                                                SideTitles(showTitles: false),
                                          ),
                                          rightTitles: AxisTitles(
                                            sideTitles:
                                                SideTitles(showTitles: false),
                                          ),
                                          leftTitles: AxisTitles(
                                            sideTitles: SideTitles(
                                              showTitles: true,
                                              reservedSize: 50.w,
                                              interval: 3,
                                              getTitlesWidget: (value, _) {
                                                switch (value.toInt()) {
                                                  case 0:
                                                    return Text('0 SAR',
                                                        style: TextStyle(
                                                          color: const Color(
                                                              0xFF9A9FA3),
                                                          fontSize: 10.sp,
                                                          fontFamily: 'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ));
                                                  case 3:
                                                    return Text('3 SAR',
                                                        style: TextStyle(
                                                          color: const Color(
                                                              0xFF9A9FA3),
                                                          fontSize: 10.sp,
                                                          fontFamily: 'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ));
                                                  case 6:
                                                    return Text('6 SAR',
                                                        style: TextStyle(
                                                          color: const Color(
                                                              0xFF9A9FA3),
                                                          fontSize: 10.sp,
                                                          fontFamily: 'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ));
                                                  case 12:
                                                    return Text('12 SAR',
                                                        style: TextStyle(
                                                          color: const Color(
                                                              0xFF9A9FA3),
                                                          fontSize: 10.sp,
                                                          fontFamily: 'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ));
                                                  case 18:
                                                    return Text('18 SAR',
                                                        style: TextStyle(
                                                          color: const Color(
                                                              0xFF9A9FA3),
                                                          fontSize: 10.sp,
                                                          fontFamily: 'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ));
                                                  case 24:
                                                    return Text('24 SAR',
                                                        style: TextStyle(
                                                          color: const Color(
                                                              0xFF9A9FA3),
                                                          fontSize: 10.sp,
                                                          fontFamily: 'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ));

                                                  default:
                                                    return const SizedBox
                                                        .shrink();
                                                }
                                              },
                                            ),
                                          ),
                                          bottomTitles: AxisTitles(
                                            sideTitles: SideTitles(
                                              showTitles: true,
                                              reservedSize: 30.h,
                                              interval: 1,
                                              getTitlesWidget: (value, _) {
                                                const months = [
                                                  '',
                                                  'JAN',
                                                  'FEB',
                                                  'MAR',
                                                  'APR',
                                                  'MAY',
                                                  'JUN',
                                                  'JULY',
                                                  'AUG',
                                                  'SEP',
                                                  'OCT',
                                                  'NOV',
                                                  'DEC'
                                                ];
                                                if (value.toInt() >= 1 &&
                                                    value.toInt() <= 12) {
                                                  final text =
                                                      months[value.toInt()];
                                                  final isHighlighted =
                                                      text == 'FEB';
                                                  return Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 8.h),
                                                    child: Text(
                                                      text,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        color: const Color(
                                                            0xFF9A9FA3),
                                                        fontSize: 12.sp,
                                                        fontFamily: 'DM Sans',
                                                        fontWeight:
                                                            isHighlighted
                                                                ? FontWeight
                                                                    .w700
                                                                : FontWeight
                                                                    .w500,
                                                      ),
                                                    ),
                                                  );
                                                }
                                                return const SizedBox.shrink();
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                        top: 0,
                                        left: 0,
                                        child: Text(
                                          'Sales by Month',
                                          style: TextStyle(
                                            color: const Color(0xFF9A9FA3),
                                            fontSize: 15,
                                            fontFamily: 'DM Sans',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
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
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 15.w),
                          child: Container(
                            width: 409.w,
                            height: 499.h,
                            decoration: BoxDecoration(
                              color: const Color(0xFFF6F6F6),
                              borderRadius: BorderRadius.circular(10.r),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x26000000),
                                  blurRadius: 4.5.r,
                                  offset: Offset(4.w, 4.h),
                                  spreadRadius: -2.r,
                                ),
                              ],
                            ),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Container(
                                width: 1400.w,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 30.w, vertical: 30.h),
                                child: Stack(
                                  children: [
                                    LineChart(
                                      LineChartData(
                                        minY: 0,
                                        maxY: 30,
                                        gridData: FlGridData(show: false),
                                        borderData: FlBorderData(show: false),
                                        lineBarsData: [
                                          LineChartBarData(
                                            isCurved: false,
                                            color: const Color(0xFF1274CB),
                                            barWidth: 2.w,
                                            spots: [
                                              FlSpot(1, 28),
                                              FlSpot(2, 25),
                                              FlSpot(3, 20),
                                              FlSpot(4, 18),
                                              FlSpot(5, 16),
                                              FlSpot(6, 14),
                                              FlSpot(7, 12),
                                              FlSpot(8, 9),
                                              FlSpot(9, 7),
                                              FlSpot(10, 5),
                                              FlSpot(11, 4),
                                              FlSpot(12, 2),
                                            ],
                                            dotData: FlDotData(
                                              show: true,
                                              getDotPainter:
                                                  (spot, _, __, ___) =>
                                                      FlDotCirclePainter(
                                                radius: 5.r,
                                                strokeWidth: 2.5.r,
                                                color: Colors.white,
                                                strokeColor:
                                                    const Color(0xFF1274CB),
                                              ),
                                            ),
                                            belowBarData: BarAreaData(
                                              show: true,
                                              gradient: LinearGradient(
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                                colors: [
                                                  const Color(0xFF1274CB),
                                                  const Color.fromARGB(
                                                      0, 255, 255, 255),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                        titlesData: FlTitlesData(
                                          topTitles: AxisTitles(
                                            sideTitles:
                                                SideTitles(showTitles: false),
                                          ),
                                          rightTitles: AxisTitles(
                                            sideTitles:
                                                SideTitles(showTitles: false),
                                          ),
                                          leftTitles: AxisTitles(
                                            sideTitles: SideTitles(
                                              showTitles: true,
                                              reservedSize: 50.w,
                                              interval: 3,
                                              getTitlesWidget: (value, _) {
                                                switch (value.toInt()) {
                                                  case 0:
                                                    return Text('0 SAR',
                                                        style: TextStyle(
                                                          color: const Color(
                                                              0xFF9A9FA3),
                                                          fontSize: 10.sp,
                                                          fontFamily: 'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ));
                                                  case 3:
                                                    return Text('3 SAR',
                                                        style: TextStyle(
                                                          color: const Color(
                                                              0xFF9A9FA3),
                                                          fontSize: 10.sp,
                                                          fontFamily: 'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ));
                                                  case 6:
                                                    return Text('6 SAR',
                                                        style: TextStyle(
                                                          color: const Color(
                                                              0xFF9A9FA3),
                                                          fontSize: 10.sp,
                                                          fontFamily: 'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ));
                                                  case 12:
                                                    return Text('12 SAR',
                                                        style: TextStyle(
                                                          color: const Color(
                                                              0xFF9A9FA3),
                                                          fontSize: 10.sp,
                                                          fontFamily: 'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ));
                                                  case 18:
                                                    return Text('18 SAR',
                                                        style: TextStyle(
                                                          color: const Color(
                                                              0xFF9A9FA3),
                                                          fontSize: 10.sp,
                                                          fontFamily: 'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ));
                                                  case 24:
                                                    return Text('24 SAR',
                                                        style: TextStyle(
                                                          color: const Color(
                                                              0xFF9A9FA3),
                                                          fontSize: 10.sp,
                                                          fontFamily: 'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ));

                                                  default:
                                                    return const SizedBox
                                                        .shrink();
                                                }
                                              },
                                            ),
                                          ),
                                          bottomTitles: AxisTitles(
                                            sideTitles: SideTitles(
                                              showTitles: true,
                                              reservedSize: 30.h,
                                              interval: 1,
                                              getTitlesWidget: (value, _) {
                                                const months = [
                                                  '',
                                                  'JAN',
                                                  'FEB',
                                                  'MAR',
                                                  'APR',
                                                  'MAY',
                                                  'JUN',
                                                  'JULY',
                                                  'AUG',
                                                  'SEP',
                                                  'OCT',
                                                  'NOV',
                                                  'DEC'
                                                ];
                                                if (value.toInt() >= 1 &&
                                                    value.toInt() <= 12) {
                                                  final text =
                                                      months[value.toInt()];
                                                  final isHighlighted =
                                                      text == 'FEB';
                                                  return Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 8.h),
                                                    child: Text(
                                                      text,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        color: const Color(
                                                            0xFF9A9FA3),
                                                        fontSize: 12.sp,
                                                        fontFamily: 'DM Sans',
                                                        fontWeight:
                                                            isHighlighted
                                                                ? FontWeight
                                                                    .w700
                                                                : FontWeight
                                                                    .w500,
                                                      ),
                                                    ),
                                                  );
                                                }
                                                return const SizedBox.shrink();
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                        top: 0,
                                        left: 0,
                                        child: Text(
                                          'Sales by Month',
                                          style: TextStyle(
                                            color: const Color(0xFF9A9FA3),
                                            fontSize: 15,
                                            fontFamily: 'DM Sans',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 15.h),
                        //chart 2
                        Padding(
                          padding: EdgeInsets.only(left: 15.w),
                          child: Container(
                            width: 409.w,
                            height: 499.h,
                            decoration: BoxDecoration(
                              color: const Color(0xFFF6F6F6),
                              borderRadius: BorderRadius.circular(10.r),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x26000000),
                                  blurRadius: 4.5.r,
                                  offset: Offset(4.w, 4.h),
                                  spreadRadius: -2.r,
                                ),
                              ],
                            ),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Container(
                                width: 1400.w,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 30.w, vertical: 30.h),
                                child: Stack(
                                  children: [
                                    LineChart(
                                      LineChartData(
                                        minY: 0,
                                        maxY: 30,
                                        gridData: FlGridData(show: false),
                                        borderData: FlBorderData(show: false),
                                        lineBarsData: [
                                          LineChartBarData(
                                            isCurved: false,
                                            color: const Color(0xFF30A34C),
                                            barWidth: 2.w,
                                            spots: [
                                              FlSpot(1, 28),
                                              FlSpot(2, 25),
                                              FlSpot(3, 20),
                                              FlSpot(4, 18),
                                              FlSpot(5, 16),
                                              FlSpot(6, 14),
                                              FlSpot(7, 12),
                                              FlSpot(8, 9),
                                              FlSpot(9, 7),
                                              FlSpot(10, 5),
                                              FlSpot(11, 4),
                                              FlSpot(12, 2),
                                            ],
                                            dotData: FlDotData(
                                              show: true,
                                              getDotPainter:
                                                  (spot, _, __, ___) =>
                                                      FlDotCirclePainter(
                                                radius: 5.r,
                                                strokeWidth: 2.5.r,
                                                color: Colors.white,
                                                strokeColor:
                                                    const Color(0xFF30A34C),
                                              ),
                                            ),
                                            belowBarData: BarAreaData(
                                              show: true,
                                              gradient: LinearGradient(
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                                colors: [
                                                  const Color(0xFF30A34C),
                                                  const Color.fromARGB(
                                                      0, 255, 255, 255),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                        titlesData: FlTitlesData(
                                          topTitles: AxisTitles(
                                            sideTitles:
                                                SideTitles(showTitles: false),
                                          ),
                                          rightTitles: AxisTitles(
                                            sideTitles:
                                                SideTitles(showTitles: false),
                                          ),
                                          leftTitles: AxisTitles(
                                            sideTitles: SideTitles(
                                              showTitles: true,
                                              reservedSize: 50.w,
                                              interval: 3,
                                              getTitlesWidget: (value, _) {
                                                switch (value.toInt()) {
                                                  case 0:
                                                    return Text('0 SAR',
                                                        style: TextStyle(
                                                          color: const Color(
                                                              0xFF9A9FA3),
                                                          fontSize: 10.sp,
                                                          fontFamily: 'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ));
                                                  case 3:
                                                    return Text('3 SAR',
                                                        style: TextStyle(
                                                          color: const Color(
                                                              0xFF9A9FA3),
                                                          fontSize: 10.sp,
                                                          fontFamily: 'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ));
                                                  case 6:
                                                    return Text('6 SAR',
                                                        style: TextStyle(
                                                          color: const Color(
                                                              0xFF9A9FA3),
                                                          fontSize: 10.sp,
                                                          fontFamily: 'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ));
                                                  case 12:
                                                    return Text('12 SAR',
                                                        style: TextStyle(
                                                          color: const Color(
                                                              0xFF9A9FA3),
                                                          fontSize: 10.sp,
                                                          fontFamily: 'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ));
                                                  case 18:
                                                    return Text('18 SAR',
                                                        style: TextStyle(
                                                          color: const Color(
                                                              0xFF9A9FA3),
                                                          fontSize: 10.sp,
                                                          fontFamily: 'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ));
                                                  case 24:
                                                    return Text('24 SAR',
                                                        style: TextStyle(
                                                          color: const Color(
                                                              0xFF9A9FA3),
                                                          fontSize: 10.sp,
                                                          fontFamily: 'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ));

                                                  default:
                                                    return const SizedBox
                                                        .shrink();
                                                }
                                              },
                                            ),
                                          ),
                                          bottomTitles: AxisTitles(
                                            sideTitles: SideTitles(
                                              showTitles: true,
                                              reservedSize: 30.h,
                                              interval: 1,
                                              getTitlesWidget: (value, _) {
                                                const months = [
                                                  '',
                                                  'JAN',
                                                  'FEB',
                                                  'MAR',
                                                  'APR',
                                                  'MAY',
                                                  'JUN',
                                                  'JULY',
                                                  'AUG',
                                                  'SEP',
                                                  'OCT',
                                                  'NOV',
                                                  'DEC'
                                                ];
                                                if (value.toInt() >= 1 &&
                                                    value.toInt() <= 12) {
                                                  final text =
                                                      months[value.toInt()];
                                                  final isHighlighted =
                                                      text == 'FEB';
                                                  return Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 8.h),
                                                    child: Text(
                                                      text,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        color: const Color(
                                                            0xFF9A9FA3),
                                                        fontSize: 12.sp,
                                                        fontFamily: 'DM Sans',
                                                        fontWeight:
                                                            isHighlighted
                                                                ? FontWeight
                                                                    .w700
                                                                : FontWeight
                                                                    .w500,
                                                      ),
                                                    ),
                                                  );
                                                }
                                                return const SizedBox.shrink();
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                        top: 0,
                                        left: 0,
                                        child: Text(
                                          'Sales by Month',
                                          style: TextStyle(
                                            color: const Color(0xFF9A9FA3),
                                            fontSize: 15,
                                            fontFamily: 'DM Sans',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
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
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 15.w),
                          child: Container(
                            width: 409.w,
                            height: 499.h,
                            decoration: BoxDecoration(
                              color: const Color(0xFFF6F6F6),
                              borderRadius: BorderRadius.circular(10.r),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x26000000),
                                  blurRadius: 4.5.r,
                                  offset: Offset(4.w, 4.h),
                                  spreadRadius: -2.r,
                                ),
                              ],
                            ),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Container(
                                width: 1400.w,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 30.w, vertical: 30.h),
                                child: Stack(
                                  children: [
                                    LineChart(
                                      LineChartData(
                                        minY: 0,
                                        maxY: 30,
                                        gridData: FlGridData(show: false),
                                        borderData: FlBorderData(show: false),
                                        lineBarsData: [
                                          LineChartBarData(
                                            isCurved: false,
                                            color: const Color(0xFF1274CB),
                                            barWidth: 2.w,
                                            spots: [
                                              FlSpot(1, 28),
                                              FlSpot(2, 25),
                                              FlSpot(3, 20),
                                              FlSpot(4, 18),
                                              FlSpot(5, 16),
                                              FlSpot(6, 14),
                                              FlSpot(7, 12),
                                              FlSpot(8, 9),
                                              FlSpot(9, 7),
                                              FlSpot(10, 5),
                                              FlSpot(11, 4),
                                              FlSpot(12, 2),
                                            ],
                                            dotData: FlDotData(
                                              show: true,
                                              getDotPainter:
                                                  (spot, _, __, ___) =>
                                                      FlDotCirclePainter(
                                                radius: 5.r,
                                                strokeWidth: 2.5.r,
                                                color: Colors.white,
                                                strokeColor:
                                                    const Color(0xFF1274CB),
                                              ),
                                            ),
                                            belowBarData: BarAreaData(
                                              show: true,
                                              gradient: LinearGradient(
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                                colors: [
                                                  const Color(0xFF1274CB),
                                                  const Color.fromARGB(
                                                      0, 255, 255, 255),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                        titlesData: FlTitlesData(
                                          topTitles: AxisTitles(
                                            sideTitles:
                                                SideTitles(showTitles: false),
                                          ),
                                          rightTitles: AxisTitles(
                                            sideTitles:
                                                SideTitles(showTitles: false),
                                          ),
                                          leftTitles: AxisTitles(
                                            sideTitles: SideTitles(
                                              showTitles: true,
                                              reservedSize: 50.w,
                                              interval: 3,
                                              getTitlesWidget: (value, _) {
                                                switch (value.toInt()) {
                                                  case 0:
                                                    return Text('0 SAR',
                                                        style: TextStyle(
                                                          color: const Color(
                                                              0xFF9A9FA3),
                                                          fontSize: 10.sp,
                                                          fontFamily: 'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ));
                                                  case 3:
                                                    return Text('3 SAR',
                                                        style: TextStyle(
                                                          color: const Color(
                                                              0xFF9A9FA3),
                                                          fontSize: 10.sp,
                                                          fontFamily: 'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ));
                                                  case 6:
                                                    return Text('6 SAR',
                                                        style: TextStyle(
                                                          color: const Color(
                                                              0xFF9A9FA3),
                                                          fontSize: 10.sp,
                                                          fontFamily: 'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ));
                                                  case 12:
                                                    return Text('12 SAR',
                                                        style: TextStyle(
                                                          color: const Color(
                                                              0xFF9A9FA3),
                                                          fontSize: 10.sp,
                                                          fontFamily: 'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ));
                                                  case 18:
                                                    return Text('18 SAR',
                                                        style: TextStyle(
                                                          color: const Color(
                                                              0xFF9A9FA3),
                                                          fontSize: 10.sp,
                                                          fontFamily: 'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ));
                                                  case 24:
                                                    return Text('24 SAR',
                                                        style: TextStyle(
                                                          color: const Color(
                                                              0xFF9A9FA3),
                                                          fontSize: 10.sp,
                                                          fontFamily: 'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ));

                                                  default:
                                                    return const SizedBox
                                                        .shrink();
                                                }
                                              },
                                            ),
                                          ),
                                          bottomTitles: AxisTitles(
                                            sideTitles: SideTitles(
                                              showTitles: true,
                                              reservedSize: 30.h,
                                              interval: 1,
                                              getTitlesWidget: (value, _) {
                                                const months = [
                                                  '',
                                                  'JAN',
                                                  'FEB',
                                                  'MAR',
                                                  'APR',
                                                  'MAY',
                                                  'JUN',
                                                  'JULY',
                                                  'AUG',
                                                  'SEP',
                                                  'OCT',
                                                  'NOV',
                                                  'DEC'
                                                ];
                                                if (value.toInt() >= 1 &&
                                                    value.toInt() <= 12) {
                                                  final text =
                                                      months[value.toInt()];
                                                  final isHighlighted =
                                                      text == 'FEB';
                                                  return Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 8.h),
                                                    child: Text(
                                                      text,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        color: const Color(
                                                            0xFF9A9FA3),
                                                        fontSize: 12.sp,
                                                        fontFamily: 'DM Sans',
                                                        fontWeight:
                                                            isHighlighted
                                                                ? FontWeight
                                                                    .w700
                                                                : FontWeight
                                                                    .w500,
                                                      ),
                                                    ),
                                                  );
                                                }
                                                return const SizedBox.shrink();
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                        top: 0,
                                        left: 0,
                                        child: Text(
                                          'Sales by Month',
                                          style: TextStyle(
                                            color: const Color(0xFF9A9FA3),
                                            fontSize: 15,
                                            fontFamily: 'DM Sans',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 15.h),
                        //chart 2
                        Padding(
                          padding: EdgeInsets.only(left: 15.w),
                          child: Container(
                            width: 409.w,
                            height: 499.h,
                            decoration: BoxDecoration(
                              color: const Color(0xFFF6F6F6),
                              borderRadius: BorderRadius.circular(10.r),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x26000000),
                                  blurRadius: 4.5.r,
                                  offset: Offset(4.w, 4.h),
                                  spreadRadius: -2.r,
                                ),
                              ],
                            ),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Container(
                                width: 1400.w,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 30.w, vertical: 30.h),
                                child: Stack(
                                  children: [
                                    LineChart(
                                      LineChartData(
                                        minY: 0,
                                        maxY: 30,
                                        gridData: FlGridData(show: false),
                                        borderData: FlBorderData(show: false),
                                        lineBarsData: [
                                          LineChartBarData(
                                            isCurved: false,
                                            color: const Color(0xFF30A34C),
                                            barWidth: 2.w,
                                            spots: [
                                              FlSpot(1, 28),
                                              FlSpot(2, 25),
                                              FlSpot(3, 20),
                                              FlSpot(4, 18),
                                              FlSpot(5, 16),
                                              FlSpot(6, 14),
                                              FlSpot(7, 12),
                                              FlSpot(8, 9),
                                              FlSpot(9, 7),
                                              FlSpot(10, 5),
                                              FlSpot(11, 4),
                                              FlSpot(12, 2),
                                            ],
                                            dotData: FlDotData(
                                              show: true,
                                              getDotPainter:
                                                  (spot, _, __, ___) =>
                                                      FlDotCirclePainter(
                                                radius: 5.r,
                                                strokeWidth: 2.5.r,
                                                color: Colors.white,
                                                strokeColor:
                                                    const Color(0xFF30A34C),
                                              ),
                                            ),
                                            belowBarData: BarAreaData(
                                              show: true,
                                              gradient: LinearGradient(
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                                colors: [
                                                  const Color(0xFF30A34C),
                                                  const Color.fromARGB(
                                                      0, 255, 255, 255),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                        titlesData: FlTitlesData(
                                          topTitles: AxisTitles(
                                            sideTitles:
                                                SideTitles(showTitles: false),
                                          ),
                                          rightTitles: AxisTitles(
                                            sideTitles:
                                                SideTitles(showTitles: false),
                                          ),
                                          leftTitles: AxisTitles(
                                            sideTitles: SideTitles(
                                              showTitles: true,
                                              reservedSize: 50.w,
                                              interval: 3,
                                              getTitlesWidget: (value, _) {
                                                switch (value.toInt()) {
                                                  case 0:
                                                    return Text('0 SAR',
                                                        style: TextStyle(
                                                          color: const Color(
                                                              0xFF9A9FA3),
                                                          fontSize: 10.sp,
                                                          fontFamily: 'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ));
                                                  case 3:
                                                    return Text('3 SAR',
                                                        style: TextStyle(
                                                          color: const Color(
                                                              0xFF9A9FA3),
                                                          fontSize: 10.sp,
                                                          fontFamily: 'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ));
                                                  case 6:
                                                    return Text('6 SAR',
                                                        style: TextStyle(
                                                          color: const Color(
                                                              0xFF9A9FA3),
                                                          fontSize: 10.sp,
                                                          fontFamily: 'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ));
                                                  case 12:
                                                    return Text('12 SAR',
                                                        style: TextStyle(
                                                          color: const Color(
                                                              0xFF9A9FA3),
                                                          fontSize: 10.sp,
                                                          fontFamily: 'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ));
                                                  case 18:
                                                    return Text('18 SAR',
                                                        style: TextStyle(
                                                          color: const Color(
                                                              0xFF9A9FA3),
                                                          fontSize: 10.sp,
                                                          fontFamily: 'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ));
                                                  case 24:
                                                    return Text('24 SAR',
                                                        style: TextStyle(
                                                          color: const Color(
                                                              0xFF9A9FA3),
                                                          fontSize: 10.sp,
                                                          fontFamily: 'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ));

                                                  default:
                                                    return const SizedBox
                                                        .shrink();
                                                }
                                              },
                                            ),
                                          ),
                                          bottomTitles: AxisTitles(
                                            sideTitles: SideTitles(
                                              showTitles: true,
                                              reservedSize: 30.h,
                                              interval: 1,
                                              getTitlesWidget: (value, _) {
                                                const months = [
                                                  '',
                                                  'JAN',
                                                  'FEB',
                                                  'MAR',
                                                  'APR',
                                                  'MAY',
                                                  'JUN',
                                                  'JULY',
                                                  'AUG',
                                                  'SEP',
                                                  'OCT',
                                                  'NOV',
                                                  'DEC'
                                                ];
                                                if (value.toInt() >= 1 &&
                                                    value.toInt() <= 12) {
                                                  final text =
                                                      months[value.toInt()];
                                                  final isHighlighted =
                                                      text == 'FEB';
                                                  return Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 8.h),
                                                    child: Text(
                                                      text,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        color: const Color(
                                                            0xFF9A9FA3),
                                                        fontSize: 12.sp,
                                                        fontFamily: 'DM Sans',
                                                        fontWeight:
                                                            isHighlighted
                                                                ? FontWeight
                                                                    .w700
                                                                : FontWeight
                                                                    .w500,
                                                      ),
                                                    ),
                                                  );
                                                }
                                                return const SizedBox.shrink();
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                        top: 0,
                                        left: 0,
                                        child: Text(
                                          'Sales by Month',
                                          style: TextStyle(
                                            color: const Color(0xFF9A9FA3),
                                            fontSize: 15,
                                            fontFamily: 'DM Sans',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
