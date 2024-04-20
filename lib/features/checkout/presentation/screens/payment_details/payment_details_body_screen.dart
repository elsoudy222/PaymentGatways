import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:payment/features/checkout/presentation/widgets/custom_credit_card.dart';
import 'package:payment/features/checkout/presentation/widgets/payment_method_item.dart';
import 'package:payment/features/checkout/presentation/widgets/payment_method_list_view.dart';

import '../../../../../core/widgets/custom_button.dart';

class PaymentDetailsBody extends StatefulWidget {
  const PaymentDetailsBody({super.key});

  @override
  State<PaymentDetailsBody> createState() => _PaymentDetailsBodyState();
}

class _PaymentDetailsBodyState extends State<PaymentDetailsBody> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: PaymentMethodsListView(),
        ),
        SliverToBoxAdapter(
          child: CustomCreditCard(
            autoValidateMode: autoValidateMode,
            formKey: formKey,
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 25, left: 20, right: 20),
                child: CustomButton(
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      log('payment');
                    } else {
                      // Navigator.of(context)
                      //     .push(MaterialPageRoute(builder: (context) {
                      //   return const ThankYouView();
                      // }));
                     autoValidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                  text: 'Payment',
                ),
              )),
        ),
      ],
    );
  }
}
