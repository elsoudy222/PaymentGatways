import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment/core/utils/styles.dart';

import 'my_cart_body_screen.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('My Cart',style: Styles.style25,),
        centerTitle: true,
        leading: Center(child: SvgPicture.asset("assets/svg/arrow.svg",height: 20,)),
      ),
      body: MyCartBodyScreen(),
    );
  }
}
