import 'package:flutter/material.dart';

import '../custom/custom_form_bottom_sheet.dart';

class AddModalBottomSheet extends StatelessWidget {
  const AddModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Padding(
        padding: EdgeInsets.symmetric(
          vertical: 32,
          horizontal: 16,
        ),
        child: SingleChildScrollView(
          child: CustomFormBottomSheet(),
        ),
      ),
    );
  }
}
