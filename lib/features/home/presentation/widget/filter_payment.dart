import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/controller/checkbox_cubit/checkbox_cubit.dart';
import 'package:my_app/core/constant/colors.dart';

class FilterPayment extends StatefulWidget {
  const FilterPayment({super.key});

  @override
  State<FilterPayment> createState() => _FilterPaymentState();
}

class _FilterPaymentState extends State<FilterPayment> {
  List<String> title = ["كرتونة", "علبة", "قطعة"];
  List<String> title1 = ["Siemens", "Egyptpanel", "Siemens"];
  bool val = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text("عدد المنتج"),
            ...List.generate(
              3,
              (index) => Row(
                children: [
                  BlocBuilder<CheckboxCubit, bool>(
                    builder: (BuildContext context, state) {
                      return Checkbox(
                        activeColor: AppColors.accentColor,
                        checkColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        side: BorderSide(color: Colors.grey),

                        value: state,
                        onChanged: (bool? value) {
                          context.read<CheckboxCubit>().isActive(value);
                        },
                      );
                    },
                  ),
                  Text(title[index]),
                ],
              ),
            ),
          ],
        ),
        Spacer(),
        Column(
          children: [
            Text(" العلامة التجارية"),
            ...List.generate(
              3,
              (index) => Row(
                children: [
                  Text(title1[index]),

                  Checkbox(
                    activeColor: AppColors.accentColor,
                    checkColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    side: BorderSide(color: Colors.grey),

                    value: val,
                    onChanged: (bool? value) {
                      setState(() {
                        val = value!;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
