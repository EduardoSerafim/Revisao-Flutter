import 'package:flutter/cupertino.dart';
import 'package:revisao/src/app/components/standard_card_content.dart';
import 'package:revisao/src/app/components/standard_form.dart';
import 'package:revisao/src/app/components/standard_page.dart';

class BalancePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BalancePageState();
  }
}

class _BalancePageState extends State<BalancePage> {
  TextEditingController monthlyIncome = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return StandartPage(
        title: 'Saldo',
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: StandardForm(
                label: 'Entrada do mês',
                userInputController: monthlyIncome,
                onEditingComplete: () {
                  print('>>>>>>>>>>>: ${monthlyIncome.text}');
                },
              ),
            ),
            const SizedBox(height: 20),
            
          ],
        )
      );
  }
}
