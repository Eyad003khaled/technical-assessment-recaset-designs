import 'package:flutter/material.dart';

import '../widgets/sections/food_menu_details_sections.dart';


class FoodMenuDetailsScreen extends StatelessWidget {
const FoodMenuDetailsScreen({ super.key, required this.foodImage, required this.foodTitle, required this.foodPrice});
 final String foodImage;
 final String foodTitle;
 final double foodPrice;
  @override
  Widget build(BuildContext context){
    return  SafeArea(
      child: Scaffold(
          extendBodyBehindAppBar: true,
      
        body: FoodMenuDetailsSections(
          foodImage : foodImage,
          foodTitle : foodTitle,
          foodPrice : foodPrice
        ),
      ),
    );
  }
}