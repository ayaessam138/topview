import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:topview/core/theming/app_images.dart';
import 'package:topview/core/theming/app_values.dart';
import 'package:topview/core/theming/colors.dart';
import 'package:topview/features/home/ui/widgets/Bloger_widget.dart';
import 'package:topview/features/home/data/models/bloger_model.dart';

class TopBlogersWidget extends StatelessWidget {
  const TopBlogersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppWidth.w30),
      child: Row(
        spacing: AppWidth.w14,
        children: [
          Expanded(
            child: BlogerWidget(
              data: BlogerModel(
                name: "Amr Breijieh",
                count: "125",
                label: "Reviews",
                imagePath: AppImages.person,
              ),
              gradientColors: [
                ColorsManager.yellowColor,
                ColorsManager.yellowColor.withValues(alpha: 0.09),
              ],
            ),
          ),
          Expanded(
            child: BlogerWidget(
              height: 140.h,
              data: BlogerModel(
                name: "Amr Breijieh",
                count: "125",
                label: "Reviews",
                imagePath: AppImages.person,
              ),
              gradientColors: [
                ColorsManager.greenColor,
                ColorsManager.greenColor.withValues(alpha: 0.09),
              ],
            ),
          ),
          Expanded(
            child: BlogerWidget(
              data: BlogerModel(
                name: "Amr Breijieh",
                count: "125",
                label: "Reviews",
                imagePath: AppImages.person,
              ),
              gradientColors: [
                 ColorsManager.redColor,
                ColorsManager.redColor.withValues(alpha: 0.09),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
