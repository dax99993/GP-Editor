import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:gp_editor/screens/drums_screen.dart';
import 'package:gp_editor/screens/edit/patch_edit_screen.dart';
import 'package:gp_editor/screens/global_settings_screen.dart';
import 'package:gp_editor/screens/manage_screen.dart';

class GP200Screen extends StatefulWidget {
  const GP200Screen({super.key});

  @override
  State<GP200Screen> createState() => _GP200ScreenState();
}

class _GP200ScreenState extends State<GP200Screen> {
  int _selectedScreen = 0;
  Widget? content;

  void _onTabSelected(int tab) {
    setState(() {
      _selectedScreen = tab;
    });
  }

  final List<Widget> _screens = [
    PatchEditScreen(),
    DrumsScreen(),
    GlobalSettingsScreen(),
    ManageScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    content = _screens[_selectedScreen];

    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 600) {
          return Scaffold(
            body: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [const Color.fromARGB(255, 44, 44, 44), Colors.black],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  transform: GradientRotation(math.pi * 1.25),
                ),
              ),
              child: content,
            ),
            bottomNavigationBar: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.dialpad),
                  label: 'Edit',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.circle),
                  label: 'Drums',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: 'Global',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.help),
                  label: 'Manage',
                ),
              ],
              type: BottomNavigationBarType.fixed,
              currentIndex: _selectedScreen,
              showUnselectedLabels: true,
              onTap: _onTabSelected,
            ),
          );
        } else {
          return Row(
            children: [
              Expanded(
                child: Scaffold(
                  body: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          const Color.fromARGB(255, 44, 44, 44),
                          Colors.black,
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        transform: GradientRotation(math.pi * 1.25),
                      ),
                    ),
                    child: content,
                  ),
                ),
              ),
              NavigationRail(
                onDestinationSelected: _onTabSelected,
                selectedIndex: _selectedScreen,
                destinations: [
                  NavigationRailDestination(
                    icon: Icon(Icons.dialpad),
                    label: Text('Devices'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.circle),
                    label: Text('Drums'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.settings),
                    label: Text('Global'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.help),
                    label: Text('Manage'),
                  ),
                ],
              ),
            ],
          );
        }
      },
    );
  }
}
