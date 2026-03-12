import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:technical_assessment_recast_designs/core/utils/app_strings.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';

class AddToOrderButton extends StatelessWidget {
  const AddToOrderButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 160.w,
      // height: 56.h,
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [Color(0xFFE4B679), Color(0xFFFEE5C4)],
        ),
        borderRadius: BorderRadius.circular(30.r),
        border: Border.all(
          color: Colors.white.withOpacity(0.3),
          width: 1,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10.w),
            child: Text(
              AppStrings.addOrder,
              style: AppTextStyles.satoshiVariableBoldstyle14.copyWith(
                color: AppColors.black,
              ),
            ),
          ),
          SizedBox(width: 8.w),
          Container(
            height: 42,
            width: 42,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.2),
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black.withOpacity(0.1),
                width: 1,
              ),
            ),
            child: const Icon(
              Icons.chevron_right,
              color: Colors.black,
              size: 28,
            ),
          ),
        ],
      ),
    );
  }
}
