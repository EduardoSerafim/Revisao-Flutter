import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:revisao/src/app/components/standard_buttom.dart';
import 'package:revisao/src/app/modules/create_account/create_account.dart';
import 'package:revisao/src/utils/exports.dart';
import 'package:revisao/src/utils/paddings.dart';

import '../../components/standard_form.dart';
import '../home/home_page.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.only(
          left: AppPadings.borderPadding,
          right: AppPadings.borderPadding,
          top: AppPadings.topPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/rengoku1.jpg'),
            const SizedBox(height: 15),
            StandardForm(label: eMail),
            const SizedBox(height: 15),
            StandardForm(label: password),
            const SizedBox(height: 30),
            StandartButtom(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage())
                  );
                },
                buttonText: login
            ),
            const SizedBox(height: 15),
            StandartButtom(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CreateAcoountPage()));
                },
                buttonText: createAccount),
          ],
        ),
      ),
    ));
  }
}
