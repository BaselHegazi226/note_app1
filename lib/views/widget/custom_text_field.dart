import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.hintText,
    this.textInput = TextInputType.text,
    this.obscureText = false,
    required this.paddingSpace,
  });

  final String hintText;
  bool obscureText;
  TextInputType textInput;
  //TextEditingController controller = TextEditingController();
  final double paddingSpace;
  @override
  Widget build(BuildContext context) {
    return TextField(
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
        contentPadding: EdgeInsets.symmetric(vertical: paddingSpace),
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
