import 'package:flutter/material.dart';

import 'custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar(
      {super.key, required this.title, required this.iconData, this.onPressed});
  final String title;
  final IconData iconData;
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w700,
          ),
        ),
        const Spacer(),
        CustomIcon(
          onPressed: onPressed,
          iconData: iconData,
        ),
      ],
    );
  }
}
