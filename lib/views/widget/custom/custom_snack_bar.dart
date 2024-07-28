import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String snackText) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.white,
      elevation: 15,
      content: Text(
        snackText,
        style: const TextStyle(
          color: Color(0xff1D1B20),
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
      ),
    ),
  );
}
