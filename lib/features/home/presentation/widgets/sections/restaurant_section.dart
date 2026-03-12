import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:technical_assessment_recast_designs/core/utils/app_images.dart';
import 'package:technical_assessment_recast_designs/core/widgets/back_button.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/utils/app_text_styles.dart';

class RestaurantSection extends StatelessWidget {
  const RestaurantSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(children: [
          Image.asset(AppImages.imagesRestaurant),
          Row(
            children: [
              SizedBox(
                width: 13.w,
              ),
              const BackButtonWidget(),
              const Spacer(),
              Image.asset(AppImages.imagesProfilePicture),
              SizedBox(
                width: 21.w,
              )
            ],
          )
        ]),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  AppStrings.restaurantName,
                  style: AppTextStyles.satoshiVariableBoldstyle14.copyWith(
                      fontSize: 14.sp,
                      color: AppColors.defaultColor.withOpacity(0.8)),
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
                    AppStrings.restaurantTitle,
                    style: AppTextStyles.satoshiVariableBoldstyle14.copyWith(
                      fontSize: 28.sp,
                      color: Colors.white, // required for ShaderMask
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  AppStrings.restaurantDescription,
                  style: AppTextStyles.satoshiVariableBoldstyle14.copyWith(
                      fontSize: 14.sp,
                      color: AppColors.defaultColor.withOpacity(0.7)),
                ),
                Text(
                  AppStrings.restaurantDescription,
                  style: AppTextStyles.satoshiVariableBoldstyle14.copyWith(
                      fontSize: 14.sp,
                      color: AppColors.defaultColor.withOpacity(0.7)),
                ),
              ],
            ))
      ],
    );
  }
}
