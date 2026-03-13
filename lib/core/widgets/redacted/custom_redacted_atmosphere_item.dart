import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:redacted/redacted.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_images.dart';

class CustomRedactedAtmosphereItem extends StatelessWidget {
  const CustomRedactedAtmosphereItem({super.key});
@override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.r),
      child: Image.asset(
        AppImages.imagesAtmosphere1,
        width: 223.w,
        height: 239.h,
        fit: BoxFit.fill,
      ).redacted( // Apply directly to the content
        context: context,
        redact: true,
        configuration: RedactedConfiguration(
          redactedColor: AppColors.dashedBorderColor,
        ),
      ),
    );
  }
}
