import 'package:flutter/material.dart';

import 'custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.iconData});
  final String title;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w700,
          ),
        ),
        Spacer(),
        CustomIcon(
          iconData: iconData,
        ),
      ],
    );
  }
}
