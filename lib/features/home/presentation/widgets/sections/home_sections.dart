import 'package:flutter/material.dart';

import 'atmosphere_section.dart';
import 'restaurant_section.dart';

class HomeSections extends StatelessWidget {
const HomeSections({ super.key });

  @override
  Widget build(BuildContext context){
    return const CustomScrollView(
      keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                slivers: [
              //  SliverToBoxAdapter(
              //     child: SizedBox(height: 20,),
              //  ),
               SliverToBoxAdapter(
                  child: RestaurantSection(),
               ),
               SliverToBoxAdapter(
                  child: AtmosphereSection(),
               )

                ]
    );
  }
}