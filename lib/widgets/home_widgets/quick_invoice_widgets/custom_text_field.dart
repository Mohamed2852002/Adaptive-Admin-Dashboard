import 'package:adaptive_admin_dashboard/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(20),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        hintText: hint,
        hintStyle: Styles.styleRegular16(context).copyWith(
          color: const Color(0xffAAAAAA),
        ),
        filled: true,
        fillColor: const Color(0xffFAFAFA),
      ),
    );
  }
}
