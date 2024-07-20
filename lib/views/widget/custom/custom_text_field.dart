import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.hintText,
    this.textInput = TextInputType.text,
    this.obscureText = false,
    this.maxLines = 1,
  });

  final String hintText;
  bool obscureText;
  TextInputType textInput;
  //TextEditingController controller = TextEditingController();
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      //  controller: controller,
      obscureText: obscureText,
      // onSubmitted: (data) {
      //   controller.clear();
      // },
      keyboardType: textInput,
      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w400,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.grey,
        ),
        enabledBorder: outlineInputBorder(),
        disabledBorder: outlineInputBorder(),
        focusedBorder: outlineInputBorder(color: Colors.white),
      ),
    );
  }
}

OutlineInputBorder outlineInputBorder({Color color = Colors.grey}) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(
      width: 3,
      color: color,
    ),
  );
}
