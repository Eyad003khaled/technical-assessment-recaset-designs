import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../atmosphere/presentation/cubit/atmosphere_cubit.dart';
import '../../../../food_menu/presentation/cubit/food_menu_cubit.dart';
import '../../../../atmosphere/presentation/widgets/sections/atmosphere_section.dart';
import '../../../../food_menu/presentation/widgets/sections/food_menu_section.dart';
import 'restaurant_section.dart';

class HomeSections extends StatelessWidget {
  const HomeSections({super.key});
  Future<void> _onRefresh(BuildContext context) async {
    context.read<FoodMenuCubit>().getMenu();
    context.read<AtmosphereCubit>().getAtmospheres();

    await Future.delayed(const Duration(seconds: 1)); // simulate delay
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator.adaptive(
      onRefresh: () => _onRefresh(context),
      color: AppColors.defaultColor, // customize if needed
      backgroundColor: AppColors.backgroundColor,
      child: const CustomScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          slivers: [
            //  SliverToBoxAdapter(
            //     child: SizedBox(height: 20,),
            //  ),
            SliverToBoxAdapter(
              child: RestaurantSection(),
            ),
            SliverToBoxAdapter(
              child: AtmosphereSection(),
            ),
            SliverToBoxAdapter(
              child: FoodMenuSection(),
            )
          ]),
    );
  }
}
