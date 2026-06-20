import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    primary: Colors.black,
    onPrimary: Colors.white,
    secondary: Colors.white,
    onSecondary: Colors.black,
    surface: Colors.white,
    onSurface: Colors.black,
  ),
);

final darkTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    primary: Colors.white, // Main accent/buttons
    onPrimary: Colors.black87, // themeMode: ThemeMode.dark,

    secondary: Colors.blueAccent, // Secondary accents/icons
    onSecondary: Colors.white,

    surface: Colors.black87, // Backgrounds
    onSurface: Colors.white, // Text on backgrounds

    error: Colors.red,
    onError: Colors.white,
  ),
  appBarTheme: AppBarThemeData().copyWith(backgroundColor: Colors.white10),
  // bottomAppBarTheme: BottomAppBarThemeData().copyWith(color: Colors.pink),
  bottomNavigationBarTheme: BottomNavigationBarThemeData().copyWith(
    backgroundColor: Colors.white10,
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.white30,
  ),
  navigationRailTheme: NavigationRailThemeData().copyWith(
    backgroundColor: Colors.white10,
    indicatorColor: Colors.transparent,
    selectedIconTheme: IconThemeData().copyWith(color: Colors.white),
    unselectedIconTheme: IconThemeData().copyWith(color: Colors.white30),
    selectedLabelTextStyle: TextStyle(color: Colors.white),
    unselectedLabelTextStyle: TextStyle(color: Colors.white30),
    labelType: NavigationRailLabelType.all,
  ),
  cardTheme: CardThemeData().copyWith(
    clipBehavior: Clip.antiAlias, // Optional: clips child overflow visually
    color: Colors.grey[850],
    shadowColor: Colors.grey[900],
  ),
  sliderTheme: SliderThemeData().copyWith(
    activeTrackColor: Colors.white70,
    trackHeight: 14,
    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12),
  ),
  switchTheme: SwitchThemeData().copyWith(
    // Color of the thumb (the circle that moves)
    thumbColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return Colors.grey.shade500; // Color when switch is ON
      }
      return Colors.white; // Color when switch is OFF
    }),
    // Color of the track (the background rail)
    trackColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return Colors.white;
      }
      return Colors.grey.shade500;
    }),
    // Color of the ripple effect when pressed
    overlayColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return Colors.grey.withAlpha((0.4 * 255).toInt());
      }
      return Colors.white.withAlpha((0.4 * 255).toInt());
    }),
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
          return Colors.white; // Background when selected
        } else if (states.contains(WidgetState.hovered)) {
          // return Colors.grey.shade500; // Background when hovered
          return Colors.white.withAlpha(100); // Background when hovered
        }
        // return Colors.white; // Default background
        return Colors.transparent;
      }),
      // Customize text/icon color based on state
      foregroundColor: WidgetStateProperty.resolveWith<Color?>((
        Set<WidgetState> states,
      ) {
        if (states.contains(WidgetState.selected)) {
          return Colors.black;
        } else if (states.contains(WidgetState.hovered)) {
          return Colors.white;
        } else {
          return Colors.white;
        }
      }),
    ),
  ),
);
