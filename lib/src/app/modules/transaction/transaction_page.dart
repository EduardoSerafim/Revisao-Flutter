import 'package:flutter/material.dart';
import 'package:revisao/src/app/components/standard_buttom.dart';
import 'package:revisao/src/app/components/standard_card_content.dart';
import 'package:revisao/src/app/components/standard_form.dart';
import 'package:revisao/src/app/components/standard_page.dart';
import 'package:revisao/src/app/model/transaction_model.dart';

class TransactionPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TransactionPageState();
  }
}

class _TransactionPageState extends State<TransactionPage> {
  TextEditingController transactionNameController = TextEditingController();
  TextEditingController transactionValueController = TextEditingController();
  FocusNode transactionNameFocus = FocusNode();
  FocusNode transactionValueFocus = FocusNode();

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

  addNewTransaction(
      {required String transactionName, required String transactionValue}) {
    setState(() {
      transactionList.insert(
          0,
          TransactionModel(
              transactionName: transactionName,
              transactionValue: num.parse(transactionValue)));
    });
  }

  Future<void> _showDialog({required String transactionName, required String transactionValue}) async {
    return showDialog<void>(
      barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(transactionName),
            content: SingleChildScrollView(
              child: Text('O valor da transação é R\$ $transactionValue'),
            ),
            actions: <Widget>[
              TextButton(onPressed: (){
                Navigator.of(context).pop();
              }, child: Text('Voltar'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return StandartPage(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 15),
              StandardForm(
                  onEditingComplete: () {
                    transactionValueFocus.nextFocus();
                  },
                  focusNode: transactionNameFocus,
                  label: "Nome da transação",
                  userInputController: transactionNameController),
              const SizedBox(height: 15),
              StandardForm(
                  focusNode: transactionValueFocus,
                  label: 'Valor da transação',
                  userInputController: transactionValueController),
              const SizedBox(height: 15),
              StandartButtom(
                  buttonText: "Adicinar nova transação",
                  onPressed: () {
                    addNewTransaction(
                        transactionName: transactionNameController.text,
                        transactionValue: transactionValueController.text);
                  }),
              const SizedBox(height: 15),
              ListView.separated(
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      height: 15,
                    );
                  },
                  shrinkWrap: true,
                  itemCount: transactionList.length,
                  itemBuilder: (context, index) {
                    var transactionItem = transactionList[index];
                    return MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          _showDialog(transactionName:transactionItem.transactionName.toString(), transactionValue:transactionItem.transactionValue.toString());
                        },
                        child: StandartCardContent(
                            leftText: transactionItem.transactionName!,
                            rightText: 'R\$: ${transactionItem.transactionValue}'),
                      ),
                    );
                  }),
              const SizedBox(
                height: 15,
              )
            ],
          ),
        ),
        title: "Extrato");
  }
}
