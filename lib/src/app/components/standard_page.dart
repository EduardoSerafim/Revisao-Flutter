import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/exports.dart';

class StandartPage extends StatelessWidget {
  final Widget body;
  final String title;
  StandartPage({ required this.title, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: EdgeInsets.only(
            left: AppPadings.borderPadding,
            right: AppPadings.borderPadding,
            top: AppPadings.topPadding),
        child: SingleChildScrollView(
          child: body,
        ),
      ),
    );
  }
}
