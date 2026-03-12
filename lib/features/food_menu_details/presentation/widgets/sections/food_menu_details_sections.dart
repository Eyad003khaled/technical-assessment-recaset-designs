import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'food_price_section.dart';
import 'main_course_section.dart';
import 'preparation_section.dart';

class FoodMenuDetailsSections extends StatelessWidget {
  const FoodMenuDetailsSections(
      {super.key,
      required this.foodImage,
      required this.foodTitle,
      required this.foodPrice});
  final String foodImage;
  final String foodTitle;
  final double foodPrice;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        slivers: [
          SliverToBoxAdapter(
            child:
                MainCourseSection(foodImage: foodImage, foodTitle: foodTitle),
          ),
          const SliverToBoxAdapter(
            child: PreparationSection(),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FoodPriceSection(foodPrice: foodPrice),
              ],
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 30.h)),
        ]);
  }
}
