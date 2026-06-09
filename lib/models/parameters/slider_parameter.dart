import 'package:gp_editor/models/parameters/parameter.dart';

class SliderParameter extends Parameter {
  SliderParameter({
    required super.name,
    required super.index,
    required super.id,
    required super.defaultValue,
    // required super.value,
    required super.min,
    required super.max,
    required super.step,
    required this.suffix,
  });

  final String suffix;

  @override
  String get valueAsString {
    return '';
  }
}
