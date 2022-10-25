// import 'package:flutter/material.dart';

// import '../../../../core/presenter/theme/app_colors.dart';
// import '../../../../core/presenter/theme/app_icons.dart';

// class PaymentVoucherBottomNavigationItem extends StatelessWidget {
//   final String label;
//   final IconData icon;
//   final bool active;

//   const PaymentVoucherBottomNavigationItem({
//     super.key,
//     required this.label,
//     required this.icon,
//     required this.active,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBarItem(
//       icon: Container(
//         height: 40,
//         width: 60,
//         decoration: BoxDecoration(
//           border: active
//               ? const Border(
//                   top: BorderSide(width: 3.0, color: AppColors.primary),
//                 )
//               : null,
//         ),
//         child:  Icon(icon),
//       ),
//       label: label,
//     );
//   }
// }
