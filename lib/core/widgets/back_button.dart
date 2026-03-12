import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/app_images.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({super.key, this.allowBack});
 final bool? allowBack;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:() => allowBack == true ? Navigator.pop(context) : null,
      child: SizedBox(
        width: 60.w,
        height: 60.h,
        child: ClipOval(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 0.3, sigmaY: 0.3),
            child: Container(
              decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.25), // transparent overlay
                shape: BoxShape.circle,
                border: Border.all(
                  width: 1.w,
                ),
              ),
              child: Center(
                child: SvgPicture.asset(
                  AppImages.iconsBackwardArrow,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
