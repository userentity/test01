import 'package:flutter/material.dart';

import '../../core/const/ui.dart';

class CustomInput extends StatelessWidget {
  const CustomInput({
    Key? key,
    required this.controller,
    this.validator,
    this.label,
  }) : super(key: key);

  final TextEditingController controller;

  final String? Function(String?)? validator;

  final String? label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: UI.padding),
      child: TextFormField(
        controller: controller,
        validator: validator,
        decoration: InputDecoration(
          labelText: label,
        ),
      ),
    );
  }
}
