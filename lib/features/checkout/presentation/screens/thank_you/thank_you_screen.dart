import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment/core/widgets/custom_appbar.dart';
import 'package:payment/features/checkout/presentation/screens/thank_you/thank_you_body_screen.dart';

import '../../../../../core/utils/styles.dart';

class ThankYouScreen extends StatelessWidget {
  const ThankYouScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: Transform.translate(
          offset: const Offset(0, -50), child: const ThankYouBodyScreen()),
    );
  }
}
