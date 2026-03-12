import 'package:flutter/material.dart';

import 'main_course_section.dart';

class FoodMenuDetailsSections extends StatelessWidget {
const FoodMenuDetailsSections({ super.key });
 final String foodImage;
 final String foodTitle;
  @override
  Widget build(BuildContext context){
    return const CustomScrollView(
      keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                slivers: [
              
               SliverToBoxAdapter(
                  child: MainCourseSection(
                    foodImage :foodImage,
                    foodTitle : foodTitle
                  ),
               ),
              

                ]
    );
  }
}