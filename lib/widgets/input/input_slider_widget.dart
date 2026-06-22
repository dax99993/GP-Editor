import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gp_editor/widgets/rounded_card_widget.dart';

class InputSliderWidget extends StatefulWidget {
  const InputSliderWidget({
    super.key,
    required this.value,
    required this.min,
    required this.max,
    required this.step,
    required this.label,
    required this.onChanged,
    this.unit,
  });

  final double value;
  final double min;
  final double max;
  final double step;
  final String label;
  final Function(double value) onChanged;
  final String? unit;

  @override
  State<InputSliderWidget> createState() => _InputSliderWidgetState();
}

class _InputSliderWidgetState extends State<InputSliderWidget> {
  late double _sliderValue;
  // final _textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    setState(() {
      _sliderValue = widget.value; // add check for value betwenn min and max
      // _textController.value = TextEditingValue(text: _sliderValue.toString());
    });

    // _textController.addListener(() {
    //   setState(() {
    //     // Parse text to double; handle potential parsing errors in production
    //     if (validateInput(_textController.text)) {
    //       _sliderValue = double.tryParse(_textController.text)!;
    //     }
    //   });
    // });
  }

  String get sliderValueToString {
    final numDecimals = widget.step != 1.0 ? 2 : 0;
    final suffix = widget.unit == null ? '' : ' ${widget.unit}';

    return _sliderValue.toStringAsFixed(numDecimals) + suffix;
  }

  bool validateInput(String value) {
    return double.tryParse(value) != null &&
        double.tryParse(value)! >= widget.min &&
        double.tryParse(value)! <= widget.max;
  }

  // void _onChangedTextInput(String value) {
  //   // Validate
  //   if (validateInput(_textController.text)) {
  //     _sliderValue = double.tryParse(_textController.text)!;
  //   }
  // }

  void _onChangedSlider(double value) {
    setState(() {
      _sliderValue = value;

      // _textController.value = TextEditingValue(
      //   text: value.toString(), // Maybe set fixed decimals
      //   selection: TextSelection.fromPosition(
      //     TextPosition(offset: value.toString().length),
      //   ),
      // );

      widget.onChanged(_sliderValue);
    });
  }

  void _onDecrement() {
    setState(() {
      var value = _sliderValue - widget.step;
      _sliderValue = clampDouble(value, widget.min, widget.max);
    });
  }

  void _onIncrement() {
    setState(() {
      var value = _sliderValue + widget.step;
      _sliderValue = clampDouble(value, widget.min, widget.max);
    });
  }

  @override
  Widget build(BuildContext context) {
    final divisions = ((widget.max - widget.min) / widget.step).toInt();

    return RoundedCardWidget(
      horizontalPadding: 16,
      verticalPadding: 8,
      child: Column(
        children: [
          Stack(
            alignment: AlignmentGeometry.centerLeft,
            children: [
              // SizedBox(
              //   width: 70,
              //   child: TextField(
              //     // decoration: InputDecoration(labelText: 'Param Name'),
              //     keyboardType: TextInputType.numberWithOptions(decimal: true),
              //     controller: _textController,
              //     onChanged: _onChangedTextInput,
              //   ),
              // ),
              Center(
                child: Text(
                  sliderValueToString,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                widget.label,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(onPressed: _onDecrement, icon: Icon(Icons.remove)),
              Expanded(
                child: SliderTheme(
                  data: Theme.of(context).sliderTheme.copyWith(
                    trackHeight: 14,
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12),
                  ),
                  child: Slider(
                    min: widget.min,
                    max: widget.max,
                    divisions: divisions,
                    value: _sliderValue,
                    onChanged: _onChangedSlider,
                    label: sliderValueToString,
                  ),
                ),
              ),
              IconButton(onPressed: _onIncrement, icon: Icon(Icons.add)),
            ],
          ),
        ],
      ),
    );
  }
}
