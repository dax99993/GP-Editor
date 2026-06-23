import 'package:flutter/material.dart';
import 'package:gp_editor/core/widgets/rounded_card_widget.dart';

class DeviceWidget extends StatelessWidget {
  const DeviceWidget({
    super.key,
    required this.imagePath,
    required this.deviceName,
    required this.deviceDetails,
    required this.linkAction,
  });

  final String imagePath;
  final String deviceName;
  final String deviceDetails;
  final void Function() linkAction;

  @override
  Widget build(BuildContext context) {
    return RoundedCardWidget(
      child: Row(
        // mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            width: 150,
            // color: Colors.red,
            child: Image.asset(imagePath, fit: BoxFit.fill),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      deviceName,
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium!.copyWith(fontSize: 12),
                    ),
                    Text(
                      deviceDetails,
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium!.copyWith(fontSize: 12),
                    ),
                  ],
                ),
                Divider(height: 10, thickness: 1, color: Colors.grey),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: Icon(Icons.info_outline),
                      onPressed: () {},
                      style: IconButton.styleFrom(
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            8,
                          ), // Adjust for corner roundness
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.link_outlined),
                      onPressed: linkAction,
                      style: IconButton.styleFrom(
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            8,
                          ), // Adjust for corner roundness
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
