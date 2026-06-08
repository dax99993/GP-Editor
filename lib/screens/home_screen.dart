import 'package:flutter/material.dart';
import 'package:gp_editor/screens/about_screen.dart';
import 'package:gp_editor/screens/devices_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
    content = _screens[_selectedScreen];

    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 600) {
          return Scaffold(
            appBar: AppBar(
              // backgroundColor: Theme.of(context).colorScheme.primaryContainer,
              backgroundColor: Colors.black,
              title: Text(_selectedScreen == 0 ? 'Devices' : 'About'),
            ),
            body: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.purple[900]!, Colors.purple[200]!],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: content,
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.device_hub),
                  label: 'devices',
                ),
                BottomNavigationBarItem(icon: Icon(Icons.help), label: 'about'),
              ],
              currentIndex: _selectedScreen,
              selectedItemColor: Colors.purpleAccent,
              onTap: _onTabSelected,
            ),
          );
        } else {
          return Row(
            children: [
              Expanded(
                child: Scaffold(
                  appBar: AppBar(
                    backgroundColor: Theme.of(
                      context,
                    ).colorScheme.primaryContainer,
                    title: Text(_selectedScreen == 0 ? 'Devices' : 'About'),
                  ),
                  body: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.purple[900]!, Colors.purple[200]!],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
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
                    icon: Icon(Icons.help),
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
