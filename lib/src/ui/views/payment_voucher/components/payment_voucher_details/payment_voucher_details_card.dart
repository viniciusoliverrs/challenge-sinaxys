import 'package:challenge_sinaxys/src/ui/views/payment_voucher/components/payment_voucher_details/payment_voucher_receipt_forecast.dart';
import 'package:challenge_sinaxys/src/ui/common_widgets/common_text.dart';
import 'package:challenge_sinaxys/src/ui/theme/app_colors.dart';
import 'package:challenge_sinaxys/src/ui/theme/app_fonts.dart';
import 'package:challenge_sinaxys/src/ui/theme/app_icons.dart';
import 'package:flutter/material.dart';

import '../../../../common_widgets/common_divider.dart';
import '../../../../../utils/responsive.dart';
import 'payment_voucher_credited_by.dart';
import 'payment_voucher_date.dart';
import 'payment_voucher_value.dart';

class VoucherDetailsCard extends StatelessWidget {
  const VoucherDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            const PaymentVoucherCreditedBy(),
            const SizedBox(height: 20),
            const PaymentVoucherDate(),
            const SizedBox(height: 35),
            const PaymentVoucherValue(),
            const SizedBox(height: 5),
            const CommonDivider(),
            const SizedBox(height: 10),
            const PaymentVoucherReceiptForecast(),
            const SizedBox(height: 15),
            const CommonDivider(),
            const SizedBox(height: 5),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    const Icon(AppIcons.moreDetails, color: AppColors.primary),
                    CommonText(
                      label: "Ver detalhes dos serviços",
                      fontSize: Responsive(context)
                          .fontSizeMobile(AppFonts.normalSize),
                      fontWeight: FontWeight.w500,
                      padding: const EdgeInsets.all(10),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                const CommonDivider(),
                const SizedBox(height: 5),
                Row(
                  children: [
                    const Icon(
                      AppIcons.save,
                      color: AppColors.primary,
                    ),
                    CommonText(
                      label: "Salvar comprovante",
                      padding: const EdgeInsets.all(10),
                      fontSize: Responsive(context)
                          .fontSizeMobile(AppFonts.normalSize),
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget _section(List<Widget> children) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: children,
  );
}
