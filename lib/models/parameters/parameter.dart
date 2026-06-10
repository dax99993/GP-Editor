abstract class Parameter {
  Parameter({
    required this.name,
    required this.index,
    required this.id,
    required this.defaultValue,
    required this.min,
    required this.max,
    required this.step,
    this.units,
  }) : value = defaultValue;

  final String name;
  final int index;
  // final Uint32 id;
  final int id;

  double value;
  final double defaultValue;
  final double min;
  final double max;
  final double step;
  final String? units;

  // General methods
  void reset() {
    value = defaultValue;
  }

  // void setValue(double value);
  // double getValue();
  String get valueAsString;
  // String getName();

  // Util methods
  // double clamp(double value);

  // For EXP settings
  // double getStep();
  // double getMin();
  // double getMinAsString();
  // double getMax();
  // double getMaxAsString();
}
