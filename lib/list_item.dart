import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dummy_data.dart';

class WeevoShipmentItem extends StatelessWidget {
  final int index;
  final Function onItemPressed;

  WeevoShipmentItem({
    @required this.index,
    @required this.onItemPressed,
  });

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context);
    // final height =
    //     (size.size.height - AppBar().preferredSize.height - size.padding.top);
    // final width = size.size.width - 56;
    // print('width --> $width');
    // print('width --> ${size.padding.left}');
    // print('height --> $height');
    // print('all height --> ${size.size.height}');
    return GestureDetector(
      onTap: onItemPressed,
      child: Card(
        shadowColor: Colors.grey.withOpacity(0.3),
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            10.0,
          ),
        ),
        margin: EdgeInsets.symmetric(
          horizontal: 14.0,
          vertical: 8.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
              ),
              child: Image.asset(
                categoryList[index].catimage,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                right: 14.0,
                left: 14.0,
                bottom: 16.0,
                top: 8.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 80.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            12.0,
                          ),
                          color: const Color(
                            0xFFFF9A00,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            '2 شحنة',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            categoryList[index].titlecat,
                            style: TextStyle(
                                fontSize: 20.sp, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            categoryList[index].subtitle,
                            style: TextStyle(
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'القليوبية - قليوب',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Image.asset(
                        'assets/images/icon_location.png',
                        fit: BoxFit.cover,
                        height: 20.h,
                        width: 20.w,
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Transform.rotate(
                        angle: pi,
                        child: Icon(
                          Icons.arrow_right_alt,
                          size: 24.w,
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        'الجيزة - هرم',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Image.asset(
                        'assets/images/icon_location.png',
                        fit: BoxFit.cover,
                        height: 20.h,
                        width: 20.w,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'جنية',
                              style: TextStyle(
                                fontSize: 16.sp,
                              ),
                            ),
                            SizedBox(
                              width: 2.w,
                            ),
                            Text(
                              '50',
                              style: TextStyle(
                                fontSize: 20.sp,
                              ),
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            Image.asset(
                              'assets/images/ship_icon.png',
                              height: 20.h,
                              width: 24.w,
                              fit: BoxFit.fill,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'جنية',
                              style: TextStyle(
                                fontSize: 16.w,
                              ),
                            ),
                            SizedBox(
                              width: 2.w,
                            ),
                            Text(
                              '300',
                              style: TextStyle(
                                fontSize: 20.sp,
                              ),
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            Image.asset(
                              'assets/images/price_icon.png',
                              height: 20.h,
                              width: 20.w,
                              fit: BoxFit.fill,
                            ),
                          ],
                        ),
                      ),
                    ],
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
