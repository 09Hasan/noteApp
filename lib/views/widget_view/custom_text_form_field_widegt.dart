import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextFormFieldWidegt extends StatelessWidget {
  const CustomTextFormFieldWidegt({
    super.key,
    this.maxLines = 1,
    required this.label,
    required this.hint,
    this.validator,
    this.onSaved,
    this.initValue,
    this.onChaged,
  });
  final int maxLines;
  final String label;
  final String hint;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final String? initValue;
  final Function(String)? onChaged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChaged,
      initialValue: initValue,
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
          borderRadius: BorderRadius.circular(8),
        ),
        label: Text(label, style: const TextStyle(color: kPrimaryColor)),
        hint: Text(hint, style: const TextStyle(color: kPrimaryColor)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: kPrimaryColor, width: 2),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.pink, width: 2),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );
  }
}
