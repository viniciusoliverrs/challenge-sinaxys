import 'package:challenge_sinaxys/src/ui/common_widgets/common_text.dart';
import 'package:challenge_sinaxys/src/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../../theme/app_fonts.dart';
import 'payment_voucher_payment_tile.dart';

class PaymentVoucherPaymentsList extends StatelessWidget {
  const PaymentVoucherPaymentsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
          color: AppColors.greyLight.withAlpha(140),
          child: Row(
            children: const [
              CommonText(
                label: "PAGAMENTOS",
                fontSize: AppFonts.normalSize,
                color: AppColors.purpleDark,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
        ),
        Container(
          color: AppColors.light,
          padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 1,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return const PaymentVoucherPaymentsTile();
            },
          ),
        )
      ],
    );
  }
}
