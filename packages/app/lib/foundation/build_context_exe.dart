import 'dart:ui';

import 'package:flutter/material.dart';

extension BuildContextExt on BuildContext {
  Size get screenSize => MediaQuery.sizeOf(this);

  // スライド比は 16:9 で固定
  Size get slideSize => Size(screenSize.width, screenSize.width * 9 / 16);

  double get devicePixelRatio => MediaQuery.devicePixelRatioOf(this);

  TextScaler get textScaler => MediaQuery.textScalerOf(this);

  EdgeInsets get padding => MediaQuery.paddingOf(this);

  EdgeInsets get viewInsets => MediaQuery.viewInsetsOf(this);

  FocusScopeNode get focusScope => FocusScope.of(this);

  FlutterView get view => View.of(this);

  ColorScheme get color => ColorScheme.fromSeed(
        seedColor: Colors.green,
        brightness: Theme.of(this).brightness,
      );

  TextTheme get text => Theme.of(this).textTheme;
}

extension TextStyleExt on TextStyle {
  TextStyle get thin => copyWith(fontWeight: FontWeight.w100);

  TextStyle get extraLight => copyWith(fontWeight: FontWeight.w200);

  TextStyle get light => copyWith(fontWeight: FontWeight.w300);

  TextStyle get regular => copyWith(fontWeight: FontWeight.w400);

  TextStyle get medium => copyWith(fontWeight: FontWeight.w500);

  TextStyle get semiBold => copyWith(fontWeight: FontWeight.w600);

  TextStyle get bold => copyWith(fontWeight: FontWeight.w700);

  TextStyle get extraBold => copyWith(fontWeight: FontWeight.w800);

  TextStyle get black => copyWith(fontWeight: FontWeight.w900);

  TextStyle get lightPrimary => copyWith(
        color: ColorScheme.fromSeed(
          seedColor: Colors.green,
        ).primary,
      );

  TextStyle get lightOnPrimary => copyWith(
        color: ColorScheme.fromSeed(seedColor: Colors.green).onPrimary,
      );

  TextStyle get lightPrimaryContainer => copyWith(
        color: ColorScheme.fromSeed(seedColor: Colors.green).primaryContainer,
      );

  TextStyle get lightOnPrimaryContainer => copyWith(
        color: ColorScheme.fromSeed(
          seedColor: Colors.green,
        ).onPrimaryContainer,
      );

  TextStyle get lightSecondary => copyWith(
        color: ColorScheme.fromSeed(
          seedColor: Colors.green,
        ).secondary,
      );

  TextStyle get lightOnSecondary => copyWith(
        color: ColorScheme.fromSeed(seedColor: Colors.green).onSecondary,
      );

  TextStyle get lightSecondaryContainer => copyWith(
        color: ColorScheme.fromSeed(seedColor: Colors.green).secondaryContainer,
      );

  TextStyle get lightOnSecondaryContainer => copyWith(
        color: ColorScheme.fromSeed(
          seedColor: Colors.green,
        ).onSecondaryContainer,
      );

  TextStyle get lightTertiary => copyWith(
        color: ColorScheme.fromSeed(
          seedColor: Colors.green,
        ).tertiary,
      );

  TextStyle get lightOnTertiary => copyWith(
        color: ColorScheme.fromSeed(seedColor: Colors.green).onTertiary,
      );

  TextStyle get lightTertiaryContainer => copyWith(
        color: ColorScheme.fromSeed(seedColor: Colors.green).tertiaryContainer,
      );

  TextStyle get lightOnTertiaryContainer => copyWith(
        color: ColorScheme.fromSeed(
          seedColor: Colors.green,
        ).onTertiaryContainer,
      );

  TextStyle get lightError => copyWith(
        color: ColorScheme.fromSeed(
          seedColor: Colors.green,
        ).error,
      );

  TextStyle get lightOnError => copyWith(
        color: ColorScheme.fromSeed(seedColor: Colors.green).onError,
      );

  TextStyle get lightErrorContainer => copyWith(
        color: ColorScheme.fromSeed(seedColor: Colors.green).errorContainer,
      );

  TextStyle get lightOnErrorContainer => copyWith(
        color: ColorScheme.fromSeed(
          seedColor: Colors.green,
        ).onErrorContainer,
      );

  TextStyle get lightOutline => copyWith(
        color: ColorScheme.fromSeed(
          seedColor: Colors.green,
        ).outline,
      );

  TextStyle get lightOutlineVariant => copyWith(
        color: ColorScheme.fromSeed(seedColor: Colors.green).outlineVariant,
      );

  TextStyle get lightBackgroundContainer => copyWith(
        color: ColorScheme.fromSeed(seedColor: Colors.green).background,
      );

  TextStyle get lightOnBackground => copyWith(
        color: ColorScheme.fromSeed(
          seedColor: Colors.green,
        ).onBackground,
      );

  TextStyle get lightSurface => copyWith(
        color: ColorScheme.fromSeed(
          seedColor: Colors.green,
        ).surface,
      );

  TextStyle get lightOnSurface => copyWith(
        color: ColorScheme.fromSeed(seedColor: Colors.green).onSurface,
      );

  TextStyle get lightSurfaceVariant => copyWith(
        color: ColorScheme.fromSeed(seedColor: Colors.green).surfaceVariant,
      );

  TextStyle get lightOnSurfaceVariant => copyWith(
        color: ColorScheme.fromSeed(
          seedColor: Colors.green,
        ).onSurfaceVariant,
      );

  TextStyle get lightInverseSurface => copyWith(
        color: ColorScheme.fromSeed(
          seedColor: Colors.green,
        ).inverseSurface,
      );

  TextStyle get lightOnInverseSurface => copyWith(
        color: ColorScheme.fromSeed(seedColor: Colors.green).onInverseSurface,
      );

  TextStyle get lightInversePrimary => copyWith(
        color: ColorScheme.fromSeed(seedColor: Colors.green).inversePrimary,
      );

  TextStyle get lightShadow => copyWith(
        color: ColorScheme.fromSeed(
          seedColor: Colors.green,
        ).shadow,
      );

  TextStyle get lightScrim => copyWith(
        color: ColorScheme.fromSeed(
          seedColor: Colors.green,
        ).scrim,
      );

  TextStyle get lightSurfaceTint => copyWith(
        color: ColorScheme.fromSeed(
          seedColor: Colors.green,
        ).surfaceTint,
      );
}
