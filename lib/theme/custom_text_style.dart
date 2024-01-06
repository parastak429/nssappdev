import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.55),
      );
  static get bodyMediumBlack900_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.51),
      );
  static get bodyMediumBlack900_2 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.51),
      );
  static get bodyMediumBlack900_3 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumBlueA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueA700,
      );
  // Display text style
  static get displaySmall36 => theme.textTheme.displaySmall!.copyWith(
        fontSize: 36.fSize,
      );
  // Title text style
  static get titleMediumOnPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleSmallBlueA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueA700,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallOnPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
}

extension on TextStyle {
  TextStyle get dMSans {
    return copyWith(
      fontFamily: 'DM Sans',
    );
  }
}
