import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../../../core/routes/app_router.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/redacted/custom_redacted_food_menu_item.dart';
import '../../cubit/food_menu_cubit.dart';
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
                fontSize: 14.sp,
                color: AppColors.defaultColor.withOpacity(0.81),
              ),
            ),
            SizedBox(height: 12.h),
            BlocBuilder<FoodMenuCubit, FoodMenuState>(
              builder: (context, state) {
                if (state is FoodMenuLoading) {
                  return MasonryGridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemCount: 4,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                    itemBuilder: (context, index) {
                      return const CustomRedactedFoodMenuItem();
                    },
                  );
                }

                if (state is FoodMenuSuccess) {
                  final menuItems = state.menu;

                  return MasonryGridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemCount: menuItems.length,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                    itemBuilder: (context, index) {
                      final item = menuItems[index];
                      final heights = [
                        154.0,
                        187.0,
                        201.0,
                        178.0,
                      ];
                      return GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            AppRouter.foodMenuDetailsScreen,
                            arguments: {
                              'foodImage': item.image,
                              'foodTitle': item.title,
                              'foodPrice': item.price,
                            },
                          );
                        },
                        child: FoodMenuListViewItem(
                          imagePath: item.image,
                          title: item.title,
                          price: item.price,
                          height: heights[index],
                        ),
                      );
                    },
                  );
                }

                return const SizedBox();
              },
            )
          ]),
    );
  }
}
