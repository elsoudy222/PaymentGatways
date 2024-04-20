import 'package:flutter/material.dart';
import 'package:payment/features/checkout/presentation/screens/my_cart/my_cart_screen.dart';
import 'package:payment/features/checkout/presentation/screens/payment_details/payment_details_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PaymentsGateways',
      home: MyCartScreen(),
    );
  }
}


