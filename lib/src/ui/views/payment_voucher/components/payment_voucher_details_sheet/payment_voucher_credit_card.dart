import 'package:flutter/material.dart';

import '../../../../../utils/common_widgets/common_text.dart';
import '../../../../../utils/theme/app_colors.dart';
import '../../../../../utils/theme/app_fonts.dart';

class PaymentVoucherCreditCard extends StatelessWidget {
  const PaymentVoucherCreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minWidth: 200, maxWidth: 300),
      height: 180,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: AppColors.grey,
            blurRadius: 6,
            spreadRadius: 2,
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.primary,
            AppColors.purple,
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text.rich(
                TextSpan(
                  text: "Sinaxys",
                  style: const TextStyle(
                    color: AppColors.light,
                    fontSize: AppFonts.normalSize,
                    fontWeight: AppFonts.w700,
                  ),
                  children: [
                    TextSpan(
                      text: "PAY",
                      style: TextStyle(
                        color: AppColors.light.withAlpha(180),
                        fontSize: AppFonts.normalSize,
                        fontWeight: AppFonts.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CommonText(
                label: "**** 5690",
                color: AppColors.light,
                fontSize: AppFonts.normalSize,
              ),
              SizedBox(
                width: 100,
                height: 50,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          color: AppColors.orange,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 30,
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: AppColors.red.withOpacity(0.85),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
