import 'package:flutter/material.dart';

class OperationButton extends StatelessWidget {
  const OperationButton(this.opTap, this.text, {super.key});

  final Function() opTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: opTap,
      child: Text(text),
    );
  }
}
