import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:revisao/src/app/components/standard_buttom.dart';
import 'package:revisao/src/app/components/standard_form.dart';

import '../../../utils/exports.dart';

class CreateAcoountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(createAccount),
      ),
      body:  SingleChildScrollView(
        child: Padding(
           padding:  EdgeInsets.only(
            left: AppPadings.borderPadding,
            right: AppPadings.borderPadding,
            top:  AppPadings.topPadding),
          child: Column(
            children: [
              StandardForm(label: 'Nome'),
              const SizedBox(height: 15),
              StandardForm(label: 'Sobrenome'),
              const SizedBox(height: 15),
              StandardForm(label: 'E-mail'),
              const SizedBox(height: 15),
              StandardForm(label: 'Confirmar E-mail'),
              const SizedBox(height: 15),
              StandardForm(label: 'Senha'),
              const SizedBox(height: 15),
              StandardForm(label: 'Confirmar senha'),
              const SizedBox(height: 15),
              StandartButtom(onPressed: (){}, buttonText: createAccount)
            ],
          ),
        ),
      ),
    );
  }
}
