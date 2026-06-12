import 'package:flutter/material.dart';
import 'package:gp_editor/widgets/input/slider_widget.dart';
import 'package:gp_editor/widgets/rounded_card_widget.dart';

class InputCustomSliderWidget extends StatelessWidget {
  const InputCustomSliderWidget({super.key});

  void _onDecrement() {}
  void _onIncrement() {}

  @override
  Widget build(BuildContext context) {
    return RoundedCardWidget(
      horizontalPadding: 16,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SliderWidget(value: 32, min: 5, max: 50),
          Row(
            children: [
              IconButton(onPressed: _onDecrement, icon: Icon(Icons.remove)),
              IconButton(onPressed: _onIncrement, icon: Icon(Icons.add)),
            ],
          ),
        ],
      ),
    );
  }
}
