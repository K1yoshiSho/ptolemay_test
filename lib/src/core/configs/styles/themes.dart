// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:ptolemay_test/src/core/configs/styles/colors_extensions.dart';
import 'package:ptolemay_test/src/core/configs/styles/palette.dart';

extension AppThemeExtension on BuildContext {
  /// [theme] - This function returns the ThemeData object for the current context
  ThemeData get theme => Theme.of(this);
}

extension AppMediaQueryExtension on BuildContext {
  /// [mediaQuery] - This function returns the MediaQueryData object for the current context
  MediaQueryData get mediaQuery => MediaQuery.of(this);
}

/// `AppTheme` - This class contains app themes: light and dark.
/// `LightTheme` - This is light theme of the application.
final ThemeData LightTheme = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: Colors.white,
  brightness: Brightness.light,
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: AppPalette.primaryColor.toMaterialColor(),
    accentColor: AppPalette.primaryColor,
  ),
  splashColor: AppPalette.splashColor,
  dividerColor: AppPalette.gray200,
  dividerTheme: const DividerThemeData(
    color: AppPalette.gray100,
    thickness: 1,
    space: 0,
  ),
  splashFactory: InkRipple.splashFactory,
  highlightColor: AppPalette.splashColor,
  primaryColor: AppPalette.primaryColor,
  unselectedWidgetColor: AppPalette.gray300,
  primaryColorLight: AppPalette.gray200,
  iconButtonTheme: IconButtonThemeData(
    style: ButtonStyle(
      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.all(0.0)),
      backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
      splashFactory: InkRipple.splashFactory,
      overlayColor: MaterialStateProperty.all<Color>(AppPalette.splashColor),
      shadowColor: MaterialStateProperty.all<Color>(Colors.transparent),
    ),
  ),
  listTileTheme: ListTileThemeData(
    selectedColor: Colors.white,
    selectedTileColor: AppPalette.accent100,
    horizontalTitleGap: 5,
    tileColor: Colors.transparent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  ),
  bottomSheetTheme: const BottomSheetThemeData(
    backgroundColor: AppPalette.gray100,
    showDragHandle: false,
    modalBackgroundColor: Colors.white,
    modalElevation: 0,
    elevation: 0,
  ),
  dialogTheme: DialogTheme(
    backgroundColor: Colors.white,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
  ),
  iconTheme: const IconThemeData(color: AppPalette.abyssColor, size: 20),
  textTheme: const TextTheme(
    labelLarge: TextStyle(
      fontFamily: "Gilroy",
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: Color.fromARGB(255, 120, 128, 134),
    ),
    labelMedium: TextStyle(
      fontFamily: "Gilroy",
      fontWeight: FontWeight.w400,
      fontSize: 12,
      color: Color.fromARGB(255, 120, 128, 134),
    ),
    labelSmall: TextStyle(
      fontFamily: "Gilroy",
      fontWeight: FontWeight.w400,
      fontSize: 10,
      color: Color.fromARGB(255, 120, 128, 134),
    ),
    titleLarge: TextStyle(
      fontFamily: "Gilroy",
      fontWeight: FontWeight.w700,
      fontSize: 22,
      color: AppPalette.abyssColor,
    ),
    titleMedium: TextStyle(
      fontFamily: "Gilroy",
      fontWeight: FontWeight.w600,
      fontSize: 20,
      color: AppPalette.abyssColor,
    ),
    titleSmall: TextStyle(
      fontFamily: "Gilroy",
      fontWeight: FontWeight.w600,
      fontSize: 18,
      color: AppPalette.abyssColor,
    ),
    bodyMedium: TextStyle(
      fontFamily: "Gilroy",
      fontWeight: FontWeight.w500,
      fontSize: 14,
      color: AppPalette.abyssColor,
    ),
    bodyLarge: TextStyle(
      fontFamily: "Gilroy",
      fontWeight: FontWeight.w600,
      fontSize: 16,
      color: AppPalette.abyssColor,
    ),
    bodySmall: TextStyle(
      fontFamily: "Gilroy",
      fontWeight: FontWeight.w400,
      fontSize: 12,
      color: AppPalette.abyssColor,
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    contentPadding: const EdgeInsets.symmetric(
      horizontal: 15,
      vertical: 20,
    ),
    filled: true,
    fillColor: Colors.white,
    focusColor: Colors.white,
    hoverColor: Colors.white,
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: AppPalette.gray200,
        width: 1.5,
      ),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: AppPalette.gray300,
        width: 1.5,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: AppPalette.primaryColor,
        width: 1.5,
      ),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: AppPalette.gray200,
        width: 1.5,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: AppPalette.danger,
        width: 1.5,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: AppPalette.danger,
        width: 1.5,
      ),
    ),
    labelStyle: const TextStyle(
      fontFamily: "Gilroy",
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: AppPalette.abyssColor,
    ),
    hintStyle: const TextStyle(
      fontFamily: "Gilroy",
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: AppPalette.grayText,
    ),
  ),
  buttonTheme: const ButtonThemeData(
    splashColor: AppPalette.splashColor,
    highlightColor: AppPalette.splashColor,
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
      splashFactory: InkRipple.splashFactory,
      overlayColor: MaterialStateProperty.all<Color>(AppPalette.highlightColor),
      foregroundColor: MaterialStateProperty.all<Color>(AppPalette.primaryColor),
      shadowColor: MaterialStateProperty.all<Color>(Colors.transparent),
    ),
  ),
  actionIconTheme: ActionIconThemeData(
    closeButtonIconBuilder: (context) => const Icon(Icons.close, color: AppPalette.abyssColor),
  ),
  datePickerTheme: DatePickerThemeData(
    backgroundColor: AppPalette.accent100,
    elevation: 0,
    rangePickerElevation: 0,
    shadowColor: AppPalette.splashColor,
    rangePickerShadowColor: AppPalette.splashColor,
    surfaceTintColor: AppPalette.splashColor,
    rangePickerSurfaceTintColor: AppPalette.splashColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    headerBackgroundColor: AppPalette.primaryColor,
    rangePickerHeaderHeadlineStyle: const TextStyle(
      fontFamily: "Gilroy",
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    headerForegroundColor: Colors.white,
    rangePickerHeaderForegroundColor: AppPalette.abyssColor,
    rangeSelectionBackgroundColor: AppPalette.accent200,
    rangePickerHeaderBackgroundColor: AppPalette.primaryColor,
    rangePickerBackgroundColor: AppPalette.accent100,
    rangeSelectionOverlayColor: MaterialStateProperty.all(AppPalette.splashColor),
    rangePickerHeaderHelpStyle: const TextStyle(
      fontFamily: "Gilroy",
      fontSize: 17,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    headerHeadlineStyle: const TextStyle(
      fontFamily: "Gilroy",
      fontSize: 28,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    headerHelpStyle: const TextStyle(
      fontFamily: "Gilroy",
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    weekdayStyle: const TextStyle(
      fontFamily: "Gilroy",
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AppPalette.abyssColor,
    ),
    yearStyle: const TextStyle(
      fontFamily: "Gilroy",
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppPalette.primaryColor,
    ),
    dayStyle: const TextStyle(
      fontFamily: "Gilroy",
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppPalette.primaryColor,
    ),
    dayOverlayColor: MaterialStateProperty.all(AppPalette.splashColor),
    yearOverlayColor: MaterialStateProperty.all(AppPalette.splashColor),
  ),
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: AppPalette.primaryColor,
    selectionColor: AppPalette.primaryColor.withOpacity(0.40),
    selectionHandleColor: AppPalette.primaryColor,
  ),
  progressIndicatorTheme: const ProgressIndicatorThemeData(
    circularTrackColor: Colors.transparent,
    color: AppPalette.primaryColor,
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: AppPalette.primaryColor,
  ),
  appBarTheme: const AppBarTheme(
    color: Colors.white,
    elevation: 0,
    centerTitle: true,
    scrolledUnderElevation: 0,
    titleTextStyle: TextStyle(
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w500,
      fontSize: 16,
      color: AppPalette.abyssColor,
    ),
    iconTheme: IconThemeData(color: AppPalette.abyssColor, size: 20),
  ),
  tabBarTheme: const TabBarTheme(
    indicatorSize: TabBarIndicatorSize.tab,
    dividerColor: Colors.transparent,
  ),
  switchTheme: SwitchThemeData(
    overlayColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return AppPalette.primaryColor;
      }
      return AppPalette.gray300;
    }),
    thumbColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return AppPalette.primaryColor;
      }
      return AppPalette.gray300;
    }),
    trackColor: MaterialStateProperty.all(const Color(0xFFE0E2D8)),
  ).copyWith(
    thumbColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return AppPalette.gray300;
      }
      if (states.contains(MaterialState.selected)) {
        return AppPalette.primaryColor;
      }
      return AppPalette.gray300;
    }),
    trackColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return AppPalette.gray300;
      }
      if (states.contains(MaterialState.selected)) {
        return AppPalette.primaryColor;
      }
      return AppPalette.gray300;
    }),
  ),
  radioTheme: RadioThemeData(
    fillColor: MaterialStateProperty.all(AppPalette.primaryColor),
  ).copyWith(
    fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return AppPalette.gray300;
      }
      if (states.contains(MaterialState.selected)) {
        return AppPalette.primaryColor;
      }
      return AppPalette.gray300;
    }),
  ),
  checkboxTheme: CheckboxThemeData(
    fillColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return AppPalette.primaryColor;
      }
      return Colors.transparent;
    }),
    overlayColor: MaterialStateProperty.all(AppPalette.splashColor),
    side: const BorderSide(
      color: AppPalette.gray300,
      width: 1.5,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5),
    ),
    checkColor: MaterialStateProperty.all(Colors.white),
  ),
);

