import 'package:flutter/material.dart';

class CustomTextFormFieldWidegt extends StatelessWidget {
  const CustomTextFormFieldWidegt({
    super.key,
    this.maxLines = 1,
    required this.label,
    required this.hint,
  });
  final int maxLines;
  final String label;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      onChanged: (value) {
        debugPrint(value);
      },
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white, width: 2),
          borderRadius: BorderRadius.circular(16),
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
