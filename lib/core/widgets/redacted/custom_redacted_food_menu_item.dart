import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:redacted/redacted.dart';

import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_images.dart';

class CustomRedactedFoodMenuItem extends StatelessWidget {
  const CustomRedactedFoodMenuItem({super.key, this.isRedacted = true});

  final bool isRedacted;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      child: Stack(
        children: [
          // 1. The Background Image
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(9.r),
              child: Image.asset(
                AppImages.imagesSushi,
                fit: BoxFit.cover,
              ).redacted(
                context: context,
                redact: isRedacted,
                configuration: RedactedConfiguration(
                  redactedColor: AppColors.dashedBorderColor,
                ),
              ),
            ),
          ),

          // 2. The Bottom Info Bar
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
                    color: Colors.white.withOpacity(0.01),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Title Text Redacted
                      Expanded(
                        child: Text(
                          "title title title title",
                          style: AppTextStyles.satoshiVariableMediumstyle14
                              .copyWith(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w100,
                          ),
                          maxLines: 2,
                        ).redacted(
                          context: context,
                          redact: isRedacted,
                          configuration: RedactedConfiguration(
                            redactedColor: AppColors.dashedBorderColor,
                          ),
                        ),
                      ),

                      SizedBox(width: 8.w),

                      // Price Circle Redacted
                      ClipOval(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                          child: Container(
                            padding: EdgeInsets.all(10.w),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black.withOpacity(0.25),
                              border: Border.all(
                                color: Colors.white.withOpacity(0.35),
                                width: 1.w,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "price",
                                  style: AppTextStyles
                                      .satoshiVariableMediumstyle14
                                      .copyWith(fontSize: 8.sp),
                                ),
                                Text(
                                  AppStrings.currency,
                                  style: AppTextStyles
                                      .satoshiVariableMediumstyle14
                                      .copyWith(fontSize: 6.sp),
                                ),
                              ],
                            ).redacted(
                              context: context,
                              redact: isRedacted,
                              configuration: RedactedConfiguration(
                                redactedColor: AppColors.dashedBorderColor,
                              ),
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
