import 'package:flutter/material.dart';
import 'package:gp_editor/screens/home_screen.dart';

final theme = ThemeData.from(
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.light,
    seedColor: Color.fromARGB(255, 116, 15, 182),
  ),
);

final darkTheme = ThemeData.from(
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: Color.fromARGB(255, 116, 15, 182),
  ),
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter MIDI',
      themeMode: ThemeMode.dark,
      darkTheme: darkTheme,
      theme: theme,
      home: const HomeScreen(),
    );
  }
}
