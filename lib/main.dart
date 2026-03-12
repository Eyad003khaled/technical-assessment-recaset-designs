import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app/recast_designs.dart';
import 'core/services/injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // 🔹 Dependency Injection
  initGetIt();

  // 🔹 Device setup
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

  await ScreenUtil.ensureScreenSize();

  runApp(const RecastDesigns());
}
