import 'package:flutter/material.dart';

import '../../core/const/ui.dart';
import '../../core/utils/validators.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({Key? key, required this.controller}) : super(key: key);

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: UI.padding),
      child: TextFormField(
        controller: controller,
        obscureText: true,
        validator: Validators.password,
        decoration: const InputDecoration(
          labelText: "Password",
        ),
      ),
    );
  }
}
