
import 'package:flutter/material.dart';

import '../../../../core/presenter/common_widgets/common_text.dart';
import '../../../../core/presenter/theme/app_colors.dart';
import '../../../../core/presenter/theme/app_fonts.dart';
import '../../../../core/utils/responsive.dart';

class PaymentVoucherDate extends StatelessWidget {
  const PaymentVoucherDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CommonText(
          label: "Data",
          fontSize: Responsive(context).fontSizeMobile(AppFonts.normalSize),
          color: AppColors.greyDark,
        ),
        CommonText(
          label: "10/10/2020",
          fontSize: Responsive(context).fontSizeMobile(AppFonts.normalSize),
          color: AppColors.greyDark,
        ),
      ],
    );
  }
}
