import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/utils/app_text_styles.dart';

class FoodMenuListViewItem extends StatelessWidget {
  const FoodMenuListViewItem({
    super.key,
    required this.imagePath,
    required this.price,
    required this.title,
    required this.height,
  });

  final String imagePath;
  final double price;
  final String title;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height.h,
      child: Stack(
        children: [
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(9.r),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(9.r),
                bottomRight: Radius.circular(9.r),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
                  decoration: BoxDecoration(
                    color:
                        Colors.white.withOpacity(0.01), // transparent overlay
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          title,
                          style: AppTextStyles.satoshiVariableMediumstyle14
                              .copyWith(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w100,
                          ),
                          maxLines: 2,
                        ),
                      ),
                      ClipOval(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                          child: Container(
                            padding: EdgeInsets.all(10.w),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color:
                                  Colors.black.withOpacity(0.25), // glass tint
                              border: Border.all(
                                color: Colors.white.withOpacity(0.35),
                                width: 1.w,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  price.toString(),
                                  style: AppTextStyles
                                      .satoshiVariableMediumstyle14
                                      .copyWith(
                                    fontSize: 8.sp,
                                  ),
                                ),
                                Text(
                                  AppStrings.currency,
                                  style: AppTextStyles
                                      .satoshiVariableMediumstyle14
                                      .copyWith(
                                    fontSize: 6.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
