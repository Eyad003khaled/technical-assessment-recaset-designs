import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AtmosphereListViewItem extends StatelessWidget {
  const AtmosphereListViewItem({
    super.key,
    required this.imagePath,
  });

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.r),
      child: Image.asset(
        imagePath,
        width: 223.w,
        height: 239.h,
        fit: BoxFit.fill,
      ),
    );
  }
}
