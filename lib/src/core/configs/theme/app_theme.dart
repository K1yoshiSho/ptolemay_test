import 'package:flutter/material.dart';
import 'package:ptolemay_test/src/core/configs/styles/colors_extensions.dart';
import 'package:ptolemay_test/src/core/configs/styles/palette.dart';
import 'package:ptolemay_test/src/core/configs/styles/themes.dart';

extension GlobalPaintBounds on BuildContext {
  Rect? get globalPaintBounds {
    final renderObject = findRenderObject();
    final translation = renderObject?.getTransformTo(null).getTranslation();
    if (translation != null && renderObject?.paintBounds != null) {
      final offset = Offset(translation.x, translation.y);
      return renderObject!.paintBounds.shift(offset);
    } else {
      return null;
    }
  }
}

class AppTheme {
  //
  // Light theme
  //

  static final light = LightTheme.copyWith(
    extensions: [
      _lightAppColors,
    ],
  );

  static final _lightAppColors = AppColorsExtension(
    primary: AppPalette.primaryColor,
    onPrimary: LightTheme.colorScheme.onPrimary,
    secondary: LightTheme.colorScheme.secondary,
    onSecondary: LightTheme.colorScheme.onSecondary,
    error: LightTheme.colorScheme.error,
    onError: LightTheme.colorScheme.onError,
    background: LightTheme.colorScheme.background,
    onBackground: LightTheme.colorScheme.onBackground,
    surface: LightTheme.colorScheme.surface,
    onSurface: LightTheme.colorScheme.onSurface,
    standart: Colors.white,
    divider: AppPalette.gray200,
    text: AppPalette.abyssColor,
    primaryIcon: AppPalette.primaryColor,
    selectedTile: AppPalette.accent100,
    grayOpacity: Colors.white,
    grayOpacityText: const Color.fromARGB(255, 83, 83, 83),
    blueOrigin: const Color(0xFF2248CD),
    orange500: const Color(0xFFF97316),
    green500: const Color(0xFF22C55E),
    scaffoldBackground: AppPalette.backgroundColor,
    border: AppPalette.gray300,
    iconButtonFill: AppPalette.gray100,
  );

  //
  // Dark theme
  //

  static final dark = DarkTheme.copyWith(
    extensions: [
      _darkAppColors,
    ],
  );

  static final _darkAppColors = AppColorsExtension(
    primary: AppPalette.primaryColor,
    onPrimary: DarkTheme.colorScheme.onPrimary,
    secondary: AppPalette.secondaryColor,
    onSecondary: DarkTheme.colorScheme.onSecondary,
    error: DarkTheme.colorScheme.error,
    onError: DarkTheme.colorScheme.onError,
    background: DarkTheme.colorScheme.background,
    onBackground: DarkTheme.colorScheme.onBackground,
    surface: DarkTheme.colorScheme.surface,
    onSurface: DarkTheme.colorScheme.onSurface,
    standart: Colors.black,
    divider: AppPalette.gray1000,
    text: Colors.white,
    primaryIcon: AppPalette.primaryColor,
    selectedTile: Colors.white.withOpacity(0.1),
    grayOpacity: Colors.white.withOpacity(0.08),
    grayOpacityText: Colors.white.withOpacity(0.5),
    blueOrigin: const Color.fromARGB(255, 66, 107, 255),
    orange500: const Color(0xFFF97316),
    green500: const Color(0xFF22C55E),
    scaffoldBackground: const Color.fromARGB(255, 52, 52, 52),
    border: AppPalette.gray800,
    iconButtonFill: Colors.white.withOpacity(0.1),
  );
}
