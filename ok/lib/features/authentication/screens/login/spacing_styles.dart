import 'package:flutter/material.dart';
import 'package:ok/utils/constants/sizes.dart';


class OkSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: OkSizes.appBarHeight,
    left: OkSizes.defaultSpace,
    bottom: OkSizes.defaultSpace,
    right: OkSizes.defaultSpace,
  );
  static const EdgeInsetsGeometry paddingWithDefaultWidth = EdgeInsets.only(
    left: OkSizes.defaultSpace,
    right: OkSizes.defaultSpace,
  );

  static const EdgeInsetsGeometry paddingOnlyVertical = EdgeInsets.symmetric(
    vertical: OkSizes.defaultSpace,
  );

  static const EdgeInsetsGeometry paddingWithDefaultHeight = EdgeInsets.only(
    top: OkSizes.defaultSpace,
    left: OkSizes.defaultSpace,
    bottom: OkSizes.defaultSpace,
    right: OkSizes.defaultSpace,
  );
}
