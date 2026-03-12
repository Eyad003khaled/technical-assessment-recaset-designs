import 'package:flutter/material.dart';

import '../widgets/sections/home_sections.dart';

class HomeScreen extends StatelessWidget {
const HomeScreen({ super.key });

  @override
  Widget build(BuildContext context){
    return const SafeArea(
      child: Scaffold(
          extendBodyBehindAppBar: true,
      
        body: HomeSections(),
      ),
    );
  }
}