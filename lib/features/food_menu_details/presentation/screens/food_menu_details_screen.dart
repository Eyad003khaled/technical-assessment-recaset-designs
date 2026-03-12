import 'package:flutter/material.dart';

import '../widgets/sections/food_menu_details_sections.dart';


class FoodMenuDetailsScreen extends StatelessWidget {
const FoodMenuDetailsScreen({ super.key });
 final String foodImage;
 final String foodTitle;
  @override
  Widget build(BuildContext context){
    return const SafeArea(
      child: Scaffold(
          extendBodyBehindAppBar: true,
      
        body: FoodMenuDetailsSections(),
      ),
    );
  }
}