/// `DarkTheme` - This is dark theme of the application.
final ThemeData DarkTheme = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: const Color(0xff282c34),
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: const Color(0xFF252525).toMaterialColor(),
    accentColor: const Color(0xFF252525),
  ),
  brightness: Brightness.light,
  splashColor: AppPalette.splashColor,
  dividerColor: AppPalette.gray1000,
  dividerTheme: const DividerThemeData(
    color: AppPalette.gray1000,
    thickness: 1,
    space: 0,
  ),
  splashFactory: InkRipple.splashFactory,
  highlightColor: AppPalette.highlightColor,
  primaryColor: AppPalette.primaryColor,
  unselectedWidgetColor: AppPalette.gray300,
  primaryColorLight: AppPalette.gray200,
  iconButtonTheme: IconButtonThemeData(
    style: ButtonStyle(
      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.all(0.0)),
      backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
      splashFactory: InkRipple.splashFactory,
      overlayColor: MaterialStateProperty.all<Color>(AppPalette.splashColor),
      shadowColor: MaterialStateProperty.all<Color>(Colors.transparent),
    ),
  ),
  listTileTheme: ListTileThemeData(
    selectedColor: Colors.white,
    selectedTileColor: AppPalette.accent100,
    horizontalTitleGap: 5,
    tileColor: Colors.transparent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  ),
  bottomSheetTheme: const BottomSheetThemeData(
    backgroundColor: AppPalette.gray100,
    showDragHandle: false,
    modalBackgroundColor: Colors.white,
    modalElevation: 0,
    elevation: 0,
  ),
  dialogTheme: DialogTheme(
    backgroundColor: Colors.white,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
  ),
  iconTheme: const IconThemeData(color: Colors.white, size: 20),
  textTheme: const TextTheme(
    labelLarge: TextStyle(
      fontFamily: "Gilroy",
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: Color.fromARGB(255, 120, 128, 134),
    ),
    labelMedium: TextStyle(
      fontFamily: "Gilroy",
      fontWeight: FontWeight.w400,
      fontSize: 12,
      color: Color.fromARGB(255, 120, 128, 134),
    ),
    labelSmall: TextStyle(
      fontFamily: "Gilroy",
      fontWeight: FontWeight.w400,
      fontSize: 10,
      color: Color.fromARGB(255, 120, 128, 134),
    ),
    titleLarge: TextStyle(
      fontFamily: "Gilroy",
      fontWeight: FontWeight.w700,
      fontSize: 22,
      color: Colors.white,
    ),
    titleMedium: TextStyle(
      fontFamily: "Gilroy",
      fontWeight: FontWeight.w600,
      fontSize: 20,
      color: Colors.white,
    ),
    titleSmall: TextStyle(
      fontFamily: "Gilroy",
      fontWeight: FontWeight.w600,
      fontSize: 18,
      color: Colors.white,
    ),
    bodyMedium: TextStyle(
      fontFamily: "Gilroy",
      fontWeight: FontWeight.w500,
      fontSize: 14,
      color: Colors.white,
    ),
    bodyLarge: TextStyle(
      fontFamily: "Gilroy",
      fontWeight: FontWeight.w600,
      fontSize: 16,
      color: Colors.white,
    ),
    bodySmall: TextStyle(
      fontFamily: "Gilroy",
      fontWeight: FontWeight.w400,
      fontSize: 12,
      color: Colors.white,
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    contentPadding: const EdgeInsets.symmetric(
      horizontal: 15,
      vertical: 20,
    ),
    filled: true,
    fillColor: Colors.white,
    focusColor: Colors.white,
    hoverColor: Colors.white,
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: AppPalette.gray200,
        width: 1.5,
      ),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: AppPalette.gray300,
        width: 1.5,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: AppPalette.primaryColor,
        width: 1.5,
      ),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: AppPalette.gray200,
        width: 1.5,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: AppPalette.danger,
        width: 1.5,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: AppPalette.danger,
        width: 1.5,
      ),
    ),
    labelStyle: const TextStyle(
      fontFamily: "Gilroy",
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: AppPalette.abyssColor,
    ),
    hintStyle: const TextStyle(
      fontFamily: "Gilroy",
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: AppPalette.grayText,
    ),
  ),
  buttonTheme: const ButtonThemeData(
    splashColor: AppPalette.splashColor,
    highlightColor: AppPalette.splashColor,
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
      splashFactory: InkRipple.splashFactory,
      overlayColor: MaterialStateProperty.all<Color>(AppPalette.highlightColor),
      foregroundColor: MaterialStateProperty.all<Color>(AppPalette.primaryColor),
      shadowColor: MaterialStateProperty.all<Color>(Colors.transparent),
    ),
  ),
  actionIconTheme: ActionIconThemeData(
    closeButtonIconBuilder: (context) => const Icon(Icons.close, color: AppPalette.abyssColor),
  ),
  datePickerTheme: DatePickerThemeData(
    backgroundColor: AppPalette.accent100,
    elevation: 0,
    rangePickerElevation: 0,
    shadowColor: AppPalette.splashColor,
    rangePickerShadowColor: AppPalette.splashColor,
    surfaceTintColor: AppPalette.splashColor,
    rangePickerSurfaceTintColor: AppPalette.splashColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    headerBackgroundColor: AppPalette.primaryColor,
    rangePickerHeaderHeadlineStyle: const TextStyle(
      fontFamily: "Gilroy",
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    headerForegroundColor: Colors.white,
    rangePickerHeaderForegroundColor: AppPalette.abyssColor,
    rangeSelectionBackgroundColor: AppPalette.accent200,
    rangePickerHeaderBackgroundColor: AppPalette.primaryColor,
    rangePickerBackgroundColor: AppPalette.accent100,
    rangeSelectionOverlayColor: MaterialStateProperty.all(AppPalette.splashColor),
    rangePickerHeaderHelpStyle: const TextStyle(
      fontFamily: "Gilroy",
      fontSize: 17,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    headerHeadlineStyle: const TextStyle(
      fontFamily: "Gilroy",
      fontSize: 28,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    headerHelpStyle: const TextStyle(
      fontFamily: "Gilroy",
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    weekdayStyle: const TextStyle(
      fontFamily: "Gilroy",
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AppPalette.abyssColor,
    ),
    yearStyle: const TextStyle(
      fontFamily: "Gilroy",
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppPalette.primaryColor,
    ),
    dayStyle: const TextStyle(
      fontFamily: "Gilroy",
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppPalette.primaryColor,
    ),
    dayOverlayColor: MaterialStateProperty.all(AppPalette.splashColor),
    yearOverlayColor: MaterialStateProperty.all(AppPalette.splashColor),
  ),
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: AppPalette.primaryColor,
    selectionColor: AppPalette.primaryColor.withOpacity(0.40),
    selectionHandleColor: AppPalette.primaryColor,
  ),
  progressIndicatorTheme: const ProgressIndicatorThemeData(
    circularTrackColor: Colors.transparent,
    color: AppPalette.primaryColor,
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: AppPalette.primaryColor,
  ),
  appBarTheme: const AppBarTheme(
    color: Color(0xFF282c34),
    elevation: 0,
    centerTitle: true,
    scrolledUnderElevation: 0,
    titleTextStyle: TextStyle(
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w500,
      fontSize: 16,
      color: Colors.white,
    ),
    iconTheme: IconThemeData(color: AppPalette.abyssColor, size: 20),
  ),
  tabBarTheme: const TabBarTheme(
    indicatorSize: TabBarIndicatorSize.tab,
    dividerColor: Colors.transparent,
  ),
  switchTheme: SwitchThemeData(
    overlayColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return AppPalette.primaryColor;
      }
      return AppPalette.gray300;
    }),
    thumbColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return AppPalette.primaryColor;
      }
      return AppPalette.gray300;
    }),
    trackColor: MaterialStateProperty.all(const Color(0xFFE0E2D8)),
  ).copyWith(
    thumbColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return AppPalette.gray300;
      }
      if (states.contains(MaterialState.selected)) {
        return AppPalette.primaryColor;
      }
      return AppPalette.gray300;
    }),
    trackColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return AppPalette.gray300;
      }
      if (states.contains(MaterialState.selected)) {
        return AppPalette.primaryColor;
      }
      return AppPalette.gray300;
    }),
  ),
  radioTheme: RadioThemeData(
    fillColor: MaterialStateProperty.all(AppPalette.primaryColor),
  ).copyWith(
    fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return AppPalette.gray300;
      }
      if (states.contains(MaterialState.selected)) {
        return AppPalette.primaryColor;
      }
      return AppPalette.gray300;
    }),
  ),
  checkboxTheme: CheckboxThemeData(
    fillColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return AppPalette.primaryColor;
      }
      return Colors.transparent;
    }),
    overlayColor: MaterialStateProperty.all(AppPalette.splashColor),
    side: const BorderSide(
      color: AppPalette.gray300,
      width: 1.5,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5),
    ),
    checkColor: MaterialStateProperty.all(Colors.white),
  ),
);
