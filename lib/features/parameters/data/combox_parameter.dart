import 'package:gp_editor/features/parameters/data/parameter.dart';

class ComboxParameter extends Parameter {
  ComboxParameter({
    required super.name,
    required super.index,
    required super.id,
    required super.defaultValue,
    // required super.value,
    required super.min,
    required super.max,
    required super.step,
    required this.entries,
  });

  final Map<String, int> entries;

  @override
  String get valueAsString => 'c';
}
