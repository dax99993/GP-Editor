import 'package:flutter/material.dart';
import 'package:gp_editor/widgets/device.dart';

class DevicesScreen extends StatelessWidget {
  const DevicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(width: double.infinity, child: Device()),
        const SizedBox(height: 8),
        Device(),
        // Device(child: Text('GP200')),
      ],
    );
  }
}
