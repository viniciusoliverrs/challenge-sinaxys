import 'package:flutter/material.dart';

import '../../../../core/presenter/common_widgets/common_text.dart';
import '../../../../core/utils/responsive.dart';
import '../../../../core/presenter/theme/app_colors.dart';
import '../../../../core/presenter/theme/app_fonts.dart';

class PaymentVoucherReceiptForecast extends StatelessWidget {
  const PaymentVoucherReceiptForecast({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         CommonText(
          label: "Previsão de recebimento",
          fontSize: Responsive(context).fontSizeMobile(AppFonts.normalSize),
          color: AppColors.greyDark,
          fontWeight: AppFonts.w600,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children:  [
            CommonText(
              label: "10/10/2020",
              fontSize: Responsive(context).fontSizeMobile(AppFonts.normalSize),
              color: AppColors.greyDark,
              fontWeight: AppFonts.w600,
            ),
            CommonText(
              label: "em 15 dias",
              fontSize: Responsive(context).fontSizeMobile(AppFonts.smallSize),
              color: AppColors.greyDark,
              fontWeight: AppFonts.w400,
            ),
          ],
        ),
      ],
    );
  }
}
