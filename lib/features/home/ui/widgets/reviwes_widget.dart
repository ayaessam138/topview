import 'package:flutter/material.dart';
import 'package:topview/core/theming/app_values.dart';
import 'package:topview/core/theming/colors.dart';
import 'package:topview/features/home/ui/widgets/reviwer_listview_widget.dart';

class ReviwesWidget extends StatelessWidget {
  const ReviwesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: AppWidth.w12),
        decoration: BoxDecoration(
          gradient: RadialGradient(
            focalRadius: 0,
            radius: 0,
            stops: [0, 1],
            colors: [Colors.white, Colors.white.withValues(alpha: 0.02)],
          ),
          boxShadow: [
            BoxShadow(
              color: ColorsManager.blackColor.withValues(alpha: 0.3),
              blurRadius: 16,
              offset: Offset(0, -4),
            ),
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(AppRadius.r10),
            topRight: Radius.circular(AppRadius.r10),
          ),
        ),
        child: RivwiersListViewWidget(),
      ),
    );
  }
}
