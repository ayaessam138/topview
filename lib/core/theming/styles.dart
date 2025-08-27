import 'package:flutter/material.dart';
import 'package:topview/core/theming/app_values.dart';

import 'font_weight_helper.dart';

class TextStyles {
  static const String _fontFamily = "Airbnb Cereal App";

  static TextStyle font16Semi = TextStyle(
    fontSize: AppFontSize.f16,
    fontWeight: FontWeightHelper.semiBold,
    fontFamily: _fontFamily,
  );

  static TextStyle font14Regular = TextStyle(
    fontSize: AppFontSize.f14,
    fontWeight: FontWeightHelper.regular,
    fontFamily: _fontFamily,
  );

  static TextStyle font12Medium = TextStyle(
    fontSize: AppFontSize.f12,
    fontWeight: FontWeightHelper.medium,
    fontFamily: _fontFamily,
  );

  static TextStyle font14Bold = TextStyle(
    fontSize: AppFontSize.f14,
    fontWeight: FontWeightHelper.bold,
    fontFamily: _fontFamily,
  );

  static TextStyle font10semi = TextStyle(
    fontSize: AppFontSize.f10,
    fontWeight: FontWeightHelper.semiBold,
    fontFamily: _fontFamily,
  );
}
