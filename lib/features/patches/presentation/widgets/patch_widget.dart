import 'package:flutter/material.dart';
import 'package:gp_editor/core/widgets/rounded_card_widget.dart';

class PatchWidget extends StatelessWidget {
  const PatchWidget({
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
      borderRadius: BorderRadius.circular(12),
      onTap: onTap,
      child: RoundedCardWidget(
        borderRadius: 12,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                Text(
                  shortDescription,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontWeight: FontWeight.w500,
                    color: Colors.white54,
                  ),
                ),
              ],
            ),
            IconButton(onPressed: onTapInfo, icon: Icon(Icons.info)),
          ],
        ),
      ),
    );
  }
}
