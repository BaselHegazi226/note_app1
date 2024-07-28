import 'package:flutter/material.dart';

class CustomTextFieldForEditView extends StatefulWidget {
  CustomTextFieldForEditView({
    super.key,
    required this.hintText,
    this.maxLines = 1,
    this.textEditingController,
    this.onChanged,
    required this.labelText,
  });

  final String hintText;
  int maxLines;
  TextEditingController? textEditingController;
  void Function(String)? onChanged;
  final String labelText;

  @override
  _CustomTextFieldForEditViewState createState() =>
      _CustomTextFieldForEditViewState();
}

class _CustomTextFieldForEditViewState
    extends State<CustomTextFieldForEditView> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: widget.onChanged,
      controller: widget.textEditingController,
      maxLines: widget.maxLines,
      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w400,
      ),
      decoration: InputDecoration(
        labelText: widget.labelText,
        labelStyle: const TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
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
        color: color.withOpacity(.7),
      ),
    );
  }
}
