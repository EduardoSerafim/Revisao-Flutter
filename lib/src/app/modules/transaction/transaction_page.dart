import 'package:flutter/material.dart';
import 'package:revisao/src/app/components/standard_buttom.dart';
import 'package:revisao/src/app/components/standard_card_content.dart';
import 'package:revisao/src/app/components/standard_form.dart';
import 'package:revisao/src/app/components/standard_page.dart';
import 'package:revisao/src/app/model/transaction_model.dart';
import 'package:revisao/src/app/modules/transaction/transaction_controller.dart';

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

  final transactionController = TransactionController();
  
  @override
  void initState() {
    super.initState();
    transactionController.addListener(() { 
      setState(() {
        
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    print('O widget foi destruido');
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
                    transactionController.addNewTransaction(
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
                  itemCount: transactionController.transactionList.length,
                  itemBuilder: (context, index) {
                    var transactionItem = transactionController.transactionList[index];
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
