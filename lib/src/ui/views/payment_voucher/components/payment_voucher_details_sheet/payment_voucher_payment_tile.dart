import 'package:challenge_sinaxys/src/utils/common_widgets/common_button_link.dart';
import 'package:challenge_sinaxys/src/utils/common_widgets/common_divider.dart';
import 'package:challenge_sinaxys/src/utils/common_widgets/common_text.dart';
import 'package:challenge_sinaxys/src/utils/theme/app_colors.dart';
import 'package:challenge_sinaxys/src/utils/theme/app_fonts.dart';
import 'package:flutter/material.dart';

class PaymentVoucherPaymentsTile extends StatelessWidget {
  const PaymentVoucherPaymentsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CommonText(
                  label: "Pagamento Efetuado",
                  fontSize: AppFonts.normalSize,
                  color: AppColors.greyDark,
                  fontWeight: FontWeight.w600,
                ),
                CommonText(
                  label: "20/05/22",
                  fontSize: AppFonts.normalSize,
                  color: AppColors.greyDark,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CommonText(
                  label: "Local",
                  fontSize: AppFonts.normalSize,
                  color: AppColors.greyDark,
                  fontWeight: FontWeight.w600,
                ),
                CommonText(
                  label: "AmorSaúde Alvarada",
                  fontSize: AppFonts.normalSize,
                  color: AppColors.greyDark,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CommonText(
                  label: "Valor total",
                  color: AppColors.purpleDark,
                  fontSize: AppFonts.normalSize,
                  fontWeight: AppFonts.w700,
                ),
                Text.rich(
                  TextSpan(
                    text: "R\$",
                    style: TextStyle(
                      color: AppColors.purpleDark,
                      fontSize: AppFonts.normalSize,
                      fontWeight: FontWeight.w700,
                    ),
                    children: [
                      TextSpan(
                        text: " 100,00",
                        style: TextStyle(
                          fontSize: AppFonts.mediumSize,
                          fontWeight: AppFonts.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            const CommonDivider(),
            const SizedBox(height: 5),
            CommonButtonLink(
              label: "Ver detalhes",
              onPressed: () {},
              fontWeight: AppFonts.w600,
            ),
          ],
        ),
      ),
    );
  }
}
