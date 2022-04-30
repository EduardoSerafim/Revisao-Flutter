import 'package:flutter/material.dart';
import 'package:revisao/src/app/components/standard_card_content.dart';
import 'package:revisao/src/app/components/standard_page.dart';
import 'package:revisao/src/app/model/transaction_model.dart';

class TransactionPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TransactionPageState();
  }
}

class _TransactionPageState extends State<TransactionPage> {
  @override
  void initState() {
    super.initState();
    print('comecei o widget');
  }

  @override
  void dispose() {
    super.dispose();
    print('O widget foi destruido');
  }

  List<TransactionModel> transactionList = [
    TransactionModel(transactionName: 'Tudo Salgado', transactionValue: 2),
    TransactionModel(transactionName: 'Conta de luz', transactionValue: 150.75),
    TransactionModel(
        transactionName: 'Multa de velocidade', transactionValue: 150),
    TransactionModel(transactionName: 'Café com o @', transactionValue: 50),
    TransactionModel(transactionName: 'Gasoline', transactionValue: 350),
    TransactionModel(transactionName: 'Coca-cola', transactionValue: 7),
    TransactionModel(transactionName: 'Docinho', transactionValue: 5)
  ];

  @override
  Widget build(BuildContext context) {
    return StandartPage(
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListView.separated(
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      height: 15,
                    );
                  },
                  shrinkWrap: true,
                  itemCount: transactionList.length,
                  itemBuilder: (context, index) {
                    var listaItem = transactionList[index];
                    return MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          print(listaItem.transactionName);
                        },
                        child: StandartCardContent(
                            leftText: listaItem.transactionName!,
                            rightText: 'R\$: ${listaItem.transactionValue}'),
                      ),
                    );
                  })
            ],
          ),
        ),
        title: "Extrato");
  }
}
