import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment/features/checkout/presentation/screens/payment_details/payment_details_screen.dart';
import 'package:payment/features/checkout/presentation/widgets/order_info_item.dart';

import '../../../../../core/widgets/custom_button.dart';
import '../../widgets/total_price_widget.dart';

class MyCartBodyScreen extends StatelessWidget {
  const MyCartBodyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          const SizedBox(height: 20,),
          Expanded(child: Image.asset("assets/images/basket.png")),
          const SizedBox(height: 20,),
          const OrderInfoItem(
            title: 'Order Subtotal',
            value: r'42.97$',
          ),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(
            title: 'Discount',
            value: r'0$',
          ),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(
            title: 'Shipping',
            value: r'8$',
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Divider(
              thickness: 2,
              height: 34,

              color: Color(0xffC7C7C7),
            ),
          ),
          const TotalPrice(title: 'Total', value: r'$50.97'),
          const SizedBox(
            height: 16,
          ),
           CustomButton(
            text: 'Complete Payment',
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const PaymentDetailsScreen();
              }));

              // showModalBottomSheet(
              //     context: context,
              //     shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(16)),
              //     builder: (context) {
              //       return BlocProvider(
              //         create: (context) => PaymentCubit(CheckoutRepoImpl()),
              //         child: const PaymentMethodsBottomSheet(),
              //       );
              //     });
            },
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
