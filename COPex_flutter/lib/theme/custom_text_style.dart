import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Body text style
  static get bodyLargeInterGray50003 =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.gray50003,
      );
  static get bodyMediumInterGray50002 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.gray50002,
      );
  static get bodySmallInterGray50 => theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.gray50,
      );
// Title text style
  static get titleLargeInterWhiteA700 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumInterBlack900 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumInterBold =>
      theme.textTheme.titleMedium!.inter.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumInterGray500 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray500,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumInterGray50003 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray50003,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumInterSemiBold =>
      theme.textTheme.titleMedium!.inter.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumMontserratOnError =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: theme.colorScheme.onError,
        fontSize: 16.fSize,
      );
  static get titleMediumRed300 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.red300,
      );
  static get titleMediumRedA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.redA700,
      );
  static get titleSmallInterCyan900 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.cyan900,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w700,
      );
}
