import 'package:flutter/material.dart';
import 'package:gp_editor/widgets/rounded_card_widget.dart';

class InputSwitchWidget extends StatefulWidget {
  const InputSwitchWidget({
    super.key,
    required this.label,
    required this.value,
    required this.onChanged,
  });

  final String label;
  final bool value;
  final Function(bool value) onChanged;

  @override
  State<InputSwitchWidget> createState() => _InputSwitchWidgetState();
}

class _InputSwitchWidgetState extends State<InputSwitchWidget> {
  late bool _switchValue;

  @override
  void initState() {
    super.initState();

    setState(() {
      _switchValue = widget.value;
    });

    widget.onChanged(_switchValue);
  }

  void _onChanged(bool isChecked) {
    setState(() {
      _switchValue = isChecked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return RoundedCardWidget(
      horizontalPadding: 16,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.label,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Switch(value: _switchValue, onChanged: _onChanged),
        ],
      ),
    );
  }
}
