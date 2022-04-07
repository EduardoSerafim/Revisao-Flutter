import 'package:flutter/material.dart';
import '../../utils/exports.dart';

class StandardForm extends StatelessWidget {
  final String label;
  final Function()? onEditingComplete;
  final TextEditingController? userInputController;
  StandardForm({required this.label, this.userInputController, this.onEditingComplete});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onEditingComplete: onEditingComplete ,
      controller: userInputController,
      decoration: InputDecoration(label: Text(label))
    );
  }
}
