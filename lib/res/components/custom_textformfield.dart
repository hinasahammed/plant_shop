import 'package:flutter/material.dart';

class CustomTextformfield extends StatelessWidget {
  final TextEditingController? controller;
  final String? labelText;
  final Widget? prefixIcon;
  final int? isMax;
  const CustomTextformfield(
      {super.key,
      this.controller,
      this.labelText,
      this.prefixIcon,
      this.isMax});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: isMax ?? 1,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(15),
        ),
        fillColor: const Color(0xffE7F9DA),
        filled: true,
        hintText: labelText,
        prefixIcon: prefixIcon,
      ),
    );
  }
}
