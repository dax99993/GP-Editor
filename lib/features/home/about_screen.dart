import 'package:flutter/material.dart';
import 'package:gp_editor/core/widgets/rounded_card_widget.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  Widget createButtonWidget({required String label, String info = ''}) {
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          Text(label),
          Spacer(),
          Text(info),
          Icon(Icons.chevron_right, size: 35),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RoundedCardWidget(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              createButtonWidget(label: 'Software version', info: '1.0.1'),
              Divider(thickness: 1, color: Colors.grey),
              createButtonWidget(label: 'Language'),
            ],
          ),
        ),
        RoundedCardWidget(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              createButtonWidget(label: 'About Us'),
              Divider(thickness: 1, color: Colors.white),
              createButtonWidget(label: 'Help & Feedback'),
            ],
          ),
        ),
      ],
    );
  }
}
