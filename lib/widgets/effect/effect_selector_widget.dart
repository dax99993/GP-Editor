import 'package:flutter/material.dart';
import 'package:gp_editor/screens/effects_screen.dart';
import 'package:gp_editor/widgets/rounded_card_widget.dart';

class EffectSelectorWidget extends StatelessWidget {
  const EffectSelectorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (context) => EffectsScreen()));
      },
      splashColor: Colors.white,
      child: RoundedCardWidget(
        child: Row(
          children: [Text('Effect Name'), Spacer(), Icon(Icons.chevron_right)],
        ),
      ),
    );
  }
}
