import 'package:flutter/material.dart';
import 'package:gp_editor/widgets/effect_chain.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({super.key});

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  var _selectedEditMode = [true, false];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 600) {
          return Column(
            children: [
              ToggleButtons(
                fillColor: Colors.blue,
                borderRadius: BorderRadius.circular(16),
                selectedColor: Colors.white,
                selectedBorderColor: Colors.white,
                isSelected: _selectedEditMode,
                children: [
                  Text(
                    'Edit',
                    style: Theme.of(
                      context,
                    ).textTheme.bodySmall!.copyWith(color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                      vertical: 0,
                    ),
                    child: Text(
                      'Patch Settings',
                      style: Theme.of(
                        context,
                      ).textTheme.bodySmall!.copyWith(color: Colors.white),
                    ),
                  ),
                ],
                onPressed: (index) {
                  setState(() {
                    final toggles = List.filled(2, false, growable: false);
                    toggles[index] = true;
                    _selectedEditMode = toggles;
                  });
                },
              ),
              const SizedBox(height: 16),
              EffectChain(),
              Text('Effect Selector'),
              Text('Effect Params'),
            ],
          );
        } else {
          return Row(children: [Text('portrait')]);
        }
      },
    );
  }
}
