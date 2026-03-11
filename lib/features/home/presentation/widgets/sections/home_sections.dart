import 'package:flutter/material.dart';

import 'restaurant_section.dart';

class HomeSections extends StatelessWidget {
const HomeSections({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return CustomScrollView(
      keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                slivers: [
              //  SliverToBoxAdapter(
              //     child: SizedBox(height: 20,),
              //  ),
               SliverToBoxAdapter(
                  child: RestaurantSection(),
               )

                ]
    );
  }
}