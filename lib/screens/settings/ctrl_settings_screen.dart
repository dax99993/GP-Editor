import 'package:flutter/material.dart';
import 'package:gp_editor/models/effect/effect.dart';

class CtrlSettingsScreen extends StatelessWidget {
  const CtrlSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CTRL Settings')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Wrap(
              spacing: 12.0, // Gap between adjacent images (horizontal)
              runSpacing: 8.0, // Gap between rows (vertical)
              alignment:
                  WrapAlignment.center, // Aligns items to the start of the line
              children: EffectType.values
                  .map(
                    (e) => SizedBox(
                      width: 50,
                      child: Image.asset(
                        'images/${e.name.toUpperCase()}_on.png',
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
