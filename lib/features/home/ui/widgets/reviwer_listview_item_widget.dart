import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:topview/core/theming/app_images.dart';
import 'package:topview/core/theming/app_spacing.dart';
import 'package:topview/core/theming/app_values.dart'
    show AppPadding, AppRadius, AppWidth;
import 'package:topview/core/theming/colors.dart';
import 'package:topview/core/theming/styles.dart';
import 'package:topview/features/home/data/models/reviwer_model.dart';

class ReviwerListViewItemWidget extends StatelessWidget {
  final ReviwerModel reviwerModel;
  final int index;
  final bool isSelected;
  final VoidCallback onTap;

  const ReviwerListViewItemWidget({
    super.key,
    required this.reviwerModel,
    required this.index,
    required this.isSelected,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(AppPadding.p10),
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected
                ? ColorsManager.selectedTabBarItemColor
                : Colors.transparent,
            width: 2,
          ),
          boxShadow: [
            BoxShadow(
              color: ColorsManager.blackColor.withValues(alpha: 0.3),
              blurRadius: 16,
              offset: Offset(0, 4),
            ),
          ],
          gradient: isSelected
              ? RadialGradient(
                  focalRadius: 0,
                  radius: 0,
                  stops: [0, 1],

                  colors: [
                    ColorsManager.greenColor,
                    ColorsManager.greenColor.withValues(alpha: 0.59),
                  ],
                )
              : RadialGradient(
                  focalRadius: 0,
                  radius: 0,
                  stops: [0, 1],
                  colors: [Colors.white, Colors.white.withValues(alpha: 0.02)],
                ),

          borderRadius: BorderRadius.circular(AppRadius.r12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                AutoSizeText(
                  index.toString(),
                  style: TextStyles.font14Bold.copyWith(
                    color: ColorsManager.whiteColor,
                  ),
                ),
                AppSpace.horizontal(AppWidth.w14),

                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(AppImages.frame),

                    CircleAvatar(
                      radius: 14.r,
                      backgroundImage: AssetImage(reviwerModel.personImage),
                    ),
                  ],
                ),
                AppSpace.horizontal(AppWidth.w12),
                AutoSizeText(
                  reviwerModel.name,
                  style: TextStyles.font14Bold.copyWith(
                    color: ColorsManager.whiteColor,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                AutoSizeText(
                  reviwerModel.reviews.toString(),
                  style: TextStyles.font14Bold.copyWith(
                    color: ColorsManager.whiteColor,
                  ),
                ),
                AppSpace.horizontal(AppWidth.w2),
                AutoSizeText(
                  "Reviews",
                  style: TextStyles.font14Regular.copyWith(
                    color: Color(0xffA4A4A4),
                  ),
                ),
                AppSpace.horizontal(AppWidth.w20),
                Container(
                  decoration: BoxDecoration(
                     color: ColorsManager.blackColor,
                    boxShadow: [
                      BoxShadow(
                        color: ColorsManager.blackColor.withValues(alpha: 0.3),
                        blurRadius: 16,
                        offset: Offset(0, 4),
                      ),
                    ],
                    shape: BoxShape.circle,
                    gradient: RadialGradient(
                      focalRadius: 0,
                      radius: 0,
                      stops: [0, 1],
                      colors: [
                        Colors.white,
                        Colors.white.withValues(alpha: 0.02),
                      ],
                    ),
                  ),
                  child: Icon(Icons.arrow_drop_down, color: ColorsManager.selectedTabBarItemColor),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
