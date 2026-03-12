import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/utils/app_text_styles.dart';

class PreparationSection extends StatelessWidget {
  const PreparationSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.preparation,
            style: AppTextStyles.satoshiVariableBoldstyle14.copyWith(
                fontSize: 12.sp, color: AppColors.defaultColor.withOpacity(0.7)),
          ),
          SizedBox(
            height: 9.h,
          ),
          Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _buildBadge("20 Minutes"),
          const SizedBox(width: 12), // Space between badges
          _buildBadge("Serving Size: 1"),
        ],
      ),
        ],
      ),
    );
  }
}


Widget _buildBadge(String text) {
    return Container(
      padding:  EdgeInsets.symmetric(horizontal: 20.w, vertical: 13.h),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.3), // Subtle border
        borderRadius: BorderRadius.circular(6.r), // Rounded corners
        border: Border.all(
          color: Colors.white.withOpacity(0.18), // Subtle border
          width: 1,
        ),
      ),
      child: Text(
        text,
        style:  AppTextStyles.satoshiVariableBoldstyle14.copyWith(
          fontSize: 10.sp,
        ),
      ),
    );
  }
