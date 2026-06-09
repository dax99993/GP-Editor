import 'package:flutter/material.dart';
import 'package:gp_editor/widgets/patch/patch_widget.dart';

class PatchesScreen extends StatefulWidget {
  const PatchesScreen({super.key});

  @override
  State<PatchesScreen> createState() => _PatchesScreenState();
}

class _PatchesScreenState extends State<PatchesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Select Patch')),
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
            PatchWidget(
              name: 'Patch 1',
              shortDescription: 'Short Description 1',
              onTap: () {
                print('Change Effect');
              },
              onTapInfo: () {
                print('Show Effect Info');
              },
            ),
            PatchWidget(
              name: 'Patch 2',
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
