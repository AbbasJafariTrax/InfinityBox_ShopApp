import 'package:flutter/material.dart';
import 'package:infinity_box_test/const/mColors.dart';

class CommonTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final String? Function(String?)? onchange;
  final bool obscureText;
  final TextInputType? keyboardType;
  final int maxLines;

  const CommonTextField({
    Key? key,
    required this.hintText,
    required this.controller,
    required this.validator,
    required this.onchange,
    required this.obscureText,
    this.keyboardType,
    this.maxLines = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validator,
      controller: controller,
      maxLines: maxLines,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        counterText: '',
        hintText: hintText,
      ),
      onChanged: onchange,
    );
  }
}
