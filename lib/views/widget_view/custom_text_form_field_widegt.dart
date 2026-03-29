import 'package:flutter/material.dart';

class CustomTextFormFieldWidegt extends StatelessWidget {
  const CustomTextFormFieldWidegt({
    super.key,
    this.maxLines = 1,
    required this.label,
    required this.hint,
    this.validator,
    this.onSaved,
  });
  final int maxLines;
  final String label;
  final String hint;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      maxLines: maxLines,
      onSaved: onSaved,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white, width: 2),
          borderRadius: BorderRadius.circular(8),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.redAccent, width: 2),
          borderRadius: BorderRadius.circular(16),
        ),
        label: Text(label, style: const TextStyle(color: Colors.white)),
        hint: Text(hint, style: const TextStyle(color: Colors.white)),

        border: OutlineInputBorder(
          // borderSide: BorderSide(
          //   color: Colors.orangeAccent,
          //   width: 15,
          // ),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
