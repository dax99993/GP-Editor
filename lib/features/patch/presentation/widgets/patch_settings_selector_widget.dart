import 'package:flutter/material.dart';
import 'package:gp_editor/core/widgets/rounded_card_widget.dart';

class PatchSettingsSelectorWidget extends StatelessWidget {
  const PatchSettingsSelectorWidget({
    super.key,
    required this.title,
    required this.infoWidgets,
    required this.imagePath,
    required this.onTap,
  });

  final String title;
  final List<Widget> infoWidgets;
  final String imagePath;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: RoundedCardWidget(
        child: Row(
          children: [
            SizedBox(
              width: 32,
              height: 32,
              child: Image.asset(imagePath, fit: BoxFit.fill),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(
                      context,
                    ).textTheme.titleSmall!.copyWith(color: Colors.white),
                  ),
                  Row(children: infoWidgets),
                ],
              ),
            ),
            Icon(Icons.chevron_right),
          ],
        ),
      ),
    );
  }
}
