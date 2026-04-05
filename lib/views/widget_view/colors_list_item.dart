import 'package:flutter/material.dart';

class ColorsListItem extends StatelessWidget {
  const ColorsListItem({
    super.key,
    required this.color,
    required this.isChoice,
  });
  final Color color;
  final bool isChoice;

  @override
  Widget build(BuildContext context) {
    return isChoice
        ? CircleAvatar(
            backgroundColor: color,
            radius: 38,
            child: const Icon(
              Icons.check,
              color: Colors.black,
              size: 38,
              fontWeight: FontWeight.bold,
            ),
          )
        : CircleAvatar(backgroundColor: color, radius: 38);
  }
}
