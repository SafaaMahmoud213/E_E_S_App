import 'package:flutter/material.dart';
import 'package:my_app/core/utils/extensions_sizedbox.dart';
import 'package:my_app/core/widgets/button.dart';

class FiltterBotton extends StatelessWidget {
  const FiltterBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,

      children: [
        AppButton(onPressed: () {}, text: "تطبيق"),
        12.wi,
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Text(
            "تراجع",
            style: TextStyle(fontSize: 18, color: Colors.red),
          ),
        ),
      ],
    );
  }
}
