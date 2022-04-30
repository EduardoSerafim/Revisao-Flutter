import 'package:flutter/material.dart';
import 'package:revisao/src/app/components/standard_buttom.dart';
import 'package:revisao/src/app/components/standard_page.dart';

import '../balance/balance_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StandartPage(
        title: 'HOME PAGE',
        body: Center(
          child: StandartButtom(
            buttonText: 'Ver saldo',
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => BalancePage()));
            },
          ),
        ),
      ),
    );
  }
}
