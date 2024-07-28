import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  CustomIcon({super.key, required this.iconData, this.onPressed});
  final IconData iconData;
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(16),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          iconData,
          color: Colors.white,
          size: 28,
          weight: 50,
          //grade: 100,
        ),
      ),
    );
  }
}
