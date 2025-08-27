import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:topview/core/theming/app_images.dart';
import 'package:topview/core/theming/app_spacing.dart';
import 'package:topview/core/theming/app_values.dart';
import 'package:topview/core/theming/colors.dart';
import 'package:topview/core/theming/styles.dart';

class CustomBottomNavBar extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    final items = [
      {'icon': AppImages.home, 'label': 'Home'},
      {'icon': AppImages.discover, 'label': 'Discover'},
      {'icon': AppImages.rewards, 'label': 'Rewards'},
      {'icon': AppImages.notifcations, 'label': 'Notifications'},
      {'icon': AppImages.settings, 'label': 'Settings'},
    ];

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppWidth.w6,
        vertical: AppHeight.h24,
      ),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0xff002C14),
              blurRadius: 10,
              offset: Offset(0, 3),
            ),
          ],
          // gradient: RadialGradient(
          //   colors: [ColorsManager.white, ColorsManager.white.withValues(alpha: 0.2)],
          // ),
          color: ColorsManager.navbarColor,
          borderRadius: BorderRadius.circular(145.r),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: AppWidth.w12,
          vertical: AppHeight.h6,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(items.length, (index) {
            final isSelected = widget.currentIndex == index;

            return Expanded(
              child: GestureDetector(
                onTap: () => widget.onTap(index),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  padding: EdgeInsets.symmetric(
                    vertical: AppHeight.h6,
                    horizontal: AppWidth.w6,
                  ),
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      focalRadius: 0,
                      radius: 0,
                      colors: [
                        ColorsManager.greenColor,
                        ColorsManager.greenColor.withValues(alpha: 0.59),
                      ],
                    ),
                    color: isSelected ? null : Colors.transparent,
                    borderRadius: BorderRadius.circular(145.r),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(
                        items[index]['icon']!,
                        height: AppHeight.h22,
                        colorFilter: ColorFilter.mode(
                          isSelected
                              ? ColorsManager.whiteColor
                              : ColorsManager.navItemColor.withValues(
                                  alpha: 0.8,
                                ),
                          BlendMode.srcIn,
                        ),
                      ),
                      AppSpace.vertical(AppHeight.h3),
                      AutoSizeText(
                        maxLines: 1,
                        items[index]['label']!,
                        style: TextStyles.font12Medium.copyWith(
                          color: isSelected
                              ? ColorsManager.whiteColor
                              : ColorsManager.navItemColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
