import 'package:flutter/material.dart';
import 'package:flutter_reorderable_grid_view/widgets/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gp_editor/models/effect/effect.dart';
import 'package:gp_editor/providers/app_provider.dart';

class EffectChainWidget extends ConsumerStatefulWidget {
  const EffectChainWidget({super.key});

  @override
  ConsumerState<EffectChainWidget> createState() => _EffectChainWidgetState();
}

class _EffectChainWidgetState extends ConsumerState<EffectChainWidget> {
  final _scrollController = ScrollController();
  final _gridViewKey = GlobalKey();

  final double width = 250;
  final double height = 250 * 0.75;

  List<EffectType> _effects = EffectType.values;

  // State to be moved to provider
  final _inputChainPosition = 10;
  final _outputChainPosition = 11;
  // var _selectedEffect = EffectType.dly;
  final _effectsState = [
    false,
    true,
    true,
    true,
    false,
    false,
    true,
    true,
    false,
    false,
    true,
  ];

  String effectNameToAsset({
    required EffectType effectType,
    required bool state,
    required bool selected,
  }) {
    var assetPath =
        'images/${effectType.name.toUpperCase()}_${state ? 'on' : 'off'}';

    if (selected) {
      assetPath += '_selected.png';
    } else {
      assetPath += '.png';
    }

    return assetPath;
  }

  double calculateInputChainArrowTopPosition(int position) {
    final row = (position / 4).toInt();
    var top = 0.0;
    switch (row) {
      case 0:
        top = 2;
        break;
      case 1:
        top = 77;
        break;
      case 2:
        top = 151;
        break;
      default:
        top = 3;
        break;
    }

    return top;
  }

  double calculateInputChainArrowLeftPosition(int position) {
    final col = position % 4;
    var left = 0.0;
    switch (col) {
      case 0:
        left = 6;
        break;
      case 1:
        left = 61.5;
        break;
      case 2:
        left = 120;
        break;
      case 3:
        left = 178.5;
        break;
      default:
        left = 3;
        break;
    }

    return left;
  }

  double calculateOutputChainArrowTopPosition(int position) =>
      calculateInputChainArrowTopPosition(position) + 22;
  double calculateOutputChainArrowLeftPosition(int position) =>
      calculateInputChainArrowLeftPosition(position);

  @override
  Widget build(BuildContext context) {
    final app = ref.watch(appProvider);
    // final selectedEffect =

    final generatedChildren = List.generate(
      _effects.length,
      (index) => Container(
        key: Key(_effects.elementAt(index).name),
        width: 20,
        height: 20,
        child: InkWell(
          onTap: () {
            // setState(() {
            //   _selectedEffect = _effects.elementAt(index);
            // });
            ref
                .read(appProvider.notifier)
                .setSelectedEffect(_effects.elementAt(index));
          },
          child: Image.asset(
            effectNameToAsset(
              effectType: _effects.elementAt(index),
              state: _effectsState.elementAt(index),
              selected: app.selectedEffect == _effects.elementAt(index),
            ),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );

    return ReorderableBuilder(
      scrollController: _scrollController,
      onReorder: (ReorderedListFunction reorderedListFunction) {
        setState(() {
          _effects = reorderedListFunction(_effects) as List<EffectType>;
        });
      },
      builder: (children) {
        return Container(
          // color: Colors.black,
          width: width,
          height: height,
          child: Stack(
            children: [
              Center(
                child: Image.asset('images/DarkChain.png', fit: BoxFit.fill),
              ),
              Positioned(
                top: calculateInputChainArrowTopPosition(_inputChainPosition),
                left: calculateInputChainArrowLeftPosition(_inputChainPosition),
                child: SizedBox(
                  width: 10,
                  child: Image.asset(
                    'images/InputChainArrow.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                top: calculateOutputChainArrowTopPosition(_outputChainPosition),
                left: calculateOutputChainArrowLeftPosition(
                  _outputChainPosition,
                ),
                child: SizedBox(
                  width: 10,
                  child: Image.asset(
                    'images/OutputChainArrow.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16),
                child: GridView(
                  key: _gridViewKey,
                  controller: _scrollController,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisSpacing: 30,
                    crossAxisSpacing: 16,
                  ),
                  children: children,
                ),
              ),
            ],
          ),
        );
      },
      children: generatedChildren,
    );
  }
}
