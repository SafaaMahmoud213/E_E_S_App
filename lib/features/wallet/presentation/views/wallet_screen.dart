import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/core/constant/colors.dart';
import 'package:my_app/core/utils/extensions_sizedbox.dart';
import 'package:my_app/core/widgets/app_bar_container.dart';
import 'package:my_app/features/wallet/presentation/views/available_wallet.dart';
import 'package:my_app/features/wallet/presentation/widget/history_wallet.dart';
import 'package:my_app/features/wallet/presentation/widget/wallet_body.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBarContainer(text: 'المحفظة '),
            40.hi,
            AvailableWallet(),
            20.hi,
            HistoryWallet(),
            24.hi,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerRight,

                child: Text(
                  "المعاملات الأخيرة",
                  style: TextStyle(
                    fontSize: 18.sp,
                    color: AppColors.titleLight,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            10.hi,
            WalletBody(),
          ],
        ),
      ),
    );
  }
}
