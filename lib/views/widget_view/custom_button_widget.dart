import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: const Center(
            child: Text(
              'Add',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
