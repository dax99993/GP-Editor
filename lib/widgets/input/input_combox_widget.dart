import 'package:flutter/material.dart';
import 'package:gp_editor/widgets/rounded_card_widget.dart';

class InputComboxWidget<T> extends StatefulWidget {
  const InputComboxWidget({
    super.key,
    required this.value,
    required this.entries,
    required this.label,
    required this.onChanged,
  });

  final String label;
  final T value;
  final Map<String, T> entries;
  final Function(T value) onChanged;

  @override
  State<InputComboxWidget<T>> createState() => _InputComboxWidgetState<T>();
}

class _InputComboxWidgetState<T> extends State<InputComboxWidget<T>> {
  late T _selectedValue;

  @override
  void initState() {
    super.initState();

    setState(() {
      _selectedValue = widget.value;
    });
  }

  void _onPressed(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (ctx) {
        return Container(
          // height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          // decoration: BoxDecoration(),
          child: Column(
            children: [
              Text(
                'Select Parameter value',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // const SizedBox(height: 16),
              Divider(thickness: 2, height: 16),
              Expanded(
                child: ListView.builder(
                  itemCount: widget.entries.length,
                  itemBuilder: (ctx, index) {
                    final key = widget.entries.keys.elementAt(index);
                    final value = widget.entries[key];
                    final isDisabled = _selectedValue == value;

                    return TextButton(
                      onPressed: isDisabled
                          ? null
                          : () {
                              setState(() {
                                _selectedValue = value!;
                              });
                              widget.onChanged(_selectedValue);
                              Navigator.of(context).pop();
                            },
                      child: Text(key.toUpperCase()),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var key = widget.entries.keys.firstWhere(
      (k) => widget.entries[k] == _selectedValue,
    );

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
          ElevatedButton(
            onPressed: () => _onPressed(context),
            child: Text(key.toUpperCase()),
          ),
        ],
      ),
    );
  }
}
