import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String snackText) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      //padding: const EdgeInsets.symmetric(horizontal: 32),
      backgroundColor: const Color(0xff1D1B20),
      elevation: 15,
      content: Text(
        snackText,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
      ),
    ),
  );
}
