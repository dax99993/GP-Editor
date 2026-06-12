import 'package:flutter/material.dart';
import 'package:gp_editor/screens/about_screen.dart';
import 'package:gp_editor/screens/devices_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedScreen = 0;
  Widget? content;

  void _onTabSelected(int tab) {
    setState(() {
      _selectedScreen = tab;
    });
  }

  final List<Widget> _screens = [DevicesScreen(), AboutScreen()];

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      // backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      backgroundColor: Colors.white10,
      title: Text(_selectedScreen == 0 ? 'Devices' : 'About'),
    );

    final Widget content = _screens[_selectedScreen];

    final body = Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.purple[900]!, Colors.black],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: SingleChildScrollView(child: Column(children: [content])),
    );

    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 600) {
          return Scaffold(
            appBar: appBar,
            body: body,
            bottomNavigationBar: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.device_hub),
                  label: 'Devices',
                ),
                BottomNavigationBarItem(icon: Icon(Icons.info), label: 'About'),
              ],
              currentIndex: _selectedScreen,
              selectedItemColor: Colors.deepPurpleAccent,
              backgroundColor: Colors.white10,
              onTap: _onTabSelected,
            ),
          );
        } else {
          return Row(
            children: [
              Expanded(
                child: Scaffold(appBar: appBar, body: body),
              ),
              NavigationRail(
                onDestinationSelected: _onTabSelected,
                selectedIndex: _selectedScreen,
                destinations: [
                  NavigationRailDestination(
                    icon: Icon(Icons.device_hub),
                    label: Text(
                      'Devices',
                      // style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      //   fontSize: 8,
                      //   color: Colors.white,
                      // ),
                    ),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.info),
                    label: Text('About'),
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
