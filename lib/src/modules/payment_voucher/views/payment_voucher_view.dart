// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:challenge_sinaxys/src/core/presenter/theme/app_colors.dart';
import 'package:challenge_sinaxys/src/modules/payment_voucher/components/payment_voucher_welcome_message.dart';
import 'package:flutter/material.dart';

import '../../../core/presenter/common_widgets/common_close_button.dart';
import '../../app_routes.dart';
import '../components/payment_voucher_bottom_navigator/payment_voucher_bottom_navigation.dart';
import '../components/payment_voucher_details/payment_voucher_details_card.dart';
import '../components/payment_voucher_show_details.dart';
import '../components/payment_voucher_title.dart';

class PaymentVoucherView extends StatefulWidget {
  const PaymentVoucherView({super.key});

  @override
  State<PaymentVoucherView> createState() => _PaymentVoucherViewState();
}

class _PaymentVoucherViewState extends State<PaymentVoucherView> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            color: AppColors.background,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CommonCloseButton(
                        onPressed: () async =>
                            await Navigator.pushReplacementNamed(
                                context, AppRoutes.splashView)),
                  ],
                ),
                const PaymentVoucherWelcomeMessage(
                    userName: 'Vinicius Oliveira'),
                const SizedBox(height: 10),
                const PaymentVoucherTitle(
                  title: 'Comprovante de pagamento',
                ),
                const SizedBox(height: 15),
                const VoucherDetailsCard(),
                const SizedBox(height: 30),
                const PaymentVoucherShowDetails(),
              ],
            ),
          ),
        ),
      ),
      // bottomNavigationBar:
      bottomNavigationBar: PaymentVoucherBottomNavigation(
        selectedIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
      ),
    );
  }
}
