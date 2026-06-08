import 'package:flutter/material.dart';
import 'package:gp_editor/screens/connect_screen.dart';
import 'package:gp_editor/widgets/rounded_card.dart';

class Device extends StatelessWidget {
  const Device({super.key});

  @override
  Widget build(BuildContext context) {
    return RoundedCard(
      child: Row(
        // mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            width: 150,
            // color: Colors.red,
            child: Image.asset('images/GP-200-Board.png', fit: BoxFit.fill),
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
                      'GP-200',
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium!.copyWith(fontSize: 12),
                    ),
                    Text(
                      'Multi-Effects Processor',
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
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ConnectScreen(),
                          ),
                        );
                      },
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
