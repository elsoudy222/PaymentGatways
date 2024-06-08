import 'package:flutter/material.dart';

import '../../widgets/thank_you/custom_dashed_widget.dart';
import '../../widgets/thank_you/thank_you_card.dart';

class ThankYouBodyScreen extends StatelessWidget {
  const ThankYouBodyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30.0,
        vertical: 45.0,
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Background Shape:
          const ThankYouCard(),
          const CustomDashedWidget(),
          // Left Small Circle Shape:
          Positioned(
            left: -20,
            bottom: MediaQuery.sizeOf(context).height * 0.2,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          // Right Small Circle Shape:
          Positioned(
            right: -20,
            bottom: MediaQuery.sizeOf(context).height * 0.2,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          // Top Big Circle Shape:
          const Positioned(
            left: 0,
            right: 0,
            top: -50,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Color(0xFFD9D9D9),
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 50,
                ),
              ),
            ),
          ),
          // Thank You Text:
        ],
      ),
    );
  }
}
