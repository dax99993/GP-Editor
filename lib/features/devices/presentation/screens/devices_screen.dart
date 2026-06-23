import 'package:flutter/material.dart';
import 'package:gp_editor/features/devices/presentation/screens/connect_screen.dart';
import 'package:gp_editor/features/devices/presentation/screens/gp200_screen.dart';
import 'package:gp_editor/features/patch/presentation/screens/ctrl_settings_screen.dart';
import 'package:gp_editor/features/patch/presentation/screens/exp_settings_screen.dart';
import 'package:gp_editor/features/patch/presentation/screens/fxloop_settings_screen.dart';
import 'package:gp_editor/features/patch/presentation/screens/general_settings_screen.dart';
import 'package:gp_editor/features/patch/presentation/screens/knob_settings_screen.dart';
import 'package:gp_editor/features/devices/presentation/widgets/device_widget.dart';

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
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => GeneralSettingsScreen(),
                ),
              );
            },
            child: Text('Go to General settings'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => FxloopSettingsScreen()),
              );
            },
            child: Text('Go to FxLoop settings'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ExpSettingsScreen()),
              );
            },
            child: Text('Go to EXP settings'),
          ),
          // Device(child: Text('GP200')),
        ],
      ),
    );
  }
}
