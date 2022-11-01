import 'package:flutter/material.dart';

import '../../core/const/ui.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key, required this.error}) : super(key: key);

  final String error;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Error"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(UI.padding),
          child: Column(
            children: [
              Text(
                error,
                style: const TextStyle(
                  color: UI.errorColor,
                ),
              ),
              const SizedBox(
                height: UI.padding,
              ),
              Image.asset(
                "assets/images/error.png",
                fit: BoxFit.contain,
              )
            ],
          ),
        ),
      ),
    );
  }
}
