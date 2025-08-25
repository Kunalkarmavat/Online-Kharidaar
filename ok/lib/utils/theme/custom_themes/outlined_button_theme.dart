import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';

/* -- Light & Dark Outlined Button Themes -- */
class OkOutlinedButtonTheme {
  OkOutlinedButtonTheme._(); //To avoid creating instances

  /* -- Light Theme -- */
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: OkColors.secondary,
      side: const BorderSide(color: OkColors.secondary),
      padding: const EdgeInsets.symmetric(vertical: OkSizes.buttonHeight),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular( OkSizes.borderRadiusLg)),
    ),
  );

  /* -- Dark Theme -- */
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: OkColors.white,
      side: const BorderSide(color: OkColors.white),
      padding: const EdgeInsets.symmetric(vertical: OkSizes.buttonHeight),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular( OkSizes.borderRadiusLg)),
    ),
  );
}
