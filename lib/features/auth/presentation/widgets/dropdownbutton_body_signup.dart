import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DropdownbuttonBodySignup<T> extends StatefulWidget {
  const DropdownbuttonBodySignup({
    super.key,
    required this.items,
    required this.width,
    required this.height,
    required this.text,
    required this.selectedValue,
    required this.onChanged,
  });

  final List<DropdownMenuItem<T>> items;
  final double width;
  final double height;
  final String text;
  final T? selectedValue;
  final ValueChanged<T?> onChanged;

  @override
  State<DropdownbuttonBodySignup<T>> createState() =>
      _DropdownbuttonBodySignupState<T>();
}

class _DropdownbuttonBodySignupState<T>
    extends State<DropdownbuttonBodySignup<T>> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[50],
      ),
      child: DropdownButton<T>(
        isExpanded: true,
        underline: const SizedBox(),
        iconSize: 30,
        icon: Icon(Icons.keyboard_arrow_down, color: Colors.grey),
        items: widget.items,
        hint: Text(
          widget.text,
          style: TextStyle(
            fontSize: 14.sp,
            color: Colors.grey,
            fontWeight: FontWeight.w500,
          ),
        ),
        onChanged: widget.onChanged,
        value: widget.selectedValue,
      ),
    );
  }
}
