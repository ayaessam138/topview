import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:topview/core/theming/app_values.dart';
import 'package:topview/core/theming/colors.dart';
import 'package:topview/core/theming/styles.dart';
import 'package:topview/features/home/data/models/bloger_model.dart';

class BlogerWidget extends StatelessWidget {
  final BlogerModel data;
  final List<Color> gradientColors;
  double? height;

  BlogerWidget({
    super.key,
    required this.data,
    required this.gradientColors,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topCenter,
      children: [
        /// الكرت (الخلفية + النصوص)
        Container(
          height: height,
          padding: EdgeInsets.symmetric(
            horizontal: AppWidth.w6,
            vertical: AppHeight.h20,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(AppRadius.r10),
              topRight: Radius.circular(AppRadius.r10),
            ),
            gradient: LinearGradient(
              stops: [
                0.0, 
                1.0, 
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: gradientColors,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: AppWidth.w130),
                child: AutoSizeText(
                  data.name,
                  maxLines: 1,
                  style: TextStyles.font16Semi.copyWith(
                    color: ColorsManager.whiteColor,
                  ),
                ),
              ),
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: AppWidth.w130),
                child: AutoSizeText(
                  data.count,
                  maxLines: 2,
                  style: TextStyles.font16Semi.copyWith(
                    color: ColorsManager.whiteColor,
                  ),
                ),
              ),
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: AppWidth.w130),
                child: AutoSizeText(
                  data.label,
                  maxLines: 2,
                  style: TextStyles.font10semi.copyWith(
                    color: ColorsManager.whiteColor,
                  ),
                ),
              ),
            ],
          ),
        ),

        /// الصورة فوق الكرت في النص
        Positioned(
          top: -40.h,
          child: Image.asset(data.imagePath, height: AppHeight.h60),
        ),
      ],
    );
  }
}
