import 'package:flutter/cupertino.dart';
import 'package:revisao/src/app/components/standard_page.dart';

class BalancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StandartPage(
      title: 'Saldo', 
      body: Container(
        child: Text("R\$100.000.000"),
      )
      );
  }
}
