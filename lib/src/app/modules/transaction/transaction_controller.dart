import 'package:flutter/material.dart';

import '../../model/transaction_model.dart';

class TransactionController extends ChangeNotifier{
   List<TransactionModel> transactionList = [
    TransactionModel(transactionName: 'Tudo Salgado', transactionValue: 2),
    TransactionModel(transactionName: 'Conta de luz', transactionValue: 150.75),
    TransactionModel(transactionName: 'Multa de velocidade', transactionValue: 150),
    TransactionModel(transactionName: 'Café com o @', transactionValue: 50),
    TransactionModel(transactionName: 'Gasoline', transactionValue: 350),
    TransactionModel(transactionName: 'Coca-cola', transactionValue: 7),
    TransactionModel(transactionName: 'Docinho', transactionValue: 5)
  ];

  addNewTransaction(
      {required String transactionName, required String transactionValue}) {
  
      transactionList.insert(
          0,
          TransactionModel(
              transactionName: transactionName,
              transactionValue: num.parse(transactionValue.toString()))
      );
      notifyListeners();
    }
  }


