import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem(
      {super.key,
      required this.isActive,
      required this.onPressed,
      required this.color});
  final bool isActive;
  final void Function()? onPressed;
  final int color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: !isActive
          ? CircleAvatar(
              backgroundColor: Color(color),
              radius: 32,
            )
          : CircleAvatar(
              backgroundColor: Colors.white,
              radius: 32,
              child: CircleAvatar(
                backgroundColor: Color(color),
                radius: 28,
              ),
            ),
    );
  }
}
