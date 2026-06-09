import 'package:gp_editor/models/parameters/parameter.dart';

class KnobParameter extends Parameter {
  KnobParameter({
    required super.name,
    required super.index,
    required super.id,
    required super.defaultValue,
    // required super.value,
    required super.min,
    required super.max,
    required super.step,
    required this.suffix,
    required this.minIsOff,
    required this.maxIsOff,
    required this.isDual,
    this.bindTo,
  });

  final String suffix;
  final bool minIsOff;
  final bool maxIsOff;
  final bool isDual;
  final int? bindTo;

  @override
  String get valueAsString => '';
}
