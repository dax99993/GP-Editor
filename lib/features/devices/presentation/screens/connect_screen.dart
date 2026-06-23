import 'package:flutter/material.dart';
import 'package:gp_editor/features/devices/presentation/screens/gp200_screen.dart';
import 'package:gp_editor/core/widgets/rounded_card_widget.dart';

class ConnectScreen extends StatefulWidget {
  const ConnectScreen({super.key});

  @override
  State<ConnectScreen> createState() => _ConnectScreenState();
}

class _ConnectScreenState extends State<ConnectScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search for device'),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => GP200Screen()),
              );
            },
            child: Text('Skip'),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              // color: Colors.red,
              child: Stack(
                children: [
                  // AnimatedSwitcher(
                  //   duration: Duration(seconds: 5),
                  //   transitionBuilder: (child, animation) => ScaleTransition(
                  //     scale: Tween<double>(
                  //       begin: 5,
                  //       end: 10,
                  //     ).animate(animation),
                  //     child: child,
                  //   ),
                  //   child: Center(
                  //     child: Icon(Icons.circle, color: Colors.grey),
                  //   ),
                  // ),
                  Center(
                    child: SizedBox(
                      width: 200,
                      child: Image.asset(
                        'images/GP200-Board.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Text('Please select the connection method'),
            RoundedCardWidget(
              verticalPadding: 8,
              horizontalPadding: 16,
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.bluetooth),
                    title: Text('Bluetooth'),
                    subtitle: Text('Connect via Bluetooth'),
                    onTap: () {
                      // Handle Bluetooth connection
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.usb),
                    title: Text('USB'),
                    subtitle: Text('Connect via USB cable'),
                    onTap: () {
                      // Handle USB connection
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
