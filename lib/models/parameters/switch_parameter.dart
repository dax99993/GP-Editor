import 'package:gp_editor/models/parameters/parameter.dart';

class SwitchParameter extends Parameter {
  SwitchParameter({
    required super.name,
    required super.index,
    required super.id,
    required super.defaultValue,
    // required super.value,
    required super.min,
    required super.max,
    required super.step,
  });

  @override
  String get valueAsString => 'b';
}
