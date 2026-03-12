import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../data/food_menu_data.dart';
import '../items/food_menu_list_view_item.dart';

class FoodMenuSection extends StatelessWidget {
  const FoodMenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 16.h),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.foodMenu,
              style: AppTextStyles.satoshiVariableBoldstyle14.copyWith(
                fontSize: 11.sp,
                color: AppColors.defaultColor.withOpacity(0.81),
              ),
            ),
            SizedBox(height: 12.h),
            MasonryGridView.builder(
  shrinkWrap: true,
  physics: const NeverScrollableScrollPhysics(),
  gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
  ),
  mainAxisSpacing: 12,
  crossAxisSpacing: 12,
  itemCount: menuItems.length,
  itemBuilder: (context, index) {
    final item = menuItems[index];

    // final heights = [
    //   94.0,
    //   127.0,
    //   141.0,
    //   118.0,
    // ];
    final heights = [
      154.0,
      187.0,
      201.0,
      178.0,
    ];

    return FoodMenuListViewItem(
      imagePath: item.image,
      title: item.title,
      price: item.price,
      height: heights[index],
    );
  },
)
          ]),
    );
  }
}
