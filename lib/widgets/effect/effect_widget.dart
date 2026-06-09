import 'package:flutter/material.dart';
import 'package:gp_editor/widgets/rounded_card_widget.dart';

class EffectWidget extends StatelessWidget {
  const EffectWidget({
    super.key,
    required this.name,
    required this.shortDescription,
    required this.onTapInfo,
    required this.onTap,
  });

  final String name;
  final String shortDescription;
  final Function() onTapInfo;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(18),
      onTap: onTap,
      child: RoundedCardWidget(
        color: Colors.blue,
        shadowColor: Colors.blueAccent,
        borderRadius: 18,
        horizontalPadding: 12,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    shortDescription,
                    maxLines: 1,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontWeight: FontWeight.w500,
                      color: Colors.white70,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: onTapInfo,
              icon: Icon(Icons.info, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
