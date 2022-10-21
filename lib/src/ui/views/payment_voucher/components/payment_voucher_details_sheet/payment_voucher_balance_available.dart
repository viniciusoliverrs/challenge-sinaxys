import 'package:challenge_sinaxys/src/utils/common_widgets/common_button.dart';
import 'package:challenge_sinaxys/src/utils/common_widgets/common_text.dart';
import 'package:challenge_sinaxys/src/utils/responsive.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/theme/app_colors.dart';
import '../../../../../utils/theme/app_fonts.dart';

class PaymentVoucherBalanceAvailable extends StatefulWidget {
  const PaymentVoucherBalanceAvailable({super.key});

  @override
  State<PaymentVoucherBalanceAvailable> createState() =>
      _PaymentVoucherBalanceAvailableState();
}

class _PaymentVoucherBalanceAvailableState
    extends State<PaymentVoucherBalanceAvailable> {
  bool _hiddenBalance = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const CommonText(
                label: "Saldo disponível",
                color: AppColors.purpleDark,
                fontSize: AppFonts.normalSize,
                fontWeight: AppFonts.w700,
              ),
              SizedBox(
                height: 40,
                width: 125,
                child: Text.rich(
                  TextSpan(
                    text: "R\$ ",
                    style: TextStyle(
                      color: AppColors.purpleDark,
                      fontSize: Responsive(context)
                          .fontSizeMobile(AppFonts.normalSize),
                      fontWeight: FontWeight.w700,
                    ),
                    children: [
                      TextSpan(
                        text: _hiddenBalance ? "450,00" : "0,00",
                        style: TextStyle(
                          fontSize: Responsive(context)
                              .fontSizeMobile(AppFonts.largeSize),
                          fontWeight: AppFonts.w700,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          CommmonButton(
            label: "Resgatar",
            fontSize: Responsive(context).fontSizeMobile(AppFonts.normalSize),
            padding: const EdgeInsets.symmetric(horizontal: 38, vertical: 16),
            onPressed: () => setState(() => _hiddenBalance = !_hiddenBalance),
          ),
        ],
      ),
    );
  }
}
