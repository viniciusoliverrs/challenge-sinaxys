import 'package:challenge_sinaxys/src/ui/views/payment_voucher/components/payment_voucher_details_sheet/payment_voucher_details_sheet.dart';
import 'package:flutter/material.dart';

import '../../../../utils/common_widgets/common_button.dart';

class PaymentVoucherShowDetails extends StatefulWidget {
  const PaymentVoucherShowDetails({super.key});

  @override
  State<PaymentVoucherShowDetails> createState() =>
      _PaymentVoucherShowDetailsState();
}

class _PaymentVoucherShowDetailsState extends State<PaymentVoucherShowDetails> {
  bool isLoaded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CommmonButton(
              isLoading: isLoaded,
              label: "Ver meu Saldo completo",
              onPressed: isLoaded ? () async {
                setState(() {
                  isLoaded = true;
                });
                await Future.delayed(const Duration(seconds: 1));
                setState(() {
                  isLoaded = false;
                });
                showModalBottomSheet(
                  isScrollControlled: true,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  context: context,
                  builder: (context) => const FractionallySizedBox(
                    heightFactor: 0.95,
                    child: PaymentVoucherDetailsSheet(),
                  ),
                );
              } : null,
            ),
          ),
        ],
      ),
    );
  }
}
