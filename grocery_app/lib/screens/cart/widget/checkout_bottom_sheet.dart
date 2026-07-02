import 'package:flutter/material.dart';
import 'package:grocery_app/screens/cart/order_accepted_screen.dart';

class CheckoutBottomSheet extends StatelessWidget {
  final String totalCost;

  const CheckoutBottomSheet({super.key, required this.totalCost});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 16, 20, 24),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Checkout',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.close),
              ),
            ],
          ),
          const Divider(height: 24, color: Color(0xffE6E6E6)),
          const _CheckoutRow(label: 'Delivery', value: 'Select Method'),
          const Divider(height: 24, color: Color(0xffE6E6E6)),
          const _CheckoutRow(label: 'Payment', value: 'Visa  ****4679'),
          const Divider(height: 24, color: Color(0xffE6E6E6)),
          const _CheckoutRow(label: 'Promo Code', value: 'Pick discount'),
          const Divider(height: 24, color: Color(0xffE6E6E6)),
          _CheckoutRow(
            label: 'Total Cost',
            value: totalCost,
            showArrow: false,
            valueBold: true,
          ),
          const SizedBox(height: 20),
          RichText(
            text: const TextSpan(
              style: TextStyle(
                fontSize: 13,
                color: Color(0xff7C7C7C),
                height: 1.4,
              ),
              children: [
                TextSpan(text: 'By placing an order you agree to our '),
                TextSpan(
                  text: 'Terms',
                  style: TextStyle(
                    color: Color(0xff53B175),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextSpan(text: ' And '),
                TextSpan(
                  text: 'Conditions',
                  style: TextStyle(
                    color: Color(0xff53B175),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            height: 56,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff53B175),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const OrderAcceptedScreen(),
                  ),
                );
              },
              child: const Text(
                'Place Order',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _CheckoutRow extends StatelessWidget {
  final String label;
  final String value;
  final bool showArrow;
  final bool valueBold;

  const _CheckoutRow({
    required this.label,
    required this.value,
    this.showArrow = true,
    this.valueBold = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 15, color: Color(0xff7C7C7C)),
        ),
        Row(
          children: [
            Text(
              value,
              style: TextStyle(
                fontSize: 15,
                fontWeight: valueBold ? FontWeight.w700 : FontWeight.w600,
              ),
            ),
            if (showArrow) ...[
              const SizedBox(width: 4),
              const Icon(
                Icons.arrow_forward_ios,
                size: 14,
                color: Color(0xffB6B6B6),
              ),
            ],
          ],
        ),
      ],
    );
  }
}
