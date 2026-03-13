import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:technical_assessment_recast_designs/core/widgets/back_button.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/utils/app_text_styles.dart';

class MainCourseSection extends StatelessWidget {
  const MainCourseSection(
      {super.key, required this.foodImage, required this.foodTitle});
  final String foodImage;
  final String foodTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Positioned(
              child: SizedBox(
                  width: double.infinity,
                  height: 289.h,
                  child: ShaderMask(
                    blendMode: BlendMode.dstIn, // Key blend mode
                    shaderCallback: (Rect bounds) {
                      return LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black,
                          Colors.black,
                          Colors.black.withOpacity(0),
                        ],
                        stops: [0.0, 0.85, 1.0],
                      ).createShader(bounds);
                    },
                    child: Image.asset(
                      foodImage,
                      fit: BoxFit.cover,
                    ),
                  )),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 32.h),
              child: const BackButtonWidget(
                allowBack: true,
              ),
            ),
          ],
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  AppStrings.mainCourse,
                  style: AppTextStyles.satoshiVariableBoldstyle14.copyWith(
                      fontSize: 12.sp,
                      color: AppColors.defaultColor.withOpacity(0.6)),
                ),
                SizedBox(
                  height: 5.h,
                ),
                ShaderMask(
                  shaderCallback: (bounds) => const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xFFE4B679),
                      Color(0xFFFEE5C4),
                    ],
                  ).createShader(bounds),
                  child: Text(
                    foodTitle,
                    style: AppTextStyles.satoshiVariableBoldstyle14.copyWith(
                      fontSize: 24.sp,
                      color: Colors.white, // required for ShaderMask
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  AppStrings.restaurantDescription,
                  style: AppTextStyles.satoshiVariableMediumstyle14.copyWith(
                      fontSize: 15.sp,
                      color: AppColors.defaultColor.withOpacity(0.7)),
                ),
                Text(
                  AppStrings.restaurantDescription,
                  style: AppTextStyles.satoshiVariableMediumstyle14.copyWith(
                      fontSize: 15.sp,
                      color: AppColors.defaultColor.withOpacity(0.7)),
                ),
              ],
            ))
      ],
    );
  }
}
