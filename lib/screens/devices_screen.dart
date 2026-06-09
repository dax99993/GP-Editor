import 'package:flutter/material.dart';
import 'package:gp_editor/screens/connect_screen.dart';
import 'package:gp_editor/screens/edit/gp200_screen.dart';
import 'package:gp_editor/widgets/device_widget.dart';

class DevicesScreen extends StatelessWidget {
  const DevicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DeviceWidget(
            imagePath: 'images/GP200-Board.png',
            deviceName: 'GP200',
            deviceDetails: 'Multi-Effects Processor',
            linkAction: () {
              print('Go to connect Screen');
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => ConnectScreen()));
            },
          ),
          const SizedBox(height: 8),
          DeviceWidget(
            imagePath: 'images/GP200-JR-Board.png',
            deviceName: 'GP-200 JR',
            deviceDetails: 'Multi-Effects Processor',
            linkAction: () {},
          ),
          const SizedBox(height: 8),
          DeviceWidget(
            imagePath: 'images/GP200-Board.png',
            deviceName: 'GP-200 LT',
            deviceDetails: 'Multi-Effects Processor',
            linkAction: () {},
          ),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => GP200Screen()),
              );
            },
            child: Text('Go to Edit'),
          ),
          // Device(child: Text('GP200')),
        ],
      ),
    );
  }
}
