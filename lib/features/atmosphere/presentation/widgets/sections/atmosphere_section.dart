import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/redacted/custom_redacted_atmosphere_item.dart';
import '../../cubit/atmosphere_cubit.dart';
import '../items/atmosphere_list_view_item.dart';

class AtmosphereSection extends StatelessWidget {
  const AtmosphereSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.atmoshpere,
            style: AppTextStyles.satoshiVariableBoldstyle14.copyWith(
              fontSize: 14.sp,
              color: AppColors.defaultColor.withOpacity(0.81),
            ),
          ),
          SizedBox(height: 12.h),
          BlocBuilder<AtmosphereCubit, AtmosphereState>(
            builder: (context, state) {
              if (state is AtmosphereLoading) {
                return SizedBox(
                  height: 239.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(right: 9.w),
                        child: const CustomRedactedAtmosphereItem(),
                      );
                    },
                  ),
                );
              }

              if (state is AtmosphereSuccess) {
                final atmospheres = state.atmospheres;

                return SizedBox(
                  height: 239.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: atmospheres.length,
                    itemBuilder: (context, index) {
                      final atmosphere = atmospheres[index];

                      return Padding(
                        padding: EdgeInsets.only(right: 9.w),
                        child: AtmosphereListViewItem(
                          imagePath: atmosphere.image,
                        ),
                      );
                    },
                  ),
                );
              }

              return const SizedBox();
            },
          )
        ],
      ),
    );
  }
}
