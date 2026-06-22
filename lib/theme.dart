import 'package:flutter/material.dart';

class ThemeColors {
  // COLOR SCHEME
  Color get primary => Colors.white; // Main accent/buttons
  Color get onPrimary => Colors.black87; // themeMode: ThemeMode.dark,

  Color get secondary => Colors.blueAccent; // Secondary accents/icons
  Color get onSecondary => Colors.white;

  Color get surface => Colors.black87; // Backgrounds
  Color get onSurface => Colors.white; // Text on backgrounds

  Color get error => Colors.red;
  Color get onError => Colors.white;

  // APP BAR
  // Color get appBarBackground2 => Colors.white10;
  Color get appBarBackground => Colors.grey.shade900;

  // NAV BAR
  // Color get navBarBackground2 => Colors.white10;
  Color get navBarBackground => Colors.grey.shade900;
  Color get navBarSelectedItem => Colors.white;
  // Color get navBarUnselectedItem2 => Colors.white30;
  Color get navBarUnselectedItem => Colors.grey.shade700;

  // CARD
  Color get cardColor => Colors.grey[850]!;
  Color get cardShadowColor => Colors.grey[900]!;

  // SLIDER
  // Color get sliderActiveTrackColor => Colors.white70;
  Color get sliderActiveTrackColor => Colors.grey.shade400;

  // SWITCH
  Color get switchThumbSelected => Colors.grey.shade500;
  Color get switchThumbUnselected => primary;
  Color get switchTrackSelected => primary;
  Color get switchTrackUnselected => Colors.grey.shade500;
  Color get switchOverlaySelected => Colors.grey.withAlpha((0.4 * 255).toInt());
  Color get switchOverlayUnselected => primary.withAlpha((0.4 * 255).toInt());

  // BUTTON
  // ELEVATED BUTTON
  // SEGMENTED BUTTONS
  Color get segmentedButtonBackgroundSelected => primary;
  Color get segmentedButtonBackgroundHovered =>
      Colors.grey.shade500; // Background when hovered
  Color get segmentedButtonBackgroundUnselected =>
      Colors.transparent; //TODO: should i choose a fixed a color?
  Color get segmentedButtonForegroundSelected => onPrimary;
  Color get segmentedButtonForegroundHovered => onPrimary;
  Color get segmentedButtonForegroundUnselected => primary;
}

final themeColors = ThemeColors();

final darkTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    primary: themeColors.primary,
    onPrimary: themeColors.onPrimary,
    secondary: themeColors.secondary,
    onSecondary: themeColors.onSecondary,
    surface: themeColors.surface,
    onSurface: themeColors.onSurface,
    error: themeColors.error,
    onError: themeColors.onError,
  ),
  appBarTheme: AppBarThemeData().copyWith(
    backgroundColor: themeColors.appBarBackground,
  ),
  // bottomAppBarTheme: BottomAppBarThemeData().copyWith(color: Colors.pink),
  bottomNavigationBarTheme: BottomNavigationBarThemeData().copyWith(
    backgroundColor: themeColors.navBarBackground,
    selectedItemColor: themeColors.navBarSelectedItem,
    unselectedItemColor: themeColors.navBarUnselectedItem,
  ),
  navigationRailTheme: NavigationRailThemeData().copyWith(
    backgroundColor: themeColors.navBarBackground,
    indicatorColor: Colors.transparent,
    selectedIconTheme: IconThemeData().copyWith(
      color: themeColors.navBarSelectedItem,
    ),
    unselectedIconTheme: IconThemeData().copyWith(
      color: themeColors.navBarUnselectedItem,
    ),
    selectedLabelTextStyle: TextStyle(color: themeColors.navBarSelectedItem),
    unselectedLabelTextStyle: TextStyle(
      color: themeColors.navBarUnselectedItem,
    ),
    labelType: NavigationRailLabelType.all,
  ),
  cardTheme: CardThemeData().copyWith(
    clipBehavior: Clip.antiAlias, // Optional: clips child overflow visually
    color: themeColors.cardColor,
    shadowColor: themeColors.cardShadowColor,
  ),
  sliderTheme: SliderThemeData().copyWith(
    activeTrackColor: themeColors.sliderActiveTrackColor,
    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12),
    trackHeight: 14,
  ),
  switchTheme: SwitchThemeData().copyWith(
    // Color of the thumb (the circle that moves)
    thumbColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return themeColors.switchThumbSelected; // Color when switch is ON
      }
      return themeColors.switchThumbUnselected; // Color when switch is OFF
    }),
    // Color of the track (the background rail)
    trackColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return themeColors.switchTrackSelected;
      }
      return themeColors.switchTrackUnselected;
    }),
    // Color of the ripple effect when pressed
    overlayColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return themeColors.switchOverlaySelected;
      }
      return themeColors.switchOverlayUnselected;
    }),
  ),
  checkboxTheme: CheckboxThemeData().copyWith(
    fillColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return Colors.blue; // Color when checked
      }
      return Colors.transparent; // No fill when unchecked
    }),
    checkColor: WidgetStatePropertyAll(Colors.transparent),
    side: WidgetStateBorderSide.resolveWith(
      (states) => const BorderSide(
        color: Colors.white, // Border color
        width: 2.0, // Border width
      ),
    ),
  ),
  buttonTheme: ButtonThemeData().copyWith(buttonColor: Colors.grey),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle().copyWith(
      backgroundColor: WidgetStatePropertyAll(Colors.grey.shade900),
    ),
  ),
  //  textButtonTheme: TextButtonThemeData()
  segmentedButtonTheme: SegmentedButtonThemeData().copyWith(
    style: ButtonStyle().copyWith(
      // Customize background based on state
      backgroundColor: WidgetStateProperty.resolveWith<Color?>((
        Set<WidgetState> states,
      ) {
        if (states.contains(WidgetState.selected)) {
          return themeColors.segmentedButtonBackgroundSelected;
        } else if (states.contains(WidgetState.hovered)) {
          return themeColors.segmentedButtonBackgroundHovered;
        }
        return themeColors.segmentedButtonBackgroundUnselected;
      }),
      // Customize text/icon color based on state
      foregroundColor: WidgetStateProperty.resolveWith<Color?>((
        Set<WidgetState> states,
      ) {
        if (states.contains(WidgetState.selected)) {
          return themeColors.segmentedButtonForegroundSelected;
        } else if (states.contains(WidgetState.hovered)) {
          return themeColors.segmentedButtonForegroundHovered;
        } else {
          return themeColors.segmentedButtonForegroundUnselected;
        }
      }),
    ),
  ),
);
