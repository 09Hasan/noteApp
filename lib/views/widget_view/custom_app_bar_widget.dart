import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({
    super.key,
    required this.title,
    required this.icon,
    this.onPressed,
  });

  final String title;
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: kPrimaryColor,
          ),
        ),
        const Spacer(),
        Container(
          decoration: BoxDecoration(
            color: Colors.white.withAlpha(20),
            borderRadius: BorderRadius.circular(16),
          ),
          child: IconButton(
            onPressed: onPressed,
            icon: Icon(icon, size: 48, color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
