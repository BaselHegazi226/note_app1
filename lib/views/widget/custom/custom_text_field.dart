import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  CustomTextFormField({
    super.key,
    required this.hintText,
    this.textInput = TextInputType.text,
    this.obscureText = false,
    this.maxLines = 1,
    this.onSaved,
  });

  final String hintText;
  bool obscureText;
  TextInputType textInput;
  void Function(String?)? onSaved;
  final int maxLines;

  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  Color? borderColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          setState(() {
            borderColor = Colors.red;
          });
          return 'field is required';
        } else {
          setState(() {
            borderColor = Colors.green.withOpacity(.5);
          });
        }
      },
      onSaved: widget.onSaved,
      maxLines: widget.maxLines,
      obscureText: widget.obscureText,
      keyboardType: widget.textInput,
      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w400,
      ),
      decoration: InputDecoration(
        errorStyle: const TextStyle(
          color: Colors.redAccent,
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
        hintText: widget.hintText,
        hintStyle: const TextStyle(
          color: Colors.grey,
        ),
        border: outlineInputBorder(),
        enabledBorder: outlineInputBorder(),
        disabledBorder: outlineInputBorder(),
        focusedBorder: outlineInputBorder(color: Colors.white),
        errorBorder: outlineInputBorder(color: Colors.red),
      ),
    );
  }

  OutlineInputBorder outlineInputBorder({Color color = Colors.grey}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        width: 3,
        color: borderColor!.withOpacity(.7),
      ),
    );
  }
}
