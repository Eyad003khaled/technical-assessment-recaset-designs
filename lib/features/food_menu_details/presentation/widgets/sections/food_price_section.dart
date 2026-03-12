import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:technical_assessment_recast_designs/core/utils/app_colors.dart';
import 'package:technical_assessment_recast_designs/core/utils/app_text_styles.dart';

import '../../../../../core/utils/app_strings.dart';
import '../add_order_button.dart';

class FoodPriceSection extends StatelessWidget {
  const FoodPriceSection({super.key, required this.foodPrice});
  final double foodPrice;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 19.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                        "${foodPrice.toStringAsFixed(2)} ${AppStrings.currency}",
                        style:
                            AppTextStyles.satoshiVariableBoldstyle14.copyWith(
                          fontSize: 15.sp,
                        ),
                      )),
                  SizedBox(height: 9.h),
                  Text(
                    AppStrings.taxService,
                    style: AppTextStyles.satoshiVariableBoldstyle14
                        .copyWith(fontSize: 10.sp, color: AppColors.taxColor),
                  ),
                ],
              ),
              const Spacer(),
              const AddToOrderButton(),
            ],
          ),
        ),
        SizedBox(height: 30.h)
      ],
    );
  }
}
