import 'package:flutter/material.dart';
import 'package:gp_editor/widgets/effect/effect_widget.dart';

class EffectsScreen extends StatefulWidget {
  const EffectsScreen({super.key});

  @override
  State<EffectsScreen> createState() => _EffectsScreenState();
}

class _EffectsScreenState extends State<EffectsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Select Effect')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                DropdownMenu(
                  dropdownMenuEntries: [
                    DropdownMenuEntry(value: 'a', label: 'A'),
                    DropdownMenuEntry(value: 'b', label: 'B'),
                  ],
                ),
                const SizedBox(width: 16),
                Expanded(child: SearchBar()),
              ],
            ),
            const SizedBox(height: 8),
            EffectWidget(
              name: 'Effect 1',
              shortDescription: 'Short Description 1',
              onTap: () {
                print('Change Effect');
              },
              onTapInfo: () {
                print('Show Effect Info');
              },
            ),
            EffectWidget(
              name: 'Effect 2',
              shortDescription: 'Short Description 2',
              onTap: () {},
              onTapInfo: () {},
            ),
          ],
        ),
      ),
    );
  }
}
