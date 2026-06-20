import 'package:dashed_border/dashed_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_reorderable_grid_view/widgets/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gp_editor/models/effect/effect.dart';
import 'package:gp_editor/providers/app_provider.dart';
import 'package:gp_editor/providers/patch_provider.dart';
import 'package:gp_editor/widgets/effect/effect_image_widget.dart';

class EffectChainWidget extends ConsumerWidget {
  EffectChainWidget({super.key});

  final _gridViewKey = GlobalKey();
  final _scrollController = ScrollController();

  final double width = 250;
  final double height = 250 * 0.75;

  final double _effectWidth = 20;
  final double _effectHeight = 20;
  final double _arrowWidth = 10;

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
  Widget build(BuildContext context, WidgetRef ref) {
    final EffectType selectedEffect = ref.watch(
      appProvider.select((app) => app.selectedEffect),
    );

    final effectsChain = ref.watch(
      patchProvider.select((p) => p.effectsChainOrder),
    );

    final effectsState = ref
        .read(patchProvider.select((p) => p.effects))
        .map((e) => e.state)
        .toList();

    final inputChainPosition = ref.watch(
      patchProvider.select((p) => p.fxLoop.sendPosition),
    );

    final outputChainPosition = ref.watch(
      patchProvider.select((p) => p.fxLoop.returnPosition),
    );

    final generatedChildren = List.generate(
      effectsChain.length,
      (index) => SizedBox(
        key: Key(effectsChain.elementAt(index).name),
        width: _effectWidth,
        height: _effectHeight,
        child: InkWell(
          onTap: () {
            print('Selecting effect ${effectsChain.elementAt(index)}');
            ref
                .read(appProvider.notifier)
                .setSelectedEffect(effectsChain.elementAt(index));
          },
          child: EffectImageWidget(
            effectType: effectsChain.elementAt(index),
            state: effectsState.elementAt(index),
            isSelected: selectedEffect == effectsChain.elementAt(index),
          ),
        ),
      ),
    );

    return ReorderableBuilder(
      scrollController: _scrollController,
      onReorder: (ReorderedListFunction reorderedListFunction) {
        final order = reorderedListFunction(effectsChain) as List<EffectType>;
        ref.read(patchProvider.notifier).reorderEffectChain(order);
      },
      dragChildBoxDecoration: BoxDecoration(
        border: DashedBorder(
          color: Colors.white,
          width: 2.0,
          dashLength: 8.0,
          dashGap: 4.0,
          style: BorderStyleEx.dashed, // or .dotted or .solid
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      builder: (children) {
        return SizedBox(
          width: width,
          height: height,
          child: Stack(
            children: [
              Center(
                child: Image.asset('images/DarkChain.png', fit: BoxFit.fill),
              ),
              Positioned(
                top: calculateInputChainArrowTopPosition(inputChainPosition),
                left: calculateInputChainArrowLeftPosition(inputChainPosition),
                child: SizedBox(
                  width: _arrowWidth,
                  child: Image.asset(
                    'images/InputChainArrow.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                top: calculateOutputChainArrowTopPosition(outputChainPosition),
                left: calculateOutputChainArrowLeftPosition(
                  outputChainPosition,
                ),
                child: SizedBox(
                  width: _arrowWidth,
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
