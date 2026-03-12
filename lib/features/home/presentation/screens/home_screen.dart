import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/services/injection.dart';
import '../../../food_menu/presentation/cubit/food_menu_cubit.dart';
import '../widgets/sections/home_sections.dart';

class HomeScreen extends StatelessWidget {
const HomeScreen({ super.key });

  @override
  Widget build(BuildContext context){
    return  SafeArea(
      child: Scaffold(
          extendBodyBehindAppBar: true,
      
        body: MultiBlocProvider(
          providers : [
            BlocProvider(
                create:
                    (context) =>
                        getIt<FoodMenuCubit>()..getMenu(),
              ),
          ],

          child: const HomeSections()),
      ),
    );
  }
}