import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/routes/app_router.dart';
import '../core/services/device_type_service.dart';
import '../core/utils/app_colors.dart';

class RecastDesigns extends StatelessWidget {
  const RecastDesigns({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        systemStatusBarContrastEnforced: true,
        statusBarColor: AppColors.white,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
    );
    return ScreenUtilInit(
      designSize: DeviceTypeService.isTablet(context)
          ? DeviceTypeService.isLandscape(context)
              ? const Size(1194, 834)
              : const Size(834, 1194)
          : const Size(414, 896),
      minTextAdapt: true,
      splitScreenMode: true,
      fontSizeResolver: (fontSize, instance) {
        final display = View.of(context).display;
        final screenSize = display.size / display.devicePixelRatio;
        final scaleWidth = screenSize.width /
            (DeviceTypeService.isTablet(context)
                ? (DeviceTypeService.isLandscape(context) ? 973.5 : 680)
                : 414);

        return fontSize * scaleWidth;
      },
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: AppColors.backgroundColor,
            bottomSheetTheme: BottomSheetThemeData(
              backgroundColor: AppColors.white,
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width,
              ),
            ),
          ),
          initialRoute: AppRouter.splashScreen,
          onGenerateRoute: AppRouter.generateRoute,
        );
      },
    );
  }
}
