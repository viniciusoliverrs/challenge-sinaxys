import 'package:challenge_sinaxys/src/ui/views/payment_voucher/components/payment_voucher_details_sheet/payment_voucher_balance_available.dart';
import 'package:challenge_sinaxys/src/ui/views/payment_voucher/components/payment_voucher_details_sheet/payment_voucher_payments_list.dart';
import 'package:challenge_sinaxys/src/utils/responsive.dart';
import 'package:challenge_sinaxys/src/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';

import 'payment_voucher_credit_card.dart';

class PaymentVoucherDetailsSheet extends StatelessWidget {
  const PaymentVoucherDetailsSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.light,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                width: Responsive(context).width * 0.3,
                height: 8,
                decoration: const BoxDecoration(
                  color: AppColors.greyLight,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            const PaymentVoucherCreditCard(),
            const SizedBox(height: 10),
            const PaymentVoucherBalanceAvailable(),
            const SizedBox(height: 10),
            const PaymentVoucherPaymentsList(),
          ],
        ),
      ),
    );
  }
}
