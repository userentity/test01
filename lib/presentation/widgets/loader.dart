import 'package:flutter/material.dart';

import '../../core/const/ui.dart';

class Loader extends StatelessWidget {
  const Loader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: UI.darkBcgColor.withOpacity(0.4),
      alignment: Alignment.center,
      child: const CircularProgressIndicator(),
    );
  }
}
