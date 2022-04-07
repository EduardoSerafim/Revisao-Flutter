import 'package:flutter/material.dart';
import '../../utils/exports.dart';

class StandardForm extends StatelessWidget {
  final String label;
  StandardForm({required this.label});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        label: Text(label)
      )
    );
  }
}
