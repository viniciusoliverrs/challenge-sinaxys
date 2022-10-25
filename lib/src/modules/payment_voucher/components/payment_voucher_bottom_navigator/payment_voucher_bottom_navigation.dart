import 'package:flutter/material.dart';

import '../../../../core/presenter/theme/app_colors.dart';
import '../../../../core/presenter/theme/app_fonts.dart';
import '../../../../core/presenter/theme/app_icons.dart';
import '../../../../core/utils/responsive.dart';

class PaymentVoucherBottomNavigation extends StatelessWidget {
  final Function(int index) onTap;
  final int selectedIndex;
  const PaymentVoucherBottomNavigation({
    Key? key,
    required this.onTap,
    required this.selectedIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: onTap,
      selectedIconTheme: const IconThemeData(color: AppColors.primary),
      selectedLabelStyle: const TextStyle(
        color: Colors.purple,
        fontFamily: AppFonts.primaryFontFamily,
        fontWeight: AppFonts.w700,
      ),
      unselectedIconTheme: const IconThemeData(color: AppColors.grey),
      unselectedFontSize:
          Responsive(context).fontSizeMobile(AppFonts.smallSize),
      selectedFontSize: Responsive(context).fontSizeMobile(AppFonts.normalSize),
      selectedItemColor: AppColors.primary,
      backgroundColor: AppColors.background,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Container(
            height: 40,
            width: 60,
            decoration: BoxDecoration(
              border: selectedIndex == 0
                  ? const Border(
                      top: BorderSide(width: 3.0, color: AppColors.primary),
                    )
                  : null,
            ),
            child: const Icon(AppIcons.medical),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Container(
            height: 40,
            width: 60,
            decoration: BoxDecoration(
              border: selectedIndex == 1
                  ? const Border(
                      top: BorderSide(width: 3.0, color: AppColors.primary),
                    )
                  : null,
            ),
            child: const Icon(AppIcons.creditCard),
          ),
          label: 'SinaxysPay',
        ),
        BottomNavigationBarItem(
          icon: Container(
            height: 40,
            width: 60,
            decoration: BoxDecoration(
              border: selectedIndex == 2
                  ? const Border(
                      top: BorderSide(width: 3.0, color: AppColors.primary),
                    )
                  : null,
            ),
            child: const Icon(AppIcons.chat),
          ),
          label: 'Mensagens',
        ),
      ],
    );
  }
